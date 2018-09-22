import 'package:flutter/material.dart';

import 'package:mac_review/model/review.dart';
import 'package:mac_review/utils/date_utils.dart';

class ReviewDetail extends StatelessWidget {
  final Review review;

  ReviewDetail(this.review);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.add_alarm),
            title: Text('MachineId: ' + review.machineId),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Reviewed by: ' + review.reviewedBy),
                Text('Reviewed by: ' + DateUtils.format(review.reviewedOn)),
                Text('Next Review: ' + DateUtils.format(review.nextReview)),
                Text('Risk Level: ' + review.riskLevel.toString()),
              ],
            ),
          ),
        ],
      ),
      color: review.getRiskColor(),
    );
  }
}
