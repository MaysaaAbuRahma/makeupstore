import 'package:flutter/material.dart';
import 'package:makeupstores/constants.dart';
import 'package:makeupstores/model/product.dart';
import 'package:makeupstores/widgets/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 139, 0, 46),
      appBar: detailsAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 211, 169, 183),
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
      title: Text(
        "Back",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
      ),
    );
  }
}
