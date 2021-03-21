import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:image/image.dart';

class _OurKey {
  final Object providerCacheKey;

  const _OurKey(this.providerCacheKey);

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is _OurKey && other.providerCacheKey == providerCacheKey;
  }

  @override
  int get hashCode => providerCacheKey.hashCode;
}

class SSImageProvider extends ImageProvider<_OurKey> {
  final ImageProvider imageProvider;

  const SSImageProvider(this.imageProvider);

  @override
  Future<_OurKey> obtainKey(ImageConfiguration configuration) {
    Completer<_OurKey> completer;

    SynchronousFuture<_OurKey> result;
    imageProvider.obtainKey(configuration).then((Object key) {
      if (completer == null) {
        result = SynchronousFuture<_OurKey>(_OurKey(key));
      } else {
        completer.complete(_OurKey(key));
      }
    });
    if (result != null) {
      return result;
    }

    completer = Completer<_OurKey>();
    return completer.future;
  }

  @override
  ImageStreamCompleter load(_OurKey key, decode) {
    final ourDecoder = (
      Uint8List bytes, {
      bool allowUpscaling,
      int cacheWidth,
      int cacheHeight,
    }) async {
      return decode(
        await whiteToAlpha(bytes),
        cacheWidth: cacheWidth,
        cacheHeight: cacheHeight,
      );
    };
    return imageProvider.load(key.providerCacheKey, ourDecoder);
  }

  Future<Uint8List> whiteToAlpha(Uint8List bytes) async {
    final image = decodeImage(bytes);

    final pixels = image.getBytes(format: Format.rgba);
    final length = pixels.lengthInBytes;
    for (var i = 0; i < length; i += 4) {
      if (pixels[i] == 255 && pixels[i + 1] == 255 && pixels[i + 2] == 255) {
        pixels[i + 3] = 0;
      }
    }
    return encodePng(image);
  }
}
