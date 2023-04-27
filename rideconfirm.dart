import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RideConfirmPage extends StatefulWidget {
  const RideConfirmPage({super.key});

  @override
  State<RideConfirmPage> createState() => _RideConfirmPageState();
}

class _RideConfirmPageState extends State<RideConfirmPage> {

  //controller is for to locate the changes
  
  Completer<GoogleMapController> control = Completer();
  //for initial camera position
  static const CameraPosition _kgooglecam =  CameraPosition(
    target: LatLng(24.915673, 67.0878757),
    zoom: 14.4746,
  );
  final List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(
      markerId: MarkerId('1'),
      position: LatLng(24.9228386, 67.0816371),
      infoWindow: InfoWindow(
        title: 'My current location'
      ),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(24.9223603, 67.0862397),
      infoWindow: InfoWindow(
        title: 'Rab Medical Center'
      ),
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(24.9323574, 67.0850751),
      infoWindow: InfoWindow(
        title: 'Lucky One Mall'
      ),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                  height: 40,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  Text.rich(
                TextSpan(
                  text: "Add Ride   ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Color(0xffD96E21)
                  ),
                  children: [
                    TextSpan(
                        text: 'Preview',
                        style:  TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Colors.black
                        ),
                          ),
                  ],
                ),
                          ),
              ),
            const SizedBox(
                  height: 15,
              ),
            Container(
              height: 300,
              child: GoogleMap(
          initialCameraPosition: _kgooglecam,
          mapType: MapType.normal,
          markers: Set<Marker>.of(_marker),
          myLocationEnabled: true,
          compassEnabled: true,
          onMapCreated: (GoogleMapController controller){
              control.complete(controller);
          },       
          ),
            ),
              const SizedBox(
                  height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child:  Text.rich(
                TextSpan(
                  text: "Espoo -->",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    color: Color(0xffD96E21)
                  ),
                  children: [
                    TextSpan(
                        text: 'Tampere',
                        style:  TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          color: Color(0xffD96E21)
                        ),
                          ),
                  ],
                ),
                          ),
              ),
              const SizedBox(
                  height: 20,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.airline_seat_recline_extra_outlined, color: Colors.black, size: 40,),
                Icon(Icons.repeat_rounded, color: Colors.black, size: 40,),
              ],
            ),
            const SizedBox(
                  height: 20,
              ),
            const Reuseabletext(smalltext: "Passenger cost", largetext: "19.90€ (150km)"),
            const SizedBox(
                  height: 20,
              ),
            const Reuseabletext(smalltext: "Driver cost", largetext: "20.90€ (150km)"),
            const SizedBox(
                  height: 20,
              ),

            const ReuseaableReviewbar(name: "Emilia",),
            const SizedBox(
                  height: 15,
              ),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est ultricies integer quis.",
        style: TextStyle(fontSize: 10),
        ),
        const SizedBox(
                  height: 15,
              ),
            const ReuseaableReviewbar(name: "Honda Accord 2022",),
            const SizedBox(
                  height: 15,
              ),
            const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Bibendum est ultricies integer quis.",
        style: TextStyle(fontSize: 10),
        ),
            const SizedBox(
                  height: 5,
              ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(150, 30))
              ),
              child: const Text('Publish'),
            ),
            const SizedBox(
                  height: 100,
              ),

            ]
            )
      ),
      ),
    );
  }
}

class ReuseaableReviewbar extends StatelessWidget {
  final String name;
  const ReuseaableReviewbar({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: const [
             CircleAvatar(
              backgroundImage: AssetImage("assets/girl.jpg")
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name , style: const TextStyle(fontSize: 15),),
            RatingBar.builder(
              initialRating: 5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 20,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => const Icon(
              Icons.star,
              
              color: Colors.amber,
              ),
              onRatingUpdate: (rating) {},
              ),
              
              
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        
      ],
      
    );
  }
}

class Reuseabletext extends StatelessWidget {
  final String smalltext;
  final String largetext;
  const  Reuseabletext({
    required this.smalltext,
    required this.largetext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(smalltext ,style: const TextStyle(color: Color.fromARGB(255, 63, 60, 60) , fontSize: 15 ,),),
          Text(largetext ,style: const TextStyle(color: Colors.black , fontSize: 20 ,),),
        ],
      ),
    );
  }
}