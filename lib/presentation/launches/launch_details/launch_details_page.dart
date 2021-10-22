import 'package:flutter/material.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/presentation/launches/launch_details/widgets/gallery_section.dart';

Color primaryTextColor = Color(0xFF414C6B);
Color secondaryTextColor = Color(0xFFE4979E);
Color titleTextColor = Colors.white;
Color contentTextColor = Color(0xff868686);
Color navigationColor = Color(0xFF6751B5);
Color gradientStartColor = Color(0xFF0050AC);
Color gradientEndColor = Color(0xFF9354B9);

class LaunchDetailsPage extends StatelessWidget {
  const LaunchDetailsPage({required this.launch, Key? key}) : super(key: key);

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 150),
                        Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 12,
                              width: 100,
                              child: Image.network(launch.patchUrl.getOrCrash()),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  launch.name.getOrCrash(),
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 56,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  launch.siteName.getOrCrash(),
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 31,
                                    color: primaryTextColor,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(color: Colors.black38),
                        const SizedBox(height: 32),
                        Text(
                          launch.details.getOrCrash().isEmpty
                              ? 'This mission has no more details.'
                              : launch.details.getOrCrash(),
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: contentTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  GallerySection(images: launch.images),
                ],
              ),
            ),
            Positioned(
              top: 32,
              left: 32,
              child: Text(
                // int.parse(launch.flightNumber.getOrCrash().substring(1)).toString(),
                launch.flightNumber.getOrCrash(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 120,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
