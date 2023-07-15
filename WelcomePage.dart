import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class WelcomePage0 extends StatelessWidget {
  final String lat1, lng1;

  const WelcomePage0({super.key, required this.lat1, required this.lng1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyProject0(lat1a: lat1, lng1a: lng1),
    );
  }
}

class MyProject0 extends StatefulWidget {
  final String lat1a, lng1a;
  const MyProject0({super.key, required this.lat1a, required this.lng1a});

  @override
  State<MyProject0> createState() => _MyProject0State();
}

class _MyProject0State extends State<MyProject0> {
  final LatLng showLocation0 = const LatLng(3.6084, 98.6205);
  //LatLng _showLocation0 = LatLng(_lat1, _lng1);
  Set<Marker> marker1 = Set();

  @override
  void initState() {
    //...........................................................................
    double _lat1 = double.parse('${widget.lat1a.toString()}');
    double _lng1 = double.parse('${widget.lng1a.toString()}');
    //LatLng _showLocation = LatLng(3.6084, 98.6205);
    LatLng _showLocation = LatLng(_lat1, _lng1);
    //...........................................................................
    marker1.add(
      Marker(
          markerId: MarkerId(_showLocation.toString()),
          position: _showLocation,
          infoWindow: const InfoWindow(
              title: "LOCATION1", snippet: "CITY1, INDONESIA")),
    );
    //............................................................................
    // TODO: implement initState
    super.initState();
  }

  //..............................................................................

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        GoogleMap(
          initialCameraPosition: CameraPosition(target: showLocation0),
          markers: marker1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(child: Text('Latitude: ${widget.lat1a}')),
            Center(child: Text('Longitude: ${widget.lng1a}')),
          ],
        ),
        Positioned(
            bottom: 58.0,
            left: 80.0,
            right: 80.0,
            child: Card(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("The map location of latitude / longitude :"),
                )))
      ],
    )

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Center(child: Text(widget.lat1a)),
        //     Center(child: Text(widget.lng1a)),
        //   ],
        // ),

        );
  }
}
