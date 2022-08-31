import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ViewImage extends StatelessWidget {
  final String imageUrl;
  const ViewImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
      imageProvider: NetworkImage(imageUrl),
    ));
  }
}
