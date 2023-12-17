import 'package:flutter/material.dart';
import 'package:home/core/app_export.dart';
import 'package:home/widgets/app_bar/appbar_title.dart';
import 'package:home/widgets/app_bar/custom_app_bar.dart';
import 'package:home/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 70.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage9,
                height: 334.v,
                width: 375.h,
              ),
              SizedBox(height: 70.v),
              CustomElevatedButton(
                width: 167.h,
                text: "Find Lawyers",
              ),
              SizedBox(height: 46.v),
              CustomElevatedButton(
                width: 192.h,
                text: "Become a freelancer",
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Select your choice",
      ),
    );
  }
}
