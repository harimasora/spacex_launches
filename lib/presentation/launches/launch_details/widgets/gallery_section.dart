import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex_launches/domain/spacex/value_objects.dart';

Color contentTextColor = Color(0xff868686);

class GallerySection extends StatelessWidget {
  const GallerySection({required this.images, Key? key}) : super(key: key);

  final List<ImageUrl> images;

  @override
  Widget build(BuildContext context) {
    return images.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Text(
                  'Gallery',
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontSize: 25,
                    color: Color(0xff47455f),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                height: 250,
                padding: const EdgeInsets.only(left: 32.0),
                child: ListView.builder(
                  itemCount: images.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: CachedNetworkImage(
                          imageUrl: images[index].getOrCrash(),
                          fit: BoxFit.cover,
                          errorWidget: (context, url, dynamic error) =>
                              const Center(child: Icon(Icons.image_not_supported)),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          )
        : Container();
  }
}
