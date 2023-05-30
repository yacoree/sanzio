import 'package:flutter/material.dart';
import 'package:sanzio/presentation/theme/theme.dart';

import '../../../../domain/model/product.dart';
import '../../../components/button.dart';
import '../../../size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: AppColors.black,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: AppColors.black,
                child: Column(
                  children: [
                    ColorDots(product: product),
                    TopRoundedContainer(
                      color: AppColors.black,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: MyButton(
                          text: "Add To Cart",
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
