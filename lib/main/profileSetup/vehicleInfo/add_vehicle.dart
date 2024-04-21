import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/my_textfield.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({super.key});

  @override
  State<AddVehicle> createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add vehicle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            SizedBox(height: 24,),

          Expanded(child: AddVehicleWidget(usernameController: usernameController)),

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
                          'Add Vehicle',
                          style: TextStyle(fontSize: 18.sp),
                        )
                    )
                ).animate(delay: const Duration(seconds: 2)).scale(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarInfoWidget extends StatelessWidget {
  const CarInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children : [

      const SizedBox(
        height: 10.0,
      ),

      Text('Car Type',
        textAlign: TextAlign.center,),

      const SizedBox(
        height: 5.0,
      ),

      DropdownButtonFormField(
        items: [
        'Sedan',
          'van'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value, child: Text(value));
        }).toList(),
        icon: const Icon(Icons.expand_more),
        onSaved: (bank) {
          // save it
        },
        onChanged: (value) {

        },
        value: 'Sedan',
        decoration: InputDecoration(
          labelText: 'Car Type',
          border: const OutlineInputBorder(),
        ),
        autovalidateMode: AutovalidateMode.disabled,
      ),

      const SizedBox(
        height: 10.0,
      ),

      Text('Car Color',
        textAlign: TextAlign.center,),


      const SizedBox(
        height: 5.0,
      ),


      DropdownButtonFormField(
        items: [
          'Silver',
          'Black',
          'Grey'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value, child: Text(value));
        }).toList(),
        icon: const Icon(Icons.expand_more),
        onSaved: (bank) {
          // save it
        },
        onChanged: (value) {

        },
        value: 'Grey',
        decoration: InputDecoration(
          labelText: 'Car Color',
          border: const OutlineInputBorder(),
        ),
        autovalidateMode: AutovalidateMode.disabled,
      ),

      const SizedBox(
        height: 15.0,
      ),

    ]);
  }
}

class AddVehicleWidget extends StatelessWidget {
  const AddVehicleWidget({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return ListView(
    children: [
      Text(
        'Add a vehicle',
        style: TextStyle(
          fontSize: 24.sp,
        ),
        textAlign: TextAlign.center,
      ),

      const SizedBox(height: 10),

      Text(
        'This helps you get more bookings and makes it easier for passengers to identify your vehicle during pick-up',
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey[700],
        ),
        textAlign: TextAlign.center,

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

      Text('Vehicle Model',
        textAlign: TextAlign.center,),

      const SizedBox(
        height: 5.0,
      ),

      MyTextField5(
        controller: usernameController,
        hintText: 'Vehicle Type Eg: Toyota Corolla 2012 Dark Grey',
        obscureText: false,
      ),


      const SizedBox(height: 10),

      Text('License Plate',
        textAlign: TextAlign.center,),

      const SizedBox(
        height: 5.0,
      ),

      MyTextField5(
        controller: usernameController,
        hintText: 'Current Available Sits',
        obscureText: false,
      ),

      const SizedBox(
        height: 10.0,
      ),

      Text('Year',
        textAlign: TextAlign.center,),

      const SizedBox(
        height: 5.0,
      ),

      MyTextField5(
        controller: usernameController,
        hintText: 'YYYY',
        obscureText: false,
      ),

      const SizedBox(
        height: 10.0,
      ),

      CarInfoWidget(),


    ],
        );
  }
}
