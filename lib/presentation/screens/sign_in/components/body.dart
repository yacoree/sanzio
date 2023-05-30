import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../data/service/auth_service.dart';
import '../../../../helper/helper_function.dart';
import '../../../components/Snackbar.dart';
import '../../../components/button.dart';
import '../../../components/password_field.dart';
import '../../../components/text_field.dart';
import '../../../size_config.dart';
import '../../../theme/src/logo.dart';
import '../../../theme/theme.dart';
import '../../home_screen/home_screen.dart';
import '../../sign_up/sign_up.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),

            //Logo
            Image.asset(Theme.of(context).extension<Logo>()!.logoPath),

            const SizedBox(height: 50),

            //welcome message
            Text(
              AppLocalizations.of(context)!.welcome_back,
              style: Theme.of(context).extension<ThemeTextStyles>()!.title,
            ),

            const SizedBox(height: 10),

            Text(
              AppLocalizations.of(context)!.please_sign_in_to_your_account,
              style: Theme.of(context)
                  .extension<ThemeTextStyles>()!
                  .appDescription,
            ),

            const SizedBox(height: 25),

            //Login
            MyTextField(
                controller: emailController,
                ihintText: AppLocalizations.of(context)!.login),

            const SizedBox(height: 10),

            //Password
            MyPasswordField(
                controller: passwordController,
                ihintText: AppLocalizations.of(context)!.password),

            const SizedBox(height: 10),

            //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: recoveryPassword,
                    child: Text(
                      AppLocalizations.of(context)!.forgot_password,
                      style: Theme.of(context)
                          .extension<ThemeTextStyles>()!
                          .appAccent,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            //sign in button
            MyButton(
              text: AppLocalizations.of(context)!.sign_in,
              onTap: signUserIn,
            ),

            const SizedBox(height: 50),

            //continue with
            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 25.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //           child: Divider(thickness: 0.5, color: Colors.white30)),
            //       Padding(
            //         padding: EdgeInsets.symmetric(horizontal: 10.0),
            //         child: Text(
            //           "Or continue with",
            //           style: TextStyle(color: Colors.white24),
            //         ),
            //       ),
            //       Expanded(
            //           child: Divider(thickness: 0.5, color: Colors.white30))
            //     ],
            //   ),
            // )

            const SizedBox(height: 75),

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
                      Text(AppLocalizations.of(context)!.dont_have_an_account,
                          style: Theme.of(context)
                              .extension<ThemeTextStyles>()!
                              .appDescription),
                      SizedBox(
                        width: 4,
                      ),
                      InkWell(
                        onTap: goSignUp,
                        child: Text(AppLocalizations.of(context)!.sign_up,
                            style: Theme.of(context)
                                .extension<ThemeTextStyles>()!
                                .appAccent),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  )
                  //addVerticalSpace(15)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void signUserIn() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authService
          .loginWithEmailandPassword(
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

  void goSignUp() {
    Navigator.pushNamed(context, SignUpScreen.routeName);
  }

  void recoveryPassword() {}
}
