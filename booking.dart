import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
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
                        text: 'Date And Time',
                        style:  TextStyle(
                          fontSize: 14,
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
              const Reuseablecontent(text: "Select Date",),
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              const Reuseablecontent(text: "Select Time",),
              const Reuseablecontent(text: "Departure Time",),
              const Reuseablecontent(text: "Return Time",),
              const SizedBox(
                  height: 5,
              ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                minimumSize: MaterialStateProperty.all(const Size(150, 30))
              ),
              child: const Text('Next'),
            ),
            const SizedBox(
                  height: 100,
              ),

            ]
            ),
          )
      ),
    );
  }
}

class Reuseablecontent extends StatelessWidget {
  final String text;
  const  Reuseablecontent({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children:  [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(text ,style: const TextStyle(color: Colors.black , fontSize: 15 ,),)),
          const Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
        ],
      ),
    );
  }
}