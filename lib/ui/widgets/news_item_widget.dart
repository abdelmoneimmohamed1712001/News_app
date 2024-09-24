import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/api_manager/model/news_response/news.dart';

class NewsItemWidget extends StatelessWidget {
  News news ;
  NewsItemWidget({super.key,required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: CachedNetworkImage(
                imageUrl: news.urlToImage??'',
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),),
          SizedBox(height: 5,),
          Text(news.title??'',style: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 5,),
          Text(news.description??'',style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10,),
          Text(news.publishedAt??'',textAlign: TextAlign.end,style: Theme.of(context).textTheme.bodySmall?.copyWith(
            fontSize: 13
          ))
        ],
      ),
    );
  }
}
