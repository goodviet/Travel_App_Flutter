import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/core/constants/api_map.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  static final String routeName = '/location_screen';

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  // static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);

  static const LatLng sourceLocation =
      LatLng(10.833343595361555, 106.71529439237715);
  // static const LatLng destination = LatLng(37.33429383, -122.06600055);
  static const LatLng destination =
      LatLng(10.822380190642788, 106.6869204991688);
  List<LatLng> polylineCoordinates = [];

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
        PointLatLng(destination.latitude, destination.longitude));
    if (result.points.isEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getPolyPoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsPalette.primaryColor,
        title: Text(
          "Vi Tri",
          style: TextStyle(
              color: Colors.white,
              fontSize: kDefaultPadding,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: sourceLocation, zoom: 13.5),
        polylines: {
          Polyline(
              polylineId: PolylineId("route"),
              points: polylineCoordinates,
              color: ColorsPalette.primaryColor,
              width: 6)
        },
        markers: {
          const Marker(markerId: MarkerId("source"), position: sourceLocation),
          const Marker(markerId: MarkerId("destination"), position: destination)
        },
      ),
    );
  }
}
