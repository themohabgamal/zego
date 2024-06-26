import 'dart:math';
import 'package:flutter/material.dart';
import 'package:zego/constants/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

final userId = Random().nextInt(9999);

class Video extends StatelessWidget {
  const Video({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    // Ensure callID is not empty or null
    if (callID.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Call ID is required to start the video call.'),
        ),
      );
    }
    print(callID);
    print(userId);
    print(Constants.appID);
    print(Constants.appSign);
    return ZegoUIKitPrebuiltCall(
      appID: Constants
          .appID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Constants
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId.toString(),
      userName: 'user$userId',
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
