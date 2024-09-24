import 'package:flutter/material.dart';
import 'package:news_app/ui/widgets/category_widget.dart';
import 'category_item.dart';

typedef OnCategoryItemClicked = void Function(CategoryItem catItem);
class CategoriesTabWidget extends StatelessWidget {
  List<CategoryItem> allCategories = CategoryItem.getNewsItemList();
OnCategoryItemClicked onCategoryItemClicked ;
CategoriesTabWidget({required this.onCategoryItemClicked});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Pick your category \nof interest',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Center(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) =>
                    InkWell(
                        onTap: () {
                          onCategoryItemClicked(allCategories[index]);
                        },
                        child: CategoryWidget(catItem: allCategories[index], index: index,)),
                itemCount: allCategories.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
