import 'package:flutter/material.dart';

typedef OnMenuItemClicked = void Function(MenuItem item);
class HomeDrawer extends StatelessWidget {
  OnMenuItemClicked onMenuItemClicked;
  HomeDrawer({required this.onMenuItemClicked});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Theme.of(context).colorScheme.primary,
            child: Center(child: Text('News App!',style: Theme.of(context).textTheme.titleSmall,)),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {
                onMenuItemClicked(MenuItem.categories);
              },
              child: Row(
                children: [
                  Icon(Icons.view_list,color: Colors.black,),
                  SizedBox(width: 5,),
                  Text('Categories',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {
                onMenuItemClicked(MenuItem.settings);
              },
              child: Row(
                children: [
                  Icon(Icons.settings,color: Colors.black,),
                  SizedBox(width: 5,),
                  Text('Settings',style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.black
                  ),)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
  enum MenuItem{
    categories,
    settings
  }

