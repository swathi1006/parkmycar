import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWithFABs extends StatefulWidget {
  @override
  _MapWithFABsState createState() => _MapWithFABsState();
}

class _MapWithFABsState extends State<MapWithFABs> {
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};

  static final CameraPosition _kLake = const CameraPosition(
    target: LatLng(37.43296265331129, -122.08832357078792), // Example lake coordinates
    zoom: 14.4746,
  );

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map with FABs'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _controller.complete(controller);
            },
            initialCameraPosition: const CameraPosition(
              target: LatLng(37.7749, -122.4194), // San Francisco coordinates
              zoom: 12.0,
            ),
            markers: _markers,
          ),
          Positioned(
            top: 16.0,
            left: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                // Add your action for the first FAB here
              },
              child: const Icon(Icons.add),
            ),
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: FloatingActionButton.extended(
              onPressed: _goToTheLake,
              label: const Text('To the lake!'),
              icon: const Icon(Icons.directions_boat),
            ),
          ),
          // Add more Positioned widgets for additional FABs as needed
        ],
      ),
    );
  }
}
