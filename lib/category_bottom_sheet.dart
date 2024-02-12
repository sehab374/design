import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:ui1/cell_section.dart';
import 'package:ui1/colors.dart';

class CategoryBottomSheet extends StatefulWidget {
  const CategoryBottomSheet({super.key});

  @override
  State<CategoryBottomSheet> createState() => _CategoryBottomSheetState();
}

class _CategoryBottomSheetState extends State<CategoryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                height: 5,
                width: 50,
                decoration: BoxDecoration(color: MainColors.greyColor)),
            SizedBox(
              height: 20,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Items Categories",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: MainColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      )),
              Text("choose from list below",
                  style: Theme.of(context).textTheme.labelMedium),
              Divider(color: MainColors.greyBorderColor),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: MainColors.greyBorderColor, width: 3),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  CellSection("Electronics & Computers Clothing"),
                  Divider(color: MainColors.greyBorderColor, thickness: 2),
                  CellSection("Jewelry"),
                  Divider(color: MainColors.greyBorderColor, thickness: 2),
                  CellSection("Outdoor Content"),
                  Divider(color: MainColors.greyBorderColor, thickness: 2),
                  CellSection("Fine Arts, Silverware & Antique"),
                  Divider(color: MainColors.greyBorderColor, thickness: 2),
                  CellSection("Furniture"),
                  Divider(color: MainColors.greyBorderColor, thickness: 2),
                  CellSection("Miscellaneous"),
                ]),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(MainColors.primaryColor)),
                    onPressed: () {},
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 12),
                      child: Text(
                        "Select",
                        style: TextStyle(color: MainColors.whiteColor),
                      ),
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
