import 'package:flutter/material.dart';
import 'package:sign_in/core/app_export.dart';
import 'package:sign_in/widgets/custom_elevated_button.dart';
import 'package:sign_in/widgets/custom_text_form_field.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUndrawJudgeKa,
                  height: 175.v,
                  width: 172.h,
                ),
                SizedBox(height: 77.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign In",
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildEmailSection(context),
                SizedBox(height: 27.v),
                _buildPasswordSection(context),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  text: "Sign in",
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email ",
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "Example@gmail.com",
            textInputType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password ",
            style: CustomTextStyles.titleMediumOnPrimary,
          ),
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "At least 8 characters",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
