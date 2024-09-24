import 'package:flutter/material.dart';
import 'package:news_app/api_manager/model/sources_response/Source.dart';
import 'package:news_app/core/styles/app_theme.dart';

class SourceItemWidget extends StatelessWidget {
  Source source;
  bool isSelected;
  SourceItemWidget({super.key, required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected
            ? Theme.of(context).colorScheme.primary
            : Colors.transparent,
        border: Border.all(width: 2,color: isSelected ? Colors.transparent : Theme.of(context).colorScheme.primary)
      ),
      child: Text(
        source.name ?? '',
        style:isSelected ? Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: Colors.white):Theme.of(context).textTheme.labelSmall,
      ),
    );
  }
}
