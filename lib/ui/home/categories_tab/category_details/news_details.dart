import 'package:flutter/material.dart';
import 'package:news_app/api_manager/api_manager.dart';
import 'package:news_app/api_manager/model/news_response/news.dart';
import 'package:news_app/api_manager/model/sources_response/Source.dart';
import 'package:news_app/ui/widgets/news_item_widget.dart';

class NewsDetails extends StatelessWidget {
  Source source;
  NewsDetails({super.key,required this.source});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getNews(source.id??''),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }
          if(snapshot.data?.status== 'error' || snapshot.hasError){
            return Center(child: Text(snapshot.data?.message ?? snapshot.error.toString()),);
          }
          List<News>news = snapshot.data?.articles??[];
         return Expanded(child: ListView.builder(itemCount: news.length,itemBuilder: (context, index) => NewsItemWidget(news: news[index])));

        },);
  }
}
