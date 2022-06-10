import 'package:e_commerce_app_design/components/custom_appbar.dart';
import 'package:e_commerce_app_design/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../constants/constant.dart';
import '../constants/images.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverPod());

class Home extends ConsumerStatefulWidget {

    @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home>{
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          SizedBox(
            height: 210,
            child: Stack(
              children: [
                PageView.builder(
                  controller: read.pageController,
                  itemCount: read.campaignImages.length,
                  itemBuilder: (context,index) => Image.asset(watch.campaignImages[index]),
                  onPageChanged: (newPageValue) => read.setCampaignCurrentIndex(newPageValue),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: 12.onlyBottomP,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for(int i=0;i < read.campaignImages.length;i++)
                        Container(
                          margin: 3.allP,
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: watch.campaignsCurrentIndex == i ? Constant.white : Constant.white.withOpacity(0.5),
                          ),
                          
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}