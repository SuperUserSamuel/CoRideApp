
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../views/find_ride.dart';

class TripHistory extends StatelessWidget {
  const TripHistory({super.key});

  @override   Widget build(BuildContext context) {
    return PlatformScaffold(
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(icon: const Icon(Icons.car_crash),
                    text: 'Active',),
                  Tab(icon : const Icon(Icons.car_crash_outlined),
                    text: 'Recent',),
                  Tab(icon: const Icon(Icons.cancel),
                    text: 'Cancelled',),
                ],
              ),
              title: Text('Trip History'),
              centerTitle: true,
            ),
            body: const TabBarView(
              children: [
                ActiveTrips(),
                RecentTrips(),
                CancelledTrips(),
              ],
            ),
          ),
        )
    );
  }
}


class ActiveTrips extends StatelessWidget {
  const ActiveTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: SizedBox(
        height: 200.h,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 64.h),
          child: Column(
            children: [

              const SizedBox(height: 24),

              // logo
              Text(
                'You have no current active trips',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                ),
              ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Your Trip Info would appear here',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                height: 50.h,
                width: 200.w,
                child: ElevatedButton.icon(
                  label : Text('Search for a Ride'),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => FindRidePage()),
                    );
                  }, icon: Icon(Icons.search),
                ),
              ),

              SizedBox(height: 24,),

              SizedBox(
                height: 50.h,
                width: 200.w,
                child: ElevatedButton.icon(
                  label : Text('Post a Ride'),
                  onPressed: () {}, icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentTrips extends StatelessWidget {
  const RecentTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class CancelledTrips extends StatelessWidget {
  const CancelledTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


