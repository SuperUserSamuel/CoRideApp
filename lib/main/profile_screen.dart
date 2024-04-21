
import 'package:corideapp/main/profileSetup/biometric/biometric_verification.dart';
import 'package:corideapp/main/profileSetup/personalInfo/personal_info.dart';
import 'package:corideapp/main/profileSetup/vehicleInfo/add_vehicle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

import '../utils/generalNavigation.dart';
import '../views/authentication/profile_setup.dart';
import '../views/driver/car_registration/car_registration_template.dart';


class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account')),
      body: SettingsList(
        platform: DevicePlatform.android,
        sections: [
          SettingsSection(
            tiles: [

              SettingsTile(

                onPressed: (context) => toNotificationsScreen( context: context, myChild: InfoSetup()),
                title: Text('Profile Settings'),
                description: Text('Personal Info, Vehicle Preferences'),
                leading:  GetStartedDemoImageContainer(
                  assetImage: 'assets/pic9.png',
                  mycolor: Colors.green.shade700,
                ),
                trailing: Icon(Icons.chevron_right),

              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: AddVehicle()),
                title: Text('Vehicle Data'),
                description: Text('Vehicle Data Verification'),
                leading: Icon(Icons.car_crash_rounded),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Biometrics'),
                description: Text('Biometrics Verification'),
                leading: Icon(Icons.person_rounded),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Notifications'),
                description: Text('Notification history, conversations'),
                leading: Icon(Icons.notifications_none),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Passenger Payout'),
                description: Text('Add Payment Method'),
                leading: Icon(Icons.battery_full),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Driver Payout'),
                description: Text('Add Payment Method'),
                leading: Icon(Icons.storage),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Promo/Discount'),
                description: Text('Promos and Discounts'),
                leading: Icon(Icons.volume_up_outlined),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Follow'),
                enabled: false,
                description: Text('Follow us on Twitter'),
                leading: Icon(Icons.brightness_6_outlined),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('About Us'),
                description: Text('About CoRide INC'),
                leading: Icon(Icons.palette_outlined),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('T/C'),
                description: Text('Terms and Conditions'),
                leading: Icon(Icons.accessibility),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Log Out'),
                description: Text('Log out from your account'),
                leading: Icon(Icons.lock_outline),
                trailing: Icon(Icons.chevron_right),
              ),

              SettingsTile(
                onPressed: (context) => toNotificationsScreen( context: context, myChild: BiometricVerification()),
                title: Text('Close Account'),
                description: Text('Delete Your Account'),
                leading: Icon(Icons.location_on_outlined),
                trailing: Icon(Icons.chevron_right),
              ),

            ],
          ),
        ],
      ),
    );
  }
}

void toNotificationsScreen({required BuildContext context, required Widget myChild}) {
  navigateTo(context: context, myChild: myChild);

}