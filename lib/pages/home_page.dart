import 'package:flutter/material.dart';

import 'dart:math';

import 'package:mac_review/model/review.dart';
import 'package:mac_review/components/review_resume.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipment Review'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add_alarm), onPressed: () => {}),
          IconButton(icon: Icon(Icons.add_circle), onPressed: () => {}),
          IconButton(icon: Icon(Icons.add_to_photos), onPressed: () => {}),
        ],
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
            ReviewResume(buildReview()),
          ],
        ),
      ),
    );
  }

  Review buildReview() {
    return Review(
        machineId: 'MH-' + Random.secure().nextInt(99999).toString(),
        reviewedBy: 'Nathalia Mendoza',
        riskLevel: Random.secure().nextInt(3),
        nextReview: DateTime.now(),
        reviewedOn: DateTime.now());
  }
}
