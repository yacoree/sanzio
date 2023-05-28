import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:sanzio/presentation/pages/home.dart';

import '../components/button.dart';
import '../components/text_field.dart';
import '../theme/theme.dart';
import 'login_page.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final LoginController = TextEditingController();
  final PasswordController = TextEditingController();
  final RepeatPasswordController = TextEditingController();
  late BuildContext currentContext;

  void SignUserIn() {
    Navigator.push(
        currentContext, CupertinoPageRoute(builder: (context) => LoginPage()));
  }

  void SignUserUp() {
    Navigator.push(
        currentContext, CupertinoPageRoute(builder: (context) => Home()));
  }

  //static const Color _backgroundColor = Color(0xff000103);
  //static const Color _backgroundColor = Color(0xff191e29);

  @override
  Widget build(BuildContext context) {
    currentContext = context;
    return Scaffold(
      //backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 120),
              //welcome message
              Text(
                AppLocalizations.of(context)!.welcome,
                style: Theme.of(context).extension<ThemeTextStyles>()!.appTitle,
              ),

              const SizedBox(height: 10),

              Text(
                AppLocalizations.of(context)!.please_fill_in_all_ields,
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

              //Repeat password
              MyTextField(
                  controller: RepeatPasswordController,
                  ihintText: AppLocalizations.of(context)!.repeat_password,
                  obscureText: true),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                text: AppLocalizations.of(context)!.sign_up,
                onTap: () => Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
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
                          onTap: SignUserIn,
                          child: Text(AppLocalizations.of(context)!.sign_in,
                              style: Theme.of(context)
                                  .extension<ThemeTextStyles>()!
                                  .appAccent),
                        ),
                      ],
                    ),
                    const SizedBox(
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
