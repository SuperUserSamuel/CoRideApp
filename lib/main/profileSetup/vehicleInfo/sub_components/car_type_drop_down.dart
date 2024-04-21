
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<String> carType = ['Sedan, Van'];


class FontSelectorDialog extends StatefulWidget {
  const FontSelectorDialog({
    super.key,
    required this.onValueChange,
    required this.fontType,
  });

  final void Function(String) onValueChange;
  final String fontType;

  @override
  State createState() => FontSelectorDialogState();
}

class FontSelectorDialogState extends State<FontSelectorDialog> {
  @override
  void initState() {
    super.initState();
    localFontType = widget.fontType;
  }

  late String localFontType;

  @override
  Widget build(BuildContext context) {
    return PlatformAlertDialog(
      title: Text('Car Type'),
      content: SizedBox(
        height: 200.h,
        width: 300.w,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: carType.length,
          itemBuilder: (BuildContext context, int index) {
            return buildRadioListTile(
                radioText: carType[index],
                fontStyleString: carType[index]);
          },
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: PlatformText('Cancel'
            // color: Colors.grey,
            // onPressed: () {
            //   Navigator.pop(context);
            // },
            // child:  Text(AppLocalizations.of(context)!.cancel),
          ),
        ),
        PlatformTextButton(
          onPressed: () {
            // Do something with selected value
            Navigator.pop(context);
          },
          child: Text('Done'),
        ),
      ],
    );
  }

  RadioListTile<String> buildRadioListTile(
      {required String radioText, required String fontStyleString}) {
    return RadioListTile(
      activeColor: const Color(0xff80D8ff),
      title: Text(radioText, style: const TextStyle(fontFamily: 'Roboto Light'),),
      value: fontStyleString,
      groupValue: localFontType,
      onChanged: (value) {
        setState(() {
          localFontType = value!;
        });
        widget.onValueChange(value!);
      },
    );
  }
}