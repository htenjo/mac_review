import 'package:flutter/material.dart';

class Review {
  String machineId;
  DateTime reviewedOn;
  DateTime nextReview;
  String reviewedBy;
  //1 = Low (Green)
  //2 = Medium (Yellow)
  //3 = High (Red)
  int riskLevel;

  Review({
    this.machineId,
    this.nextReview,
    this.reviewedOn,
    this.reviewedBy,
    this.riskLevel,
  });

  Color getRiskColor() {
    return this.riskLevel == 1 ? Colors.green
        : this.riskLevel == 2 ? Colors.yellow : Colors.red;
  }
}
