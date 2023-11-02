import 'dart:async';

import 'package:animated_rail/animated_rail/animated_rail.dart';
import 'package:animated_rail/animated_rail/rail_item.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/Pages/Home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.728907599857669, 108.54712049506095),
    zoom: 14.4746,
  );

  Widget _home() {
    return Scaffold(
        body: GoogleMap(
      initialCameraPosition: _kGooglePlex,
      markers: {
        Marker(
            markerId: MarkerId("Icon+"),
            position: LatLng(-6.728907599857669, 108.54712049506095),
            ),
      },
    ));
  }

  Widget _Teknisi() {
    return const Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
      ),
    );
  }

  Widget _AE() {
    return const Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          mapType: MapType.terrain,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        Stack(children: [
          AnimatedRail(
            background: Colors.indigo[300],
            maxWidth: 165,
            width: 60,
            railTileConfig: const RailTileConfig(
              iconSize: 24,
              iconColor: Colors.white,
              expandedTextStyle: TextStyle(
                fontSize: 15,
              ),
              activeColor: Colors.indigo,
              hideCollapsedText: true,
            ),
            cursorSize: Size(70, 75),
            cursorActionType: CursorActionTrigger.clickAndDrag,
            items: [
              RailItem(icon: Icon(Icons.home), label: "Home", screen: _home()),
              RailItem(
                  icon: Icon(Icons.person_4_outlined),
                  label: 'Teknisi',
                  screen: _Teknisi()),
              RailItem(
                  icon: Icon(Icons.person_2_rounded),
                  label: "AE",
                  screen: _AE()),
            ],
          )
        ]),
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 700),
              child: Home(),
            )
          ],
        )
      ]),
    );
  }
}
