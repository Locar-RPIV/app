import 'package:app/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VehicleButtonShimmer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: Container(
        height: 233,
        width: 208,
        decoration: BoxDecoration(
          color: blueLight,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}