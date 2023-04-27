import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Text("Profile", style: TextStyle(color: Color(0xffD96E21), fontSize: 30),),
                    Icon(Icons.menu, size: 30,color: Colors.green,)
                  ],
                ),
                const SizedBox(
                    height: 40,
                ),
                Row(
                  
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/girl.jpg",height: 100,),
                      ],
                    ),
                    const SizedBox(
                    width: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Heikki Waris" ,style: TextStyle(color: Color(0xffD96E21)),),
                        const Text("Heikki.Waris@gmail.com" ,style: TextStyle(color: Colors.black),),
                        const Text("+358 50 4872 134" ,style: TextStyle(color: Colors.black),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/googleicon.jpg",height: 25,),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset("assets/fbicon.png" ,height: 25,),
                ],
              ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                    height: 30,
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Real name:"),
                    SizedBox(
                  width: 20,
                ),
                    Text("Heikki Waris"),
                    
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const[
                    Text("Address:"),
                     SizedBox(
                  width: 20,
                ),
                    Text("Vanha Talvitie 10, Helsinki"),
                    
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Change Password" ,style: TextStyle(color: Colors.greenAccent[700]),)) ,
                const SizedBox(
                    height: 200,
                ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  minimumSize: MaterialStateProperty.all(const Size(150, 30))
                ),
                child: const Text('Edit'),
              ),
              const SizedBox(
                    height: 5,
                ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  side: MaterialStateProperty.all(const BorderSide(color: Colors.green , width: 5)),
                  
                  minimumSize: MaterialStateProperty.all(const Size(150, 30))
                ),
                
                child: const Text('Delete', style: TextStyle(color: Colors.black),),
              ),
              ],
              ),
              ),
      ),
    );
  }
}