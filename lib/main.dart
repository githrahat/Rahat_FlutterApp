import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
     Geolocator.getPositionStream(locationSettings: const LocationSettings(
       accuracy: LocationAccuracy.high,
       distanceFilter: 5,
       timeLimit: Duration(seconds: 3)
     )).listen((event) {
       print(event);
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoogleMapView'),
      ),

      // body: Center(
      //   child: Text(currentLocation.toString()),
      // ),

      body: GoogleMap(
            zoomControlsEnabled: true,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            //zoomGesturesEnabled: false,
            onTap: (LatLng position){
              print(position);
            },
            mapType: MapType.normal,
            markers: <Marker>{
              Marker(
                markerId: MarkerId('Viva-soft'),
                position: LatLng(23.793895737073488, 90.40448580672911),
                infoWindow: InfoWindow(title: 'Viva-Soft Office')
              ),
              Marker(
                  markerId: MarkerId('Sheraton-soft'),
                  position: LatLng(23.795504969184684, 90.40378779172897),
                  infoWindow: InfoWindow(title: 'Sheraton Office'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen)
              ),
              Marker(
                  markerId: MarkerId('draggable'),
                  position: LatLng(23.79384009196489, 90.4052210971713),
                  infoWindow: InfoWindow(title: 'Draggable'),
                  draggable: true,

                  onDrag: (LatLng initLatLng){
                    print(initLatLng);
                  },
                  onDragEnd: (LatLng onDragEnd){
                    print(onDragEnd);
                  },
                onDragStart: (LatLng onDragStart){
                    print(onDragStart);
                }
              )
            },
            circles: <Circle>{
              Circle(
                circleId: CircleId('office-cicle'),
                center: LatLng(23.793895737073488, 90.40448580672911),
                radius: 100,
                fillColor: Colors.purple.shade50,
                strokeColor: Colors.black12,
                strokeWidth: 10
              ),
              Circle(
                  circleId: CircleId('sheraton-cicle'),
                  center: LatLng(23.795504969184684, 90.40378779172897),
                  radius: 100,
                  fillColor: Colors.red.shade50,
                  strokeColor: Colors.black12,
                  strokeWidth: 10
              ),
            },
            polygons: <Polygon>{
              Polygon(
                polygonId: PolygonId('HDJSHKSK'),
                visible: true,
                fillColor: Colors.purple,
                strokeColor: Colors.lightGreen,
                strokeWidth: 5,
                points: [
                  LatLng(23.7900025408202, 90.40299754589796),
                  LatLng(23.789267168533875, 90.40483117103577),
                  LatLng(23.788010552778115, 90.40116392076015),
                  LatLng(23.788274700799708, 90.40563482791185)
                ]
              )
            },
            polylines: <Polyline>{
              Polyline(
                polylineId: PolylineId('jsdshksk'),
                width: 4,
                color: Colors.blue,
                points: [
                  LatLng(23.799439602516408, 90.40222641080618),
                  LatLng(23.79818308512809, 90.40629163384438),
                  LatLng(23.80190904097357, 90.4053558781743)
                ]
              )
            },

            initialCameraPosition: CameraPosition(
              target: LatLng(23.793895737073488, 90.40448580672911),
                  zoom: 16,
                  bearing: 0,
                  tilt: 0
            ),
          ),
        );


    //     floatingActionButton: FloatingActionButton(
    //     onPressed: () async{
    //
    //       //location Permission
    //       LocationPermission permission = await Geolocator.requestPermission();
    //
    //       if(permission == LocationPermission.always || permission == LocationPermission.whileInUse) {
    //         //current location fetch
    //         currentLocation = await Geolocator.getCurrentPosition();
    //         print(currentLocation);
    //         setState(() {});
    //       }
    //       else{
    //         print("Permission not allowed");
    //       }
    // },
    // child: const Icon(Icons.location_on),
    // ),

  }
}

