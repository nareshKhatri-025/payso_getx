import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constants.dart';

class PincodeWidget extends StatelessWidget {
  final int boxCount;
  PincodeWidget({this.boxCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: boxCount == 4
          ? EdgeInsets.symmetric(horizontal: Get.width * 0.1, vertical: 20)
          : EdgeInsets.symmetric(horizontal: Get.width * 0.08, vertical: 20),
      child: PinCodeTextField(
          // validator: (value) {
          //   if (value.isEmpty || value.length != boxCount) {
          //     return 'Please Enter Valid passcode';
          //    }
          //   return null;
          // },
          onSubmitted: (value) {
            //TODO: passcode logic
          },
          backgroundColor: cIntroSliderBg,
          appContext: context,
          length: boxCount,
          obscureText: false,
          pinTheme: PinTheme(
            selectedFillColor: Colors.grey[300],
            inactiveColor: Colors.grey[300],
            activeColor: Colors.grey[300],
            activeFillColor: Colors.grey[300],
            inactiveFillColor: Colors.grey[300],
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: boxCount == 4 ? 60 : 50,
            fieldWidth: boxCount == 4 ? 60 : 50,
          ),
          autoDismissKeyboard: true,
          keyboardType: TextInputType.number,
          enableActiveFill: true,
          onChanged: (value) {}),
    );
  }
}
