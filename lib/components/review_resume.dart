import 'package:flutter/material.dart';

import 'package:mac_review/model/review.dart';
import 'package:mac_review/utils/date_utils.dart';
import 'package:mac_review/pages/detail_page.dart';

class ReviewResume extends StatelessWidget {
  final Review review;

  ReviewResume(this.review);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.add_alarm),
            title: Text('MachineId: ' + review.machineId),
            subtitle:
                Text('Next Review: ' + DateUtils.format(review.nextReview)),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(review)));
                }
          )
        ],
      ),
      color: review.getRiskColor(),
    );
  }
}
