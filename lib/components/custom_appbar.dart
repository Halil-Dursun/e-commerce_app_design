import 'package:e_commerce_app_design/constants/constant.dart';
import 'package:e_commerce_app_design/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';


class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  CustomAppBar({Key? key,this.appBarTitle = 'iDrip'}) :super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(

      title: Text(appBarTitle,style: const TextStyle(color: Constant.black,fontWeight: FontWeight.bold),),
      backgroundColor: Constant.darkWhite,
      centerTitle: true,
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset(IconsPath.drawerIcon,),
      ),
      actions: [
        Padding(
        padding: 12.allP,
        child: SvgPicture.asset(IconsPath.searcIcon,),
      ),
      ],
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(56.0);

}