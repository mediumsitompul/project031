import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'WelcomePage.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Google Map")),
        ),
        body: MyMap(),
      ),
    );
  }
}

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  final LatLng showLocation = const LatLng(3.6085, 98.6206);
  final LatLng showLocation0 = const LatLng(3.6085, 98.6206);
  TextEditingController lat1 = TextEditingController();
  TextEditingController lng1 = TextEditingController();

  Set<Marker> marker1 = Set();

  @override
  void initState() {
    marker1.add(Marker(
        markerId: MarkerId(showLocation0.toString()),
        position: showLocation0,
        infoWindow: const InfoWindow(
          title: "My Location",
          snippet: "Medan, INDONESIA",
        )));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: showLocation0,
            ),
            markers: marker1,
          ),
          Positioned(
            bottom: 58.0,
            left: 80.0,
            right: 80.0,
            child: Card(
              elevation: 15,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  const Center(
                      child: Text("Show Google Map at Coordinate Location")),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: lat1,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Latitude"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextField(
                          controller: lng1,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Longitude"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            left: 100.0,
            right: 100.0,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          WelcomePage0(lat1: lat1.text, lng1: lng1.text)));
                },
                child: const Text('E N T E R')),
          )
        ],
      ),
    );
  }
}

