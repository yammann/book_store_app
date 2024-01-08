import 'package:book_store_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55,left: 24,right: 24,bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo,width: 50,height: 50,),
          Spacer(),
          IconButton(onPressed: (){}, icon:FaIcon(FontAwesomeIcons.magnifyingGlass))
        ],
      ),
    );
  }
}