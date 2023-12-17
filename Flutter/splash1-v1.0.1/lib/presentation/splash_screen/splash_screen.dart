import 'package:flutter/material.dart';
import 'package:splash1/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 8.v),
              CustomImageView(
                imagePath: ImageConstant.imgUndrawJudgeKa,
                height: 175.v,
                width: 172.h,
              ),
              SizedBox(height: 22.v),
              Text(
                "Black Robe",
                style: theme.textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
