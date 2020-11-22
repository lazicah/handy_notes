import 'package:handy_notes/core/constants/countries.dart';
import 'package:handy_notes/core/state/commands/auth/signup_command.dart';
import 'package:handy_notes/core/state/controllers/auth_controller.dart';
import 'package:handy_notes/ui/components/authtextinputtype.dart';
import 'package:handy_notes/ui/components/scrollables/styled_scrollview.dart';
import 'package:handy_notes/ui/components/styled_button.dart';
import 'package:handy_notes/ui/utils/styles/styles.dart';
import 'package:handy_notes/ui/utils/ui_extensions.dart';
import 'package:handy_notes/ui/views/auth/login.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  static const String route = 'auth/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}

class SignUpBody extends StatefulWidget {
  @override
  _SignUpBodyState createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();
  final firstNameInput = TextEditingController();
  final lastNameInput = TextEditingController();
  final phoneInput = TextEditingController();
  final cityInput = TextEditingController();
  final countryInput = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AuthController>();
    return Container(
      height: double.infinity,
      child: StyledScrollView(
        barSize: 15,
        axis: Axis.vertical,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign Up',
                style: AppTextStyles.H1,
              ),
              VtSpace(20),
              Text('Enter your email and password to login to your dashboard'),
              VtSpace(20),
              Row(
                children: [
                  Expanded(
                    child: AppTextInputTypeA(
                      controller: firstNameInput,
                      label: 'First name',
                      hint: 'Enter your first name',
                      validator: model.validateEmpty,
                    ),
                  ),
                  HzSpace(20),
                  Expanded(
                    child: AppTextInputTypeA(
                      controller: lastNameInput,
                      label: 'Last name',
                      hint: 'Enter your last name',
                      validator: model.validateEmpty,
                    ),
                  ),
                ],
              ),
              VtSpace(20),
              AppTextInputTypeA(
                controller: emailInput,
                label: 'Email',
                hint: 'Enter your email',
                validator: model.validateEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              VtSpace(20),
              AppTextInputTypeA(
                controller: phoneInput,
                label: 'Phone number',
                hint: 'Enter your phone number',
                validator: model.validatePhoneNumber,
              ),
              VtSpace(20),
              AppTextInputTypeA(
                controller: cityInput,
                label: 'City',
                hint: 'Enter your city',
                validator: model.validateEmpty,
              ),
              VtSpace(20),
              AppDropDownTypeA(
                label: 'Country',
                hint: 'Select your country',
                onChanged: (value) {
                  countryInput.text = value;
                },
                validator: model.validateEmpty,
              ),
              VtSpace(20),
              PasswordTextInput(
                label: 'Password',
                hint: 'Enter your password',
                validator: model.validatePassword,
              ),
              VtSpace(20),
              PasswordTextInput(
                controller: passwordInput,
                label: 'Confirm password',
                hint: 'Enter your password',
                validator: model.validatePassword,
              ),
              VtSpace(20),
              Center(
                child: StatefulButton(
                  label: 'Sign Up',
                  onPressed: () {
                    if (!formKey.currentState.validate()) return;
                    final others = <String, String>{
                      'first_name': firstNameInput.text,
                      'last_name': lastNameInput.text,
                      'phone_number': phoneInput.text,
                      'city': cityInput.text,
                      'country': countryInput.text
                    };
                    SignUpCommand(context).execute(
                        email: emailInput.text,
                        password: passwordInput.text,
                        others: others);
                  },
                  state: model.state,
                ),
              ),
              VtSpace(20),
              Text('Already have an account?'),
              OutlineButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, LoginView.route);
                },
                child: Text('Log In'),
              )
            ],
          ).padding(all: Insets.l * 4),
        ),
      ),
    );
  }
}
