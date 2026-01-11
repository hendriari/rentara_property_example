import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_colors.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/utils/constants.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/form_field_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/loading_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/rentara_icon_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/submitting_loading_widget.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late TextTheme _textTheme;
  late ColorScheme _colorScheme;
  late Helper _helper;
  final ValueNotifier<bool> _hidePassword = ValueNotifier(true);
  final ValueNotifier<bool> _hideConfirmPassword = ValueNotifier(true);

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
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _confirmPasswordController.dispose();
    _passwordController.dispose();
    _hidePassword.dispose();
    _hideConfirmPassword.dispose();
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
                "Discover Properties with Confidence",
                style: _textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8.h),

              // SUB TITLE
              Text(
                "Create an account to access curated listings and smart property tools.",
                style: _textTheme.bodyLarge,
              ),

              SizedBox(height: 20.h),

              // FIRST & LAST NAME
              Row(
                children: [
                  // FIRST NAME
                  Flexible(
                    child: _buildCommonFormFieldWidget(
                      title: 'First Name',
                      controller: _firstNameController,
                      hint: "Your first name",
                      icon: CupertinoIcons.person,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "First name required!";
                        }
                        return null;
                      },
                    ),
                  ),

                  SizedBox(width: 8.w),

                  // LAST NAME
                  Flexible(
                    child: _buildCommonFormFieldWidget(
                      title: 'Last Name',
                      controller: _lastNameController,
                      hint: "Your last name",
                      suffixWidget: const SizedBox.shrink(),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Last name required!";
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),

              // EMAIL
              _buildCommonFormFieldWidget(
                title: 'Email',
                controller: _emailController,
                hint: "Enter your Email",
                icon: CupertinoIcons.mail,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email required!";
                  } else if (!EmailValidator.validate(value)) {
                    return "Please enter a valid email!";
                  }

                  return null;
                },
              ),

              // PHONE NUMBER
              _buildCommonFormFieldWidget(
                title: 'Phone Number',
                controller: _phoneNumberController,
                hint: "Enter Phone Number",
                icon: CupertinoIcons.phone,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone number required!";
                  }
                  return null;
                },
              ),

              // NEW PASSWORD
              ValueListenableBuilder(
                valueListenable: _hidePassword,
                builder: (context, value, c) {
                  return _buildCommonFormFieldWidget(
                    title: 'Create Password',
                    controller: _passwordController,
                    obscureText: value,
                    suffixWidget: IconButton(
                      onPressed: () {
                        _hidePassword.value = !_hidePassword.value;
                      },
                      icon: Icon(
                        value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.neutral400,
                      ),
                    ),
                    hint: "Enter your password",
                    icon: CupertinoIcons.lock,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "New password required!";
                      } else if(value.length < 8){
                        return "Password must have at least 8 characters";
                      }
                      return null;
                    },
                  );
                },
              ),

              // CONFIRM PASSWORD
              ValueListenableBuilder(
                valueListenable: _hideConfirmPassword,
                builder: (context, value, c) {
                  return _buildCommonFormFieldWidget(
                    title: 'Confirm Password',
                    controller: _confirmPasswordController,
                    obscureText: value,
                    hint: "Re-Enter your password",
                    icon: CupertinoIcons.lock,
                    suffixWidget: IconButton(
                      onPressed: () {
                        _hideConfirmPassword.value =
                            !_hideConfirmPassword.value;
                      },
                      icon: Icon(
                        value
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.neutral400,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm Password required!";
                      } else if (value != _passwordController.text.trim()) {
                        return "Password not match";
                      }
                      return null;
                    },
                  );
                },
              ),

              // REGISTER BUTTON
              BlocConsumer<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    registerSuccess: (_) {
                      _helper.showToast(message: "Register Success");
                      context.goNamed("property");
                    },
                    registerFailed: (_, message) {
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
                          AuthEventRegister(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                            firstName: _firstNameController.text.trim(),
                            lastName: _lastNameController.text.trim(),
                            phone: _phoneNumberController.text.trim(),
                          ),
                        );
                      }
                    },
                    margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                    child: state.maybeWhen(
                      registerLoading: (_) => SubmittingLoadingWidget(),
                      orElse: () => Text(
                        "Register",
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

  // COMMON FORM FIELD WIDGET
  Widget _buildCommonFormFieldWidget({
    required String title,
    required TextEditingController controller,
    required String hint,
    String? Function(String?)? validator,
    IconData? icon,
    TextInputType? textInputType,
    bool? obscureText,
    Widget? suffixWidget,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: _textTheme.bodyMedium),

        // FORM FIELD
        FormFieldWidget(
          margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
          textEditingController: controller,
          textInputType: textInputType,
          obscureText: obscureText,
          prefixIcon: icon != null
              ? Icon(icon, color: AppColors.neutral400)
              : null,
          suffixIcon: suffixWidget,
          hint: hint,
          formFieldValidator: validator,
        ),
      ],
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
          Text("Already have an account?", style: _textTheme.bodyMedium),

          // REGISTER BUTTON
          TextButton(
            onPressed: () => context.pop(),
            child: Text(
              "Login",
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
