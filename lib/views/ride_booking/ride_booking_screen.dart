//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import '../../controller/State/ride_booking/ride_booking_bloc.dart';
// import '../../controller/State/ride_booking/ride_booking_event.dart';
// import '../../controller/State/ride_booking/ride_booking_state.dart';
// import '../../controller/maps_repository.dart';
//
//
//
// class RideBookingScreen extends StatelessWidget {
//   const RideBookingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => RideBookingBloc(
//         mapsRepository: context.read<MapsRepository>(),
//       )..add(LoadRideBookingEvent()),
//       child: const RideBookingView(),
//     );
//   }
// }
//
// class RideBookingView extends StatelessWidget {
//   const RideBookingView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.transparent,
//       ),
//       extendBodyBehindAppBar: true,
//       body: BlocBuilder<RideBookingBloc, RideBookingState>(
//         builder: (context, state) {
//           if (state.status == RideBookingStatus.loading ||
//               state.status == RideBookingStatus.initial) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           if (state.status == RideBookingStatus.loaded) {
//             return Stack(
//               alignment: Alignment.bottomCenter,
//               children: [
//                 _RideBookingMap(target: const LatLng(25.24, 55.28)),
//                 (state.pickUpAddressConfirmed)
//                     ? const SizedBox()
//                     : const _RideBookingChoosePickUp(),
//                 (state.pickUpAddressConfirmed && !state.dropOffAddressConfirmed)
//                     ? const _RideBookingChooseDropOff()
//                     : const SizedBox()
//               ],
//             );
//           } else {
//             return const Center(child: Text('Error loading ride booking'));
//           }
//         },
//       ),
//     );
//   }
// }
