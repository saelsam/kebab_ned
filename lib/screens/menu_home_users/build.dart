import 'package:flutter/material.dart';
import 'package:kebab_ned/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kebab_ned/models/Product.dart';
import 'package:kebab_ned/screens/details_users/stock.dart';
import 'package:kebab_ned/screens/details_users/descriptions.dart';
import 'package:kebab_ned/screens/menu_home_users/item.dart';

class Build extends StatelessWidget {
  const Build({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                    )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
      ],
    );
  }
}
