import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            //svgSrc: "assets/icons/Cart Icon.svg",
            icon: Icon(CupertinoIcons.cart),
            numOfitem: 3,
            press: () {},
          ),
          IconBtnWithCounter(
            //svgSrc: "assets/icons/Bell.svg",
            icon: Icon(CupertinoIcons.bell),
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
