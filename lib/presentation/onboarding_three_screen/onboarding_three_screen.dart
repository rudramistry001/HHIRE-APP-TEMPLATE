import '../onboarding_three_screen/widgets/ninetytwo_item_widget.dart';
import 'models/ninetytwo_item_model.dart';
import 'models/onboarding_three_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_three_provider.dart';

class OnboardingThreeScreen extends StatefulWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingThreeScreenState createState() => OnboardingThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingThreeProvider(),
      child: OnboardingThreeScreen(),
    );
  }
}

class OnboardingThreeScreenState extends State<OnboardingThreeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnboardingOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 29.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 5.v),
                SizedBox(
                  height: 699.v,
                  width: 327.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage422x313,
                        height: 422.v,
                        width: 313.h,
                        alignment: Alignment.topCenter,
                      ),
                      _buildNinetyThreeStack(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThreeStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 367.v,
        width: 327.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Consumer<OnboardingThreeProvider>(
              builder: (context, provider, child) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 367.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      provider.sliderIndex = index;
                    },
                  ),
                  itemCount:
                      provider.onboardingThreeModelObj.ninetytwoItemList.length,
                  itemBuilder: (context, index, realIndex) {
                    NinetytwoItemModel model = provider
                        .onboardingThreeModelObj.ninetytwoItemList[index];
                    return NinetytwoItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<OnboardingThreeProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 10.v,
                    margin: EdgeInsets.only(bottom: 112.v),
                    child: AnimatedSmoothIndicator(
                      activeIndex: provider.sliderIndex,
                      count: provider
                          .onboardingThreeModelObj.ninetytwoItemList.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 12,
                        activeDotColor: theme.colorScheme.primary,
                        dotColor: theme.colorScheme.primary.withOpacity(0.41),
                        dotHeight: 10.v,
                        dotWidth: 10.h,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
