import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MyProfilePic extends StatelessWidget {
  const MyProfilePic({
    Key? key,
    required this.image,
    this.isShowPhotoUpload = false,
    this.imageUploadBtnPress, this.finalImage,
  }) : super(key: key);

  final String image;
  final File? finalImage;
  final bool isShowPhotoUpload;
  final VoidCallback? imageUploadBtnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color:
          Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.08),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          GestureDetector(
            onTap: imageUploadBtnPress,
            child: finalImage != null ? CircleAvatar(
              radius: 70.r,
              backgroundImage: FileImage(finalImage!),
            ) : CircleAvatar(
              radius: 70.r,
              backgroundImage: AssetImage(image),
            ),
          ),
          InkWell(
            onTap: imageUploadBtnPress,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                Icons.edit,
                color: Colors.lightBlueAccent,
                size: 35,
              ),
            ),
          )
        ],
      ),
    );
  }
}