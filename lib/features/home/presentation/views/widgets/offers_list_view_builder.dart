import 'package:flutter/material.dart';
import '../../../data/models/food_view_model.dart';
import 'custom_offers_food_view_card.dart';

class OffersListViewBuilder extends StatelessWidget {
  const OffersListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 5),
            child: CustomOffersFoodViewCard(
              model: offers[index],
            ),
          );
        },
      ),
    );
  }
}