import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onBoarding_controller.dart';

class NextButtomWidget extends GetView<OnBoardingControllerImp> {
  const NextButtomWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: const Text(
            "Next",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
