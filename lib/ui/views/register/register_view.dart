import 'package:flutter/material.dart';
import 'package:minimal_social/ui/common/ui_helpers.dart';
import 'package:minimal_social/ui/common/widgets/app_button.dart';
import 'package:minimal_social/ui/common/widgets/app_textbox.dart';
import 'package:minimal_social/ui/views/register/register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'register_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'username'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confirmPassword'),
])
class RegisterView extends StackedView<RegisterViewModel> with $RegisterView {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.person, size: 70),
              verticalSpaceMedium,
              const Text(
                'M I N I M A L',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              verticalSpaceMedium,
              AppTextbox(
                hintText: 'Username',
                controller: usernameController,
              ),
              verticalSpaceSmall,
              AppTextbox(
                hintText: 'Email',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpaceSmall,
              AppTextbox(
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              verticalSpaceSmall,
              AppTextbox(
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
                obscureText: true,
              ),
              verticalSpaceMedium,
              AppButton(text: 'Register', onTap: () {}),
              verticalSpaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => viewModel.navigateToLogin(),
                    child: Text(
                      ' Login Here',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();
}
