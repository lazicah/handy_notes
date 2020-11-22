import 'package:handy_notes/core/state/commands/auth/login_command.dart';
import 'package:handy_notes/core/state/controllers/auth_controller.dart';
import 'package:handy_notes/ui/components/authtextinputtype.dart';
import 'package:handy_notes/ui/components/styled_button.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';
import 'package:handy_notes/ui/views/auth/sign_up.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  static const String route = 'auth/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AuthController>();
    return Container(
      height: double.infinity,
      padding: EdgeInsets.all(Insets.l * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Log In',
            style: AppTextStyles.H1,
          ),
          VtSpace(20),
          Text('Enter your email and password to login to your dashboard'),
          VtSpace(20),
          AppTextInputTypeA(
            controller: emailInput,
            label: 'Email',
            hint: 'Enter your email',
            validator: model.validateEmail,
          ),
          VtSpace(20),
          PasswordTextInput(
            controller: passwordInput,
            label: 'Password',
            hint: 'Enter your password',
          ),
          VtSpace(20),
          StatefulButton(
            label: 'Log In',
            onPressed: () {
              LoginCommand(context).execute(
                  email: emailInput.text, password: passwordInput.text);
            },
            state: model.state,
          ),
          VtSpace(20),
          Text('Don\'t have an account?'),
          OutlineButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SignUpView.route);
            },
            child: Text('Sign Up'),
          )
        ],
      ),
    );
  }
}
