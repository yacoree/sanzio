import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../theme/theme.dart';

class DiscountBanner extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String text;

  const DiscountBanner({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: AppColors.lighterDark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(36),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text: "\n\n",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(7))),
                  TextSpan(text: subtitle),
                  TextSpan(
                      text: "\n\n",
                      style:
                          TextStyle(fontSize: getProportionateScreenWidth(7))),
                  TextSpan(
                    text: text,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset(
              image,
            ),
          ),
        ],
      ),
    );
  }
}
