
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../profile_screen.dart';


class MyProfileBioInfo extends StatelessWidget {
  const MyProfileBioInfo({super.key});


  @override
  Widget build(BuildContext context) {

    void settingsPage() {  Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => ProfileSettingsScreen()),
    );}


    return ListView(
      children: [

        SizedBox(height: 12,),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () => settingsPage(),
              child: Text('Settings',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18.sp
              ),),
            ),

            SizedBox(width: 8,),
          ],
        ),



        MyBioInfoWidget(),

        SizedBox(height: 25,),

        BioWidget(),

        SizedBox(height: 12.5,),

        Divider(),

        SizedBox(height: 12.5,),

        RideInfoWidget(),

        SizedBox(height: 12.5,),

        Divider(),

        SizedBox(height: 12.5,),

        Column(
          children: [
            Text('No reviews yet',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.sp
            ),)
          ],
        ),

        SizedBox(height: 12.5,),

        Divider(),

        SizedBox(height: 12.5,),

        VerificationWidget(),
      ],
    );
  }
}

class VerificationWidget extends StatelessWidget {
  const VerificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Verifications',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.sp),),

          SizedBox(height: 10,),

          Row(
            children: [
              Icon(Icons.email),
              SizedBox(width: 8,),
              Text('Email Address'),

              Spacer(),

              Text('Verified',
              style: TextStyle(
                color: Colors.green,
              ),)
            ],
          )
        ],
      ),
    );
  }
}

class RideInfoWidget extends StatelessWidget {
  const RideInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Column(
            children: [
              Icon(Icons.car_crash_outlined,
                size: 30,),

              Text('0'),

              Text('people driven')
            ],
          ),

          Spacer(),

          Column(
            children: [
              Icon(Icons.person,
                size: 30,),

              Text('0'),

              Text('rides taken')
            ],
          ),

          Spacer(),

          Column(
            children: [
              Icon(Icons.add_road,
              size: 30,),

              Text('0'),

              Text('km shared')
            ],
          ),

        ],
      ),
    );
  }
}

class BioWidget extends StatelessWidget {
  const BioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

          Text('Bio',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18.sp),),

          const SizedBox(height : 4),

          Text(
            'I travel on weekends and would love to share a ride',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.grey[700],
            ),
          ),

        ],
      ),
    );
  }
}

class MyBioInfoWidget extends StatelessWidget {
  const MyBioInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25,),
        Row(
          children: [
            const SizedBox(width: 8),
            CircleAvatar(
              radius: 40.r,
              backgroundImage: AssetImage('assets/man1.jpeg'),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Samuel Airadion',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20.sp),
                ),
                const SizedBox(height: 4),
                Text(
                  'Joined April 2023',
                  style: TextStyle(
                      color: Colors.grey[700], fontSize: 16.sp),
                ),

                const SizedBox(height: 4),

                Text(
                  'Male, 27 years old',
                  style: TextStyle(
                    color: Colors.grey[700], fontSize: 16.sp),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.verified,
              color: Colors.green,
            ),

            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
