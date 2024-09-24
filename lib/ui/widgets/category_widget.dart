import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/home/categories_tab/category_item.dart';

class CategoryWidget extends StatelessWidget {
  CategoryItem catItem ;
  int index ;
   CategoryWidget({required this.catItem,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(index.isEven ? 0 : 25),
            bottomLeft: Radius.circular(index.isEven ? 25 : 0),
          ),
          color: catItem.color
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset(catItem.image,height: 94),
            Spacer(),
            Text(catItem.title,style: Theme.of(context).textTheme.titleMedium,)
          ],
        ),
      ),
    );
  }
}
