import 'package:flutter/material.dart';
import 'package:news_app/ui/home/categories_tab/category_details/news_details.dart';
import 'package:news_app/ui/widgets/source_item_widget.dart';

import '../../../../api_manager/model/sources_response/Source.dart';

class SourceTabs extends StatefulWidget {
  List<Source>sourcesList ;
   SourceTabs({super.key,required this.sourcesList});

  @override
  State<SourceTabs> createState() => _SourceTabsState();
}

class _SourceTabsState extends State<SourceTabs> {
   int selectedIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
            length: widget.sourcesList.length,
            child: TabBar(
              onTap: (index) {

                selectedIndex = index ;
                setState(() {

                });
              },
              indicatorColor: Colors.transparent,
              automaticIndicatorColorAdjustment: false,
              isScrollable: true,
                tabAlignment: TabAlignment.start,
              tabs:widget.sourcesList
                .map(
            (source) => SourceItemWidget(source: source, isSelected: selectedIndex == widget.sourcesList.indexOf(source),)).toList()
            )),
        NewsDetails(source: widget.sourcesList[selectedIndex])

      ],
    );
  }
}
