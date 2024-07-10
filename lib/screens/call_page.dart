import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key, required this.callID,required this.userId,required this.userName});
  final String callID;
  final String userName;
  final String userId;

  @override
  Widget build(BuildContext context)  {
    return ZegoUIKitPrebuiltCall(
      appID: 105974822, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: "d68657a6f0916614f1f105946f6906d7281ec469f12032097fd27424a1a55017", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}