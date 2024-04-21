import 'package:corideapp/views/ride_booking/ride_details_page.dart';
import 'package:corideapp/views/ride_booking/sub_components/search_ride_component.dart';

import 'package:flutter/material.dart';

class BookRideList extends StatelessWidget {
  const BookRideList({super.key});

  @override
  Widget build(BuildContext context) {
    void signUserIn() {  Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => RideDetailsPage()),
    );}
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: ListView(
        children: [
          GestureDetector(
              onTap: () => signUserIn(),
              child: SearchRideResultsComponents()),

          SearchRideResultsComponents(),

          SearchRideResultsComponents()
        ],
      ),
    );
  }
}
