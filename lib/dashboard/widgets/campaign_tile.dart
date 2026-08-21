import 'package:flutter/material.dart';

import '../../services/models/campaign.dart';

class CampaignTile extends StatelessWidget {
  const CampaignTile({required this.campaign, super.key});

  final Campaign campaign;

  @override
  Widget build(BuildContext context) => Container(
    width: 250,
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: campaign.color,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.castle_outlined),
        const SizedBox(height: 10),
        Text(
          campaign.name,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(campaign.detail, style: const TextStyle(fontSize: 12)),
      ],
    ),
  );
}
