import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/my_button.dart';
import '../../../widgets/my_textfield.dart';
import '../../../widgets/profile_pic_setup.dart';
import '../../../widgets/select_dialog.dart';


class InfoSetup extends StatefulWidget {
  const InfoSetup({Key? key}) : super(key: key);

  @override
  State<InfoSetup> createState() => _InfoSetupState();
}

class _InfoSetupState extends State<InfoSetup> {
  // text editing controllers
  final usernameController = TextEditingController();

  final ageController = TextEditingController();

  final passwordController = TextEditingController();

  File? _imageFile;

  get signUserIn => null;

  final descController = TextEditingController();

  List<String> _selectedItems = [];

  Future _onAddImageForCv() async {
    // try {
    //   final pickedFile =
    //   await ImagePicker().pickImage(source: ImageSource.gallery);
    //
    //   setState(() {
    //     _imageFile = File(pickedFile!.path);
    //   });
    //
    //   context.loaderOverlay.show();
    //
    //   final image = decodeImage(await File(_imageFile!.path).readAsBytes())!;
    //
    //   // Save the thumbnail as a PNG.
    //   File(_imageFile!.path).writeAsBytesSync(encodeJpg(image));
    //
    //   final imageInBytes = await File(_imageFile!.path).readAsBytes();
    //
    //   setState(() {
    //     profileImage = imageInBytes;
    //   });
    //
    //   await Future.delayed(const Duration(seconds: 1));
    //
    //   context.loaderOverlay.hide();
    // } catch (e) {
    //   context.loaderOverlay.hide();
    //
    //   await Future.delayed(const Duration(seconds: 1));
    //
    //   showSnackBar(
    //       context: context, content: AppLocalizations.of(context)!.failed);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Details'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 24),

              Text(
                'Add a picture',
                style: TextStyle(
                  fontSize: 24.sp,
                ),
              ),

              const SizedBox(height: 10),

              // logo
              Center(
                  child: MyProfilePic(
                    image: "assets/man1.jpeg",
                    finalImage: _imageFile,
                    imageUploadBtnPress: _onAddImageForCv,
                  )),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Show Us your smiling face, This increases trust and gets you more bookings.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 24),


              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'First Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Last Name',
                obscureText: true,
              ),


              const SizedBox(height: 24),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'You must be 18 years or older to use CorideApp. Please verify  your age by entering your date of birth in the form below',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: ageController,
                hintText: 'Date Of Birth',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Eg : 10/08/1789',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 24),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Pleae take a moment to introduce yourself to the CoRide Community',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField2(
                controller: descController,
                hintText:
                'EG: I travel on weekends and would love to meet people and share rides.',
                obscureText: false,
              ),

              // todo implement a what best describes you dropdown

              const SizedBox(height: 25),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'CoRide Community members feel more safer knowing who they are travelling with.',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),

              GestureDetector(
                onTap: () async {
                  // a list of selectable items
                  // these items can be hard-coded or dynamically fetched from a database/API
                  final List<String> items = ['Male', 'Female'];

                  final List<String>? results = await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return MultiSelect(items: items);
                    },
                  );

                  // Update UI
                  if (results != null) {
                    setState(() {
                      _selectedItems = results;
                    });
                  }
                },
                child: Container(

                  width: MediaQuery.of(context).size.width * 0.7,
                  height: 44.h,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      border: Border.all(width: 1.5),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(8))),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.arrow_drop_down_circle_outlined),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Select Gender'),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Wrap(
                children: _selectedItems
                    .map((e) => Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Chip(
                    label: Text(e),
                  ),
                ))
                    .toList(),
              ),

              const SizedBox(height: 50),

              MyButton1(
                onTap: signUserIn, buttonText: 'Update Profile',
              ),

              const SizedBox(height: 50),


              // or continue with
            ],
          ),
        ],
      ),
    );
  }
}
