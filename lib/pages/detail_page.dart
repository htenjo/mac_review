import 'package:flutter/material.dart';

import 'package:mac_review/model/review.dart';
import 'package:mac_review/components/review_detail.dart';

class DetailPage extends StatelessWidget {
  final Review review;

  DetailPage(this.review);

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
      body: ReviewDetail(review),
    );
  }
}
