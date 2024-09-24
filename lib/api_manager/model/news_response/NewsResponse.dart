import 'news.dart';

class NewsResponse {
  NewsResponse({
      this.status, 
      this.totalResults, 
      this.articles,});

  NewsResponse.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    code = json['code'];
    message = json['message'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(News.fromJson(v));
      });
    }
  }
  String? status;
  num? totalResults;
  String? code;
  String? message;
  List<News>? articles;
NewsResponse copyWith({  String? status,
  num? totalResults,
  List<News>? articles,
}) => NewsResponse(  status: status ?? this.status,
  totalResults: totalResults ?? this.totalResults,
  articles: articles ?? this.articles,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['totalResults'] = totalResults;
    if (articles != null) {
      map['articles'] = articles?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}