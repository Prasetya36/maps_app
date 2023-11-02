import 'dart:async';

import 'package:animated_rail/animated_rail/animated_rail.dart';
import 'package:animated_rail/animated_rail/rail_item.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_app/Widget/User.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    target: LatLng(-6.7287963889926115, 108.54707757971818),
    zoom: 14.4746,
  );

  Widget _home() {
    return Center(
      child: Text(
        "Build Test",
        style: TextStyle(color: Colors.amber),
      ),
    );
  }

  Widget _Teknisi() {
    return Center(
      child: Text(
        "Build Test",
        style: TextStyle(color: Colors.amber),
      ),
    );
  }

  Widget _AE() {
    return Center(
      child: Text(
        "Coba",
        style: TextStyle(color: Colors.amber),
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
          Center(
            child: AnimatedRail(
              background: Colors.indigo[300],
              maxWidth: 175,
              width: 60,
              direction: TextDirection.rtl,
              railTileConfig: const RailTileConfig(
                iconSize: 22,
                iconColor: Colors.white,
                expandedTextStyle: TextStyle(fontSize: 15),
                collapsedTextStyle:
                    TextStyle(fontSize: 12, color: Colors.white),
                activeColor: Colors.indigo,
                iconPadding: EdgeInsets.symmetric(vertical: 5),
                hideCollapsedText: true,
              ),
              cursorSize: Size(70, 70),
              cursorActionType: CursorActionTrigger.clickAndDrag,
              items: [
                RailItem(icon: Icon(Icons.home), label: "Home", screen: _home()),
                RailItem(
                    icon: Icon(Icons.message_outlined),
                    label: 'Messages',
                    screen: _Teknisi()),
                RailItem(
                    icon: Icon(Icons.notifications),
                    label: "Notification",
                    screen: _AE()),
              ],
            ),
          )
        ]),
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 700),
              child: User(),
            )
          ],
        )
      ]),
    );
  }
}
