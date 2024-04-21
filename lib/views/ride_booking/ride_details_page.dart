import 'package:corideapp/views/ride_booking/sub_components/ride_details_top_component.dart';
import 'package:flutter/material.dart';


class RideDetailsPage extends StatelessWidget {
  const RideDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trip Preview')),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DriverProfile(),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RideDetailsBookingComponents(),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BookingPreferences(),
          )

        ],
      ),
    );
  }
}
