import 'package:flutter/material.dart';
import 'package:ui1/building_bottom_sheet.dart';
import 'package:ui1/cell_section.dart';
import 'package:ui1/colors.dart';

class BuildingDetails extends StatefulWidget {
  const BuildingDetails({super.key});

  @override
  State<BuildingDetails> createState() => _BuildingDetailsState();
}

class _BuildingDetailsState extends State<BuildingDetails> {
  bool isVisible = false;

  String selected = "Options";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
              color: MainColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              vertical: 60, horizontal: 30),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: MainColors.greyTextColor,
                    blurRadius: 20,
                  )
                ],
                color: Color(0xffF1F5F7),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Building Details",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: MainColors.primaryColor,
                            )),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 20),
                      child: Divider(color: MainColors.greyColor, thickness: 3),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Building Type",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: Colors.black,
                                )),
                        Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              vertical: 10),
                          child: Text("Please select building type",
                              style: Theme.of(context).textTheme.labelMedium),
                        ),
                        InkWell(
                          onTap: () {
                            showBottomSheet();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: MainColors.greyColor, width: 2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(selected,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                              color: MainColors.greyColor,
                                            )),
                                    Icon(
                                      Icons.double_arrow_sharp,
                                      color: MainColors.greyColor,
                                    )
                                  ]),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: isVisible,
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                          vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Number of Floors",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Colors.black,
                                              )),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .symmetric(vertical: 10),
                                        child: Text(
                                            "Please enter number of floors",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: MainColors.greyColor,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          onTap: () {},
                                          decoration: InputDecoration(
                                              label: Padding(
                                            padding: const EdgeInsetsDirectional
                                                .symmetric(horizontal: 10),
                                            child: Text(
                                              "XXXX",
                                            ),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                          vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Does it includes Basement?",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium!
                                              .copyWith(
                                                color: Colors.black,
                                              )),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .symmetric(vertical: 10),
                                        child: Text("Please select",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium),
                                      ),
                                      Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: MainColors.greyColor,
                                                width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(children: [
                                          Expanded(
                                              child: Container(
                                                  color:
                                                      MainColors.primaryColor,
                                                  child: Center(
                                                      child: Text("Yes",
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .labelMedium!
                                                              .copyWith(
                                                                  color: MainColors
                                                                      .whiteColor))))),
                                          Expanded(
                                              child: Center(
                                                  child: Text("No",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .labelMedium)))
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) {
        return Container(
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                vertical: 30, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 5,
                    width: 60,
                    decoration: BoxDecoration(color: MainColors.greyColor)),
                SizedBox(
                  height: 40,
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
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: MainColors.greyBorderColor, width: 3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        CellSection("Apartment"),
                        Divider(
                            color: MainColors.greyBorderColor, thickness: 2),
                        CellSection("Townhouse"),
                        Divider(
                            color: MainColors.greyBorderColor, thickness: 2),
                        CellSection("Villa"),
                      ]),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                MainColors.primaryColor)),
                        onPressed: () {
                          setState(() {
                            selected = "done";
                            isVisible = true;
                          });
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              vertical: 12),
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
      },
    );
  }
}
