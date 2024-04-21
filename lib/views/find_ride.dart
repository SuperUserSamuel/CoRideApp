
import 'package:corideapp/views/ride_booking/book_ride.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_textfield.dart';



class FindRidePage extends StatelessWidget {
  FindRidePage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();

  // sign user in method


  @override
  Widget build(BuildContext context) {

    void signUserIn() {  Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => BookRideList()),
    );}

    return Scaffold(
      // backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Find a trip'),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
              children : [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),


                    // username textfield
                    MyTextField4(
                      controller: usernameController,
                      hintText: 'From',
                      obscureText: false,
                    ),

                    const SizedBox(height: 10),

                    // password textfield
                    MyTextField4(
                      controller: passwordController,
                      hintText: 'To',
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    MyTextField(
                      controller: passwordController,
                      hintText: 'Departing (Optional)',
                      obscureText: true,
                    ),


                    const SizedBox(height: 25),

                    // sign in button
                    MyButton1(
                      onTap: signUserIn, buttonText: 'Search',
                    ),


                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}
