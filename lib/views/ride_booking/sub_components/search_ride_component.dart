
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SearchRideResultsComponents extends StatelessWidget {
  const SearchRideResultsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,
      vertical: 3),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Tomorrow at 12:00am',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp
                    ),),
                  Spacer(),
                  Text('5 seats Left',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp
                  ),),
                ],
              ),

              const SizedBox(height: 10),



              Text('4a Volta Street Maitama Abuja',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),),

              Text('4a Apo Estate Abuja',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),),

              const SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.star),
                  const SizedBox(width: 4),
                  Text('4.7',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp
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
                        fontSize: 16.sp
                    ),),

                  const SizedBox(width: 8),

                  Text('|',   style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp
                  ),),

                  const SizedBox(width: 8),

                  Flexible(
                    child: Text('Toyota Corrolla',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp
                      ),),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage('assets/man1.jpeg'),
                      ),
                      const SizedBox(width: 8),
                      Text('Samuel Airadion',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                        ),),

                      const SizedBox(width: 8),

                      Icon(Icons.check_circle,color: Colors.green,)
                    ],
                  ),

                  Spacer(),

                  Text('£200',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.green
                    ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
