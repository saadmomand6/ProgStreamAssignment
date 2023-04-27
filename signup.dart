import 'package:flutter/material.dart';
import 'textfieldreuseable.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final cperson = TextEditingController();
    final cphone = TextEditingController();
    final cemail = TextEditingController();
    final cpassword = TextEditingController();
    final caddress = TextEditingController();
    final cpicture = TextEditingController();
    bool isChecked = true;
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
                child: Text("Sign Up" ,style: TextStyle(color: Color(0xffD96E21), fontSize: 30 , fontWeight: FontWeight.bold),)),
              const SizedBox(
                  height: 10,
              ),
              GetTextFormField(labelName: "Name*", icon: Icons.person, controller: cperson,isObscureText: false,),
              GetTextFormField(labelName: "Phone*", icon: Icons.phone, controller: cphone,isObscureText: false,),
              GetTextFormField(labelName: "Email", icon: Icons.email, controller: cemail,isObscureText: false,),
              GetTextFormField(labelName: "Password", icon: Icons.lock, controller: cpassword,isObscureText: true,),
              GetTextFormField(labelName: "Address", icon: Icons.location_on, controller: caddress,isObscureText: false,),
              GetTextFormField(labelName: "Upload picture", icon: Icons.upload, controller: cpicture,isObscureText: false,),
              const SizedBox(
                  height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked, 
                    checkColor: Colors.white,
                    activeColor: Colors.green,
                    onChanged: (bool? value) {
                      
                      //to make the checkboc checkable
                  //     setState(() {
                  //     isChecked = value!;
                  // });
                  },),
                  const Text('SubScribe To Newsletter', style: TextStyle(color: Colors.black, fontSize: 15),)
                ],
              ),
              const Text.rich(
              TextSpan(
                text: "By Clicking on SignUp You Agree to ",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: 'Terms-Conditions and privacy Policy',
                      style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffD96E21)
                      ),
                        ),
                ],
              ),
            ),
            const SizedBox(
                  height: 5,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/googleicon.jpg",height: 30,),
                Image.asset("assets/fbicon.png" ,height: 30,),
              ],
            ),
            const SizedBox(
                  height: 5,
              ),
            const Text.rich(
              TextSpan(
                text: "I have an account ",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: 'click here',
                      style:  TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                        color: Color(0xffD96E21)
                      ),
                        ),
                ],
              ),
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
              child: const Text('Sign Up'),
            ),
            const SizedBox(
                  height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
