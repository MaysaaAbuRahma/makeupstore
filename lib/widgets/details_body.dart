import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeupstores/constants.dart';
import 'package:makeupstores/model/product.dart';
import 'package:makeupstores/widgets/color_dot.dart';
import 'package:makeupstores/widgets/product_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          // height: 300,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 211, 169, 183),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: product.image,
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    colorDot(
                      fillColor: kTextLightColor,
                      isSellected: true,
                    ),
                    colorDot(
                      fillColor: Colors.blue,
                      isSellected: false,
                    ),
                    colorDot(
                      fillColor: Colors.red,
                      isSellected: false,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "Price\$${product.price}",
                style:const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
        )
      ],
    );
  }
}
