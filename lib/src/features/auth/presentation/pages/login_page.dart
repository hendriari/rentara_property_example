import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/form_field_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/rentara_icon_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/submitting_loading_widget.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_state.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/widgets/checkbox_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late TextTheme _textTheme;
  late ColorScheme _colorScheme;
  late Helper _helper;

  @override
  void initState() {
    super.initState();
    _helper = injector<Helper>();
  }

  @override
  void didChangeDependencies() {
    _textTheme = Theme.of(context).textTheme;
    _colorScheme = Theme.of(context).colorScheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyWidget(),
      bottomNavigationBar: _buildFooterWidget(),
    );
  }

  // BODY
  Widget _buildBodyWidget() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: AppPadding.pagePadding,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // RENTARA ICON
              RentaraIconWidget(margin: EdgeInsets.only(bottom: 16.h)),

              // TITLE
              Text(
                "Welcome Back to Rentara Property",
                style: _textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8.h),

              // SUB TITLE
              Text(
                "Access curated listings and manage your property search seamlessly.",
                style: _textTheme.bodyLarge,
              ),

              SizedBox(height: 20.h),

              // EMAIL TITLE
              Text("Email", style: _textTheme.bodyMedium),

              // EMAIL FORM FIELD
              FormFieldWidget(
                margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                textEditingController: _emailController,
                prefixIcon: Icon(
                  CupertinoIcons.mail,
                  color: AppColors.neutral400,
                ),
                hint: "Enter your email",
                formFieldValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email required!";
                  } else if (!EmailValidator.validate(value)) {
                    return "Please enter a valid email!";
                  }

                  return null;
                },
              ),

              // PASSWORD TITLE && FORGOT PASSWORD
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Password", style: _textTheme.bodyMedium),

                  // FORGOT PASSWORD
                  Bounceable(
                    onTap: () {
                      _helper.showToast(
                        message: "Sorry, This feature is not available now",
                        backGroundColor: _colorScheme.error,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 5.h,
                      ),
                      child: Text(
                        "Forgot Password?",
                        style: _textTheme.bodyMedium?.copyWith(
                          color: _colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // PASSWORD FORM FIELD
              FormFieldWidget(
                margin: EdgeInsets.only(bottom: 15.h),
                textEditingController: _passwordController,
                prefixIcon: Icon(
                  CupertinoIcons.lock,
                  color: AppColors.neutral400,
                ),
                hint: "Enter your password",
                obscureText: true,
                formFieldValidator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Password required!";
                  }
                  return null;
                },
              ),

              // REMEMBER ME
              CheckboxWidget(title: "Remember me", onChanged: (value) {}),

              // LOGIN BUTTON
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loginSuccess: (_) {
                      _helper.showToast(message: "Login Success");
                      context.goNamed("property");
                    },
                    loginFailed: (_, message) {
                      _helper.showToast(
                        message: message,
                        backGroundColor: _colorScheme.error,
                      );
                    },
                  );
                },
                builder: (context, state) {
                  return ButtonWidget(
                    buttonText: "",
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(
                          AuthEventLogin(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                          ),
                        );
                      }
                    },
                    margin: EdgeInsets.only(top: 20.h, bottom: 15.h),
                    child: state.maybeWhen(
                      loginLoading: (_) => SubmittingLoadingWidget(),
                      orElse: () => Text(
                        "Login",
                        style: _textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),

              // LOGIN WITH
              Row(
                children: [
                  const Flexible(
                    fit: FlexFit.tight,
                    child: Divider(thickness: 1, color: AppColors.neutral300),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text("Or login with", style: _textTheme.bodyMedium),
                  ),

                  const Flexible(
                    fit: FlexFit.tight,
                    child: Divider(thickness: 1, color: AppColors.neutral300),
                  ),
                ],
              ),

              // LOGIN WITH GOOGLE
              ButtonWidget(
                buttonText: "",
                onTap: () {
                  _helper.showToast(
                    message: "Sorry, This feature is not available now",
                    backGroundColor: _colorScheme.error,
                  );
                },
                margin: EdgeInsets.only(top: 15.h),
                bgColor: AppColors.neutral50,
                border: Border.all(color: AppColors.neutral500),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Constants.googleImg, height: 22.h),

                    SizedBox(width: 8.w),

                    Text(
                      "Login with Google",
                      style: _textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // BUTTON LOGIN METHOD / REGISTER
  Widget _buildFooterWidget() {
    return Padding(
      padding: AppPadding.pagePadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Don't have an account?", style: _textTheme.bodyMedium),

          // REGISTER BUTTON
          TextButton(
            onPressed: () => context.pushNamed("register"),
            child: Text(
              "Register",
              style: _textTheme.bodyMedium?.copyWith(
                color: _colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
