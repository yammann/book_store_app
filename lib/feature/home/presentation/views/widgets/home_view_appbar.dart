import 'package:book_store_app/core/utils/assets.dart';
import 'package:book_store_app/feature/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 24,
        right: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 60,
            height: 60,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                Get.to(const SearchView(),
                    transition: Transition.circularReveal);
              },
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}
