import 'package:flutter/material.dart';
import 'package:news_app/core/utils/image_util.dart';
import 'package:news_app/ui/home/categories_tab/categories_tab_widget.dart';
import 'package:news_app/ui/home/categories_tab/category_details/category_details.dart';
import 'package:news_app/ui/home/categories_tab/category_item.dart';
import 'package:news_app/ui/home/home_drawer/home_drawer.dart';
import 'package:news_app/ui/home/settings_tab/settings_tab.dart';
import 'package:news_app/ui/widgets/category_widget.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget =
        CategoriesTabWidget(onCategoryItemClicked: onCategoryItemClicked,);
    selectedTitle = 'News App';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  ImageUtils.GetImagePathByName(imageName: 'pattern.png')))
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(selectedTitle),
          ),
          drawer: HomeDrawer(onMenuItemClicked: onMenuItemClicked,),
          body: selectedWidget
      ),
    );
  }

  late Widget selectedWidget;
  late String selectedTitle ;

  void onMenuItemClicked(MenuItem item) {
    if (item == MenuItem.categories) {
      selectedWidget =
          CategoriesTabWidget(onCategoryItemClicked: onCategoryItemClicked,);
      selectedTitle = 'News App';
    } else if (item == MenuItem.settings) {
      selectedWidget = SettingsTab();
      selectedTitle = 'Settings';
    }
    Navigator.pop(context);
    setState(() {

    });
  }

  onCategoryItemClicked(CategoryItem catItem) {
selectedWidget = CategoryDetails(catItem: catItem,);
selectedTitle = catItem.title??'';
setState(() {

});
}}
