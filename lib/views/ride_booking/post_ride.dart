
import 'package:corideapp/views/ride_booking/sub_components/ride_schedule_segment_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/my_textfield.dart';


class PostRide extends StatefulWidget {
  const PostRide({super.key});

  @override
  State<PostRide> createState() => _PostRideState();
}

class _PostRideState extends State<PostRide> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController1 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post a trip'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                children: [

                  OriginDestinationWidget(usernameController: usernameController, passwordController: passwordController),

                 SizedBox(height: 25.h),

                  Divider(),

                  SizedBox(height: 25.h),

                  RideScheduleWidget(),

                  SizedBox(height: 25.h),

                  Divider(),

                  SizedBox(height: 25.h),

                  VehicleDetailsWidget(usernameController: usernameController),

                  SizedBox(height: 25.h),

                  Divider(),

                  SizedBox(height: 25.h),

                  TripPreferenceWidget(),

                  SizedBox(height: 25.h),

                  Divider(),

                  SizedBox(height: 25.h),

                  PricingWidget(usernameController: usernameController),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                    ],
                  )
                ],
              ),
            ),
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8),
              child: ConstrainedBox(
                  constraints:
                  BoxConstraints.tightFor(width: 200.w, height: 50.h),
                  child: PlatformElevatedButton(
                      onPressed: () async {},
                      child: Text(
                       'Post Ride',
                        style: TextStyle(fontSize: 18.sp),
                      )
                  )
              ).animate(delay: const Duration(seconds: 2)).scale(),
            ),
          ),

        ],
      ),
    );
  }
}

class PricingWidget extends StatelessWidget {

  const PricingWidget({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Pricing',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          'Enter a fair price per seat to cover your gas and other expenses.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),

        const SizedBox(
          height: 20.0,
        ),

        Text('Price Per Seat'),

        const SizedBox(
          height: 5.0,
        ),

        MyTextField5(
          controller: usernameController,
          hintText: 'Price Eg 2000k',
          obscureText: false,
        ),


        const SizedBox(
          height: 10.0,
        ),

      ],
    );
  }
}

class TripPreferenceWidget extends StatelessWidget {
  const TripPreferenceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Trip preferences',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),

        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'This informs passengers of how much space you have for their luggage and extras before they book',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),

        const SizedBox(height: 20),

        Text('Luggage'),

        const SizedBox(height: 10),

        LuggageType(),

        const SizedBox(height: 20),

        Text('Back row seating'),

        const SizedBox(height: 10),

        Text(
          'Pledge to a maximum of 2 people in the back for better reviews',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),

        const SizedBox(height: 10),

        SeatingPreference(),


        const SizedBox(height: 20),

        Text('Other Preferences'),


        const SizedBox(height: 10),

        CheckboxListTile(value: false, onChanged: (bool? value) {  },
        title: Text('Pets'),),

        CheckboxListTile(value: false, onChanged: (bool? value) {  },
          title: Text('Smoking/Drinking'),),

        CheckboxListTile(value: false, onChanged: (bool? value) {  },
          title: Text('Bikes'),),
      ],
    );
  }
}

class VehicleDetailsWidget extends StatelessWidget {
  const VehicleDetailsWidget({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vehicles details',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          'This helps you get more bookings and makes it easier for passengers to identify your vehicle during pick-up',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),

        ),

        const SizedBox(height: 10),

        GestureDetector(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 40.0, vertical: 20.0),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                dashPattern: const [10, 4],
                strokeCap: StrokeCap.round,
                color: Colors.blue.shade400,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.folder_open,
                        color: Colors.blue,
                        size: 40,
                      ),

                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Select a Vehicle',
                        style: TextStyle(
                            fontSize: 15,  color: Colors.grey[700],),
                      ),
                    ],
                  ),
                ),
              )),
        ),

        const SizedBox(
          height: 10.0,
        ),

        Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6))

            ),
            child: Image.asset('assets/car.webp')),

        const SizedBox(
          height: 10.0,
        ),

        Text('Vehicle Type'),

        const SizedBox(
          height: 5.0,
        ),

        MyTextField5(
          controller: usernameController,
          hintText: 'Vehicle Type Eg: Toyota Corolla 2012 Dark Grey',
          obscureText: false,
        ),


        const SizedBox(height: 10),

        Text('Available Empty Sits'),

        const SizedBox(
          height: 5.0,
        ),

        MyTextField5(
          controller: usernameController,
          hintText: 'Current Available Sits',
          obscureText: false,
        ),
      ],
    );
  }
}

class RideScheduleWidget extends StatelessWidget {
  const RideScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Ride Schedule',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          'Enter a precise date and time with am(Morning) or pm(afternoon)',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),

        ),

        const SizedBox(height: 20),

        SingleChoice(),

        const SizedBox(height: 20),

        Text('Leaving'),

        const SizedBox(height : 10),

        Row(
          children: [
            Container(
              width: 200.w,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(6))

              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Icon(Icons.calendar_today),
                  const SizedBox(width: 10),
                  Text('Departure date')
                ],
              ),
            ),

            const SizedBox(width: 10),

            Text('At'),

            const SizedBox(width: 10),

            Container(
              width: 100.w,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(6))
              ),
              child:  Center(child: Text('Time'))
            ),
          ],
        ),

        const SizedBox(height : 10),


        Text('Add a Return trip'),


        Row(
          children: [
            Container(
              width: 200.w,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(6))
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Icon(Icons.calendar_today),
                  const SizedBox(width: 10),
                  Text('Departure date')
                ],
              ),
            ),

            const SizedBox(width: 10),

            Text('At'),

            const SizedBox(width: 10),

            Container(
                width: 100.w,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
borderRadius: BorderRadius.all(Radius.circular(6))
                ),
                child:  Center(child: Text('Time'))
            ),
          ],
        ),

      ],
    );
  }
}


class OriginDestinationWidget extends StatelessWidget {
  const OriginDestinationWidget({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lets Post a trip',
          style: TextStyle(
            fontSize: 24.sp,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          'Your origin, destination and stops you are willing to make along the way',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),

        const SizedBox(height: 20),

        Text('Origin'),

        const SizedBox(height: 5),

        MyTextField5(
          controller: usernameController,
          hintText: 'From',
          obscureText: false,
        ),

        const SizedBox(height: 10),

        Text('Destination'),

        const SizedBox(height: 5),

        // password textfield
        MyTextField5(
          controller: passwordController,
          hintText: 'To',
          obscureText: true,
        ),

        const SizedBox(height: 10),

        Row(
          children: [
            Text('Stops'),
            const SizedBox(width : 5),
            Icon(Icons.info_rounded)
          ],
        ),

        const SizedBox(height: 5),

        Row(
          children: [
            Icon(Icons.add, color: Colors.green,),

            const SizedBox(width : 10),

            SizedBox(
              width: 300.w,
              child: MyTextField5(
                controller: passwordController,
                hintText: 'Add a stop to get more bookings',
                obscureText: true,
              ),
            ),
          ],
        ),

        const SizedBox(height: 10),
      ],
    );
  }
}
