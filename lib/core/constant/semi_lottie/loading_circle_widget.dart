import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../AppColors/AppColors.dart';

class LoadingCircleWidget extends StatelessWidget {
  const LoadingCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(color: AppColor.blue);
  }
}
