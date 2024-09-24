import 'dart:convert';
import 'dart:ui';

import 'package:http/http.dart' as http;
import 'package:news_app/api_manager/model/news_response/NewsResponse.dart';

import 'model/sources_response/SourceResponce.dart';

class ApiManager{
  //https://newsapi.org/v2/top-headlines/sources?apiKey=af974d5b5bb946b895e003782cbdb913
  static const String baseUrl = 'newsapi.org';
  static const String apiKey = 'af974d5b5bb946b895e003782cbdb913';
  static Future<SourceResponse>getSources(String categoryId)async{
   var url = Uri.https(
      baseUrl,
      'v2/top-headlines/sources',
      {
        'apiKey':apiKey,
        'category': categoryId
      }
    );
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    var sourceResponse = SourceResponse.fromJson(json);
    return sourceResponse;
  }
  static Future<NewsResponse> getNews(String sourceId)async{
    var url = Uri.https(
      baseUrl,
      'v2/everything',
      {
        'apiKey':apiKey,
        'sources': sourceId,

      }
    );
    var response =await http.get(url);
    var json = jsonDecode(response.body);
    var newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}