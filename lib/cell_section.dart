import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import 'colors.dart';

class CellSection extends StatelessWidget {
  String caption;

  CellSection(this.caption);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(caption, style: Theme.of(context).textTheme.labelSmall),
          RoundCheckBox(
            checkedColor: MainColors.primaryColor,
            border: Border.all(width: 3, color: MainColors.greyBorderColor),
            onTap: (selected) {},
          ),
        ],
      ),
    );
  }
}
