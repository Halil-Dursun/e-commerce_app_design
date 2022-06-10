

import 'package:e_commerce_app_design/constants/images.dart';
import 'package:flutter/material.dart';

class HomeRiverPod extends ChangeNotifier{
  List<String> campaignImages = [
    ImagesPath.campaignsImage,
    ImagesPath.campaignsImage,
    ImagesPath.campaignsImage,
  ];

  int campaignsCurrentIndex = 0; 

  PageController pageController = PageController(initialPage: 0);

  void setCampaignCurrentIndex(int index){
    campaignsCurrentIndex = index;
    notifyListeners();
  }
}