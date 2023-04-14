import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:sanzio/presentation/pages/home.dart';

import '../components/button.dart';
import '../components/text_field.dart';
import '../theme/src/logo.dart';
import '../theme/theme.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController = TextEditingController();
  final PasswordController = TextEditingController();

  void SignUserIn() {}

  void SignUserUp() {}

  void RecoveryPassword() {}

  //static const Color _backgroundColor = Color(0xff000103);
  //static const Color _backgroundColor = Color(0xff191e29);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 120),

              //Logo
              Image.asset(Theme.of(context).extension<Logo>()!.logoPath),

              const SizedBox(height: 50),

              //welcome message
              Text(
                AppLocalizations.of(context)!.welcome_back,
                style: Theme.of(context).extension<ThemeTextStyles>()!.appTitle,
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
                  controller: LoginController,
                  ihintText: AppLocalizations.of(context)!.login,
                  obscureText: false),

              const SizedBox(height: 10),

              //Password
              MyTextField(
                  controller: PasswordController,
                  ihintText: AppLocalizations.of(context)!.password,
                  obscureText: true),

              const SizedBox(height: 10),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: RecoveryPassword,
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
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
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
                          onTap: SignUserUp,
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
      ),
    );
  }
}
