import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  const ImageList(this.images);

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) => buildImageCard(images[index]),
    );
  }

  Container buildImageCard(ImageModel image) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Image.network(image.url),
          ),
          Text(
            '${image.title}',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
