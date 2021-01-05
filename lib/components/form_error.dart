import 'package:SHOP_APP/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(this.errors.length, (index) => formErrorText(errror: errors[index])),
    );
  }

  Row formErrorText({String errror}) {
    return Row(
        children: [
          SvgPicture.asset(
            "assets/icons/Error.svg",
            height: getProportionateScreenHeight(14),
            width: getProportionateScreenWidth(14),
          ),
          SizedBox(
            width: getProportionateScreenWidth(10)
          ),
          Text(errror)
        ],
      );
  }
}