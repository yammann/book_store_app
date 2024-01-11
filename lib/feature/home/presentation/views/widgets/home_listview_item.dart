import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: url,
              errorWidget: (context, url, error) =>
                  Icon(Icons.published_with_changes),
            )),
      ),
    );
  }
}
