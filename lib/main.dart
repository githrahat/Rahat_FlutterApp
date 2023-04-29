import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main(){
  runApp(const MapApp());
}

class MapApp extends StatelessWidget {
  const MapApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MapViewScreen(),
    );
  }
}

class MapViewScreen extends StatefulWidget {
  const MapViewScreen({Key? key}) : super(key: key);

  @override
  State<MapViewScreen> createState() => _MapViewScreenState();
}

class _MapViewScreenState extends State<MapViewScreen> {

   Position? currentLocation;

   void listenToLatestLocation(){
     Geolocator.getPositionStream().listen((event) {
       print(event);
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MapView'),
      ),

      body: Center(
        child: Text(currentLocation.toString()),
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () async{

          //location Permission
          LocationPermission permission = await Geolocator.requestPermission();

          if(permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
            //current location fetch
            currentLocation = await Geolocator.getCurrentPosition();
            print(currentLocation);
            setState(() {});
          }
          else{
            print("Permission not allowed");
          }
    },
    child: const Icon(Icons.location_on),
    ),





      // body: Center(
      //   child: SizedBox(
      //     width: 400,
      //     height: 500,
      //     child: GoogleMap(
      //       initialCameraPosition: CameraPosition(
      //         target: LatLng(23.793895737073488, 90.40448580672911)
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

