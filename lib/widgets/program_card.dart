import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nsdd/models/program.dart';

import '../utils/constants.dart';

class ProgramCard extends StatelessWidget {
  final Program program;
  const ProgramCard({Key? key, required this.program}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(kRadiusCircular),
      ),
      elevation: 4,
      margin: REdgeInsets.all(5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: kRadiusCircular,
              topRight: kRadiusCircular,
            ),
            child: Image.network(
              program.imageUrl,
              fit: BoxFit.fill,
              height: 192.h,
              width: 192.w,
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: kRadiusCircular,
                bottomRight: kRadiusCircular,
              ),
              child: Container(
                color: Colors.black54,
                width: 192.w,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 9.h),
                    child: Text(
                      program.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.w,
            left: 10.w,
            child: ClipRRect(
              borderRadius: BorderRadius.all(kRadiusCircular),
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                child: Center(
                  child: Padding(
                    padding: REdgeInsets.all(5.0),
                    child: Text(
                      'New',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
