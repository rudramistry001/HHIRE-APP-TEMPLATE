import '../saved_page/widgets/savedlist_item_widget.dart';import 'models/saved_model.dart';import 'models/savedlist_item_model.dart';import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';import 'provider/saved_provider.dart';class SavedPage extends StatefulWidget {const SavedPage({Key? key}) : super(key: key);

@override SavedPageState createState() =>  SavedPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SavedProvider(), child: SavedPage()); } 
 }
class SavedPageState extends State<SavedPage> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 30.v, right: 24.h), child: Consumer<SavedProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: provider.savedModelObj.savedlistItemList.length, itemBuilder: (context, index) {SavedlistItemModel model = provider.savedModelObj.savedlistItemList[index]; return SavedlistItemWidget(model, onTapBag: () {onTapBag(context);});});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_saved".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Navigates to the jobDetailsTabContainerScreen when the action is triggered.
onTapBag(BuildContext context) { NavigatorService.pushNamed(AppRoutes.jobDetailsTabContainerScreen); } 

/// Navigates to the previous screen.
onTapImage(BuildContext context) { NavigatorService.goBack(); } 
 }
