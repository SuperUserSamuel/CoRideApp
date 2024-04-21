
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RideDetailsBookingComponents extends StatelessWidget {
  const RideDetailsBookingComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(height: 10),

        Divider(),

        Text('4a Volta Street Maitama Abuja',

          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp
          ),

       ),

        Text('Tomorrow at 12:00am',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),),

        const SizedBox(height: 10),

        Icon(Icons.directions_rounded,
        size: 24,),

        const SizedBox(height: 10),

        Text('4a Apo Estate Abuja',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp
          ),),

        Text('Tomorrow at 12:00am',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 16,
          ),),

        const SizedBox(height: 10),

        Divider()
      ],
    );
  }
}



class DriverProfile extends StatelessWidget {
  const DriverProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundImage: AssetImage('assets/man1.jpeg'),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Samuel Airadion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp
                      ),),

                    const SizedBox(height: 4),

                    Text('5 seats Left',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp
                      ),),
                  ],
                ),

                const SizedBox(width: 8),

                Icon(Icons.verified, color: Colors.green,)
              ],
            ),

            Spacer(),

            Text('£200',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                  color: Colors.green
              ),)
          ],
        ),

        Row(
          children: [

            Icon(Icons.star,
            color: Colors.yellowAccent,),

            const SizedBox(width: 4),
            Text('4.7',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                color: Colors.grey[700],
              ),),

            const SizedBox(width: 8),

            Text('-',   style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp
            ),),

            const SizedBox(width: 8),

            Text('${'105'} driven',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                color: Colors.grey[700],
              ),),

            const SizedBox(width: 8),

            Text('|',   style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp
            ),),

            const SizedBox(width: 8),

            Icon(Icons.car_crash_rounded,),

            const SizedBox(width: 8),

            Flexible(
              child: Text('Toyota Corrolla',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.sp,
                  color: Colors.grey[700],
                ),),
            ),
          ],
        ),
      ],
    );
  }
}


class BookingPreferences extends StatelessWidget {
  const BookingPreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.directions_bike),

            const SizedBox(width: 8),

            Text('Bikes', style: TextStyle(
                fontWeight: FontWeight.bold,
            ),),

            const SizedBox(width: 18),

            Icon(Icons.check_circle, color: Colors.green,),
          ],
        ),

        const SizedBox(height: 10),


        Row(
          children: [
            Icon(Icons.luggage),

            const SizedBox(width: 8),

            Text('Large Luggage', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(width: 18),

            Icon(Icons.check_circle, color: Colors.green,),
          ],
        ),

        const SizedBox(height: 10),


        Row(
          children: [
            Icon(Icons.pets),

            const SizedBox(width: 8),

            Text('Pets/Animals', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(width: 18),

            Icon(Icons.cancel, color: Colors.red,),
          ],
        ),

        const SizedBox(height: 10),


        Row(
          children: [
            Icon(Icons.smoking_rooms),

            const SizedBox(width: 8),

            Text('Smoking/Alcohol', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(width: 18),

            Icon(Icons.cancel, color: Colors.red,),
          ],
        ),

        const SizedBox(height: 10),

        Row(
          children: [
            Icon(Icons.fastfood),

            const SizedBox(width: 8),

            Text('Food/Breverages', style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),

            const SizedBox(width: 18),

            Icon(Icons.check_circle, color: Colors.green,),
          ],
        ),

        const SizedBox(height: 10),

      ],
    );
  }
}

