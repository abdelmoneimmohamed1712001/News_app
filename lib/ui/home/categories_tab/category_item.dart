import 'package:flutter/material.dart';

class CategoryItem{
  String newsItemId;
  Color color;
  String image;
  String title;
  CategoryItem({required this.newsItemId,required this.title,required this.color,required this.image});
  static List<CategoryItem> getNewsItemList(){
    return [
      CategoryItem(newsItemId: 'sports',title: 'Sports', color: Color(0xffC91C22), image: 'assets/images/sports.png'),
      CategoryItem(newsItemId: 'general',title: 'General', color: Color(0xff003E90), image: 'assets/images/Politics.png'),
      CategoryItem(newsItemId: 'health',title: 'Health', color: Color(0xffED1E79), image: 'assets/images/health.png'),
      CategoryItem(newsItemId: 'business',title: 'Business', color: Color(0xffCF7E48), image: 'assets/images/bussines.png'),
      CategoryItem(newsItemId: 'entertainment',title: 'Environment', color: Color(0xff4882CF), image: 'assets/images/environment.png'),
      CategoryItem(newsItemId: 'science',title: 'Science', color: Color(0xffF2D352), image: 'assets/images/science.png'),
    ];
  }}