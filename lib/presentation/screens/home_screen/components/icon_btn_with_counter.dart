import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../theme/theme.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.icon,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final Icon icon;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(12)),
            height: getProportionateScreenWidth(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .extension<ThemeColors>()!
                  .appSearch
                  .withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(icon.icon, color: AppColors.grey),
          ),
          if (numOfitem != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16),
                width: getProportionateScreenWidth(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).extension<ThemeColors>()!.appAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.5,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Theme.of(context)
                          .extension<ThemeColors>()!
                          .appBackground),
                ),
                child: Center(
                  child: Text(
                    "$numOfitem",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10),
                      height: 1,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context)
                          .extension<ThemeColors>()!
                          .appBackground,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
