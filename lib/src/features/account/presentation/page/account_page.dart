import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/theme/app_padding.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/core/widgets/button_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/common_appbar_widget.dart';
import 'package:rentara_property_clone/src/core/widgets/submitting_loading_widget.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_state.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: const CommonAppbarWidget(),
      body: Padding(
        padding: AppPadding.pagePadding,
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.whenOrNull(
              logoutSuccess: (_, message) {
                injector<Helper>().showToast(message: message);
                context.goNamed("login");
              },
              failed: (_, message) {
                injector<Helper>().showToast(
                  message: message,
                  backGroundColor: colorScheme.error,
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // NAME
                Text(
                  "Full Name : ${state.user?.name}",
                  style: textTheme.bodyMedium,
                ),

                // PHONE
                Text(
                  "Phone : ${state.user?.phone}",
                  style: textTheme.bodyMedium,
                ),

                // EMAIL
                Text(
                  "Email : ${state.user?.email}",
                  style: textTheme.bodyMedium,
                ),

                SizedBox(height: 10.h),

                // LOGOUT BUTTON
                ButtonWidget(
                  buttonText: "",
                  onTap: () {
                    context.read<AuthBloc>().add(AuthEventLogout());
                  },
                  child: state.maybeWhen(
                    logoutLoading: (_) => SubmittingLoadingWidget(),
                    orElse: () => Text(
                      "Logout",
                      style: textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
