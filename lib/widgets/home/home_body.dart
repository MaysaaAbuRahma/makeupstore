import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:makeupstores/constants.dart';
import 'package:makeupstores/model/product.dart';
import 'package:makeupstores/screens/details_screen.dart';
import 'package:makeupstores/widgets/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 211, 169, 183),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
              //const ProductCard()
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  itemIndex: index,
                  product: products[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                product: products[index],
                              )),
                    );
                  },
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
