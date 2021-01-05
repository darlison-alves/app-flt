import 'package:SHOP_APP/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSurffixIcon extends StatelessWidget {
  
  final String svgIcon;

  const CustomSurffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20)
      ),
      child: SvgPicture.asset(
        this.svgIcon,
        height: getProportionateScreenHeight(18),),
    );
  }
}