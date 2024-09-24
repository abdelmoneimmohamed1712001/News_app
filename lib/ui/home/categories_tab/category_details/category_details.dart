import 'package:flutter/material.dart';
import 'package:news_app/api_manager/api_manager.dart';
import 'package:news_app/ui/home/categories_tab/category_details/source_tabs.dart';
import 'package:news_app/ui/home/categories_tab/category_item.dart';

class CategoryDetails extends StatelessWidget {
  CategoryItem catItem ;
   CategoryDetails({super.key,required this.catItem});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
         future: ApiManager.getSources(catItem.newsItemId),
         builder: (context, snapshot) {
           if(snapshot.connectionState == ConnectionState.waiting){
             return Center(child: CircularProgressIndicator(),);
           }
           if(snapshot.data?.status== 'error' || snapshot.hasError){
             return Center(child: Text(snapshot.data?.message ?? snapshot.error.toString()),);
           }
           var sourcesList = snapshot.data?.sources?? [];
           return SourceTabs(sourcesList: sourcesList,);
         },);
  }
}
