import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:sanzio/helper/helper_function.dart';

import '../../../../data/service/auth_service.dart';
import '../../../components/Snackbar.dart';
import '../../../components/button.dart';
import '../../../components/password_field.dart';
import '../../../components/text_field.dart';
import '../../../theme/theme.dart';
import '../../home_screen/home_screen.dart';
import '../../sign_in/sign_in.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor),
            )
          : SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    //welcome message
                    Text(
                      AppLocalizations.of(context)!.welcome,
                      style:
                          Theme.of(context).extension<ThemeTextStyles>()!.title,
                    ),

                    const SizedBox(height: 10),

                    Text(
                      AppLocalizations.of(context)!.please_fill_in_all_ields,
                      style: Theme.of(context)
                          .extension<ThemeTextStyles>()!
                          .appDescription,
                    ),

                    const SizedBox(height: 25),

                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          //Login
                          MyTextField(
                              controller: emailController,
                              ihintText: AppLocalizations.of(context)!.email,
                              validator: (val) {
                                return RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(val!)
                                    ? null
                                    : AppLocalizations.of(context)!
                                        .invalid_email;
                              }),

                          const SizedBox(height: 10),

                          //Password
                          MyPasswordField(
                              controller: passwordController,
                              ihintText: AppLocalizations.of(context)!.password,
                              validator: (val) {
                                if (val == null)
                                  return AppLocalizations.of(context)!
                                      .please_enter_the_passwod;
                                return val.length > 5
                                    ? null
                                    : AppLocalizations.of(context)!
                                        .too_short_password;
                              }),

                          const SizedBox(height: 10),

                          //repeat password
                          MyPasswordField(
                              controller: repeatPasswordController,
                              ihintText:
                                  AppLocalizations.of(context)!.repeat_password,
                              validator: (val) {
                                return passwordController.text == val
                                    ? null
                                    : AppLocalizations.of(context)!
                                        .passwords_must_match;
                              }),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    //sign in button
                    MyButton(
                      text: AppLocalizations.of(context)!.sign_up,
                      onTap: signUserUp,
                    ),

                    //dont have an account
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                  AppLocalizations.of(context)!
                                      .already_have_an_account,
                                  style: Theme.of(context)
                                      .extension<ThemeTextStyles>()!
                                      .appDescription),
                              const SizedBox(
                                width: 4,
                              ),
                              InkWell(
                                onTap: goSignIn,
                                child: Text(
                                    AppLocalizations.of(context)!.sign_in,
                                    style: Theme.of(context)
                                        .extension<ThemeTextStyles>()!
                                        .appAccent),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  void goSignIn() {
    Navigator.pushReplacementNamed(context, SignInScreen.routeName);
  }

  //navigate to home page
  void signUserUp() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .registerUserWithEmailandPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) async {
        if (value == true) {
          await HelperFunctions.saveUserLoggedInStatus(true);
          await HelperFunctions.saveUserEmailSF(emailController.text);
          Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        } else {
          showSnackbar(
              context: context,
              color: Theme.of(context).extension<ThemeColors>()!.appBackground,
              textColor: Theme.of(context).extension<ThemeColors>()!.appAccent,
              message: value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}

// Navigator.of(context)
//     .pushReplacement(CupertinoPageRoute(builder: (context) => Home()));
// Navigator.push(
//   context,
//   CupertinoPageRoute(
//     builder: (context) => Home(),
//   ),
// );