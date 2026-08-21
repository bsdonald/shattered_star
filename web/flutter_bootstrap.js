{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
  config: {
    buildConfig: _flutter.buildConfig,
  },
  onEntrypointLoaded: async function (engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();
    await appRunner.runApp();
  },
});