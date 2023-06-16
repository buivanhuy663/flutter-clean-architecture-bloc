import 'package:flutter/material.dart';

import '../resources/resources.dart';

class EmptyData extends StatelessWidget {
  const EmptyData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.auto_awesome_mosaic_outlined,
                size: 40,
              ),
              SizedBox(height: 20),
              Text(
                'Looks like you have nothing to do!',
                style: AppTextStyles.s14w300,
              ),
            ],
          ),
        ),
      );
}
