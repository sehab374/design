import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui1/category_bottom_sheet.dart';
import 'package:ui1/colors.dart';
import 'package:dotted_line/dotted_line.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Confirmation",
            style: GoogleFonts.poppins(
                fontSize: 22,
                color: MainColors.whiteColor,
                fontWeight: FontWeight.w500)),
        backgroundColor: MainColors.primaryColor,
        centerTitle: true,
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              color: MainColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ////////////////////////////////////////////////////card
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MainColors.greyTextColor,
                        blurRadius: 20,
                      )
                    ],
                    color: MainColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      vertical: 20, horizontal: 10),
                  child: Column(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.light_mode_rounded,
                          size: 40,
                          color: MainColors.greyTextColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Thank You",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: MainColors.greyTextColor,
                                    fontWeight: FontWeight.w500)),
                            Text(" Abdulaziz ",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: MainColors.primaryColor,
                                    fontWeight: FontWeight.w500)),
                            Text("For Trusting Us,",
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: MainColors.greyTextColor,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Text("Your Policy Has Been Issued ",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: MainColors.primaryColor)),
                        Text("Successfully",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(color: MainColors.primaryColor)),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 20),
                      child: DottedLine(
                        lineThickness: 2,
                        dashColor: MainColors.greyColor,
                      ),
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        "Medical Malpractice Policy That Issued With 5000 SAR Will Be Shared With You Through Email & Sms, And Expiry Date Will Be At 23Th June 2025, And Valid For 3 Years.",
                        style: Theme.of(context).textTheme.labelMedium),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 20),
                      child: DottedLine(
                        lineThickness: 2,
                        dashColor: MainColors.greyColor,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: MainColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: MainColors.greyColor)),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.symmetric(
                            vertical: 20, horizontal: 15),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text("Receipt Number",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: MainColors.primaryColor,
                                          fontWeight: FontWeight.w500)),
                                  Text("65896226975",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          color: MainColors.greyTextColor,
                                          fontWeight: FontWeight.w500))
                                ],
                              ),
                              Icon(
                                Icons.copy_sharp,
                                size: 30,
                                color: MainColors.greyTextColor,
                              ),
                              SizedBox(
                                  height: 45,
                                  child: VerticalDivider(
                                    color: MainColors.greyColor,
                                    thickness: 3,
                                  )),
                              Icon(
                                Icons.sim_card_download_outlined,
                                size: 30,
                                color: MainColors.greyTextColor,
                              ),
                              SizedBox(
                                  height: 45,
                                  child: VerticalDivider(
                                    color: MainColors.greyColor,
                                    thickness: 3,
                                  )),
                              Icon(
                                Icons.share_outlined,
                                size: 30,
                                color: MainColors.greyTextColor,
                              )
                            ]),
                      ),
                    )
                  ]),
                ),
              ),
            ),
            ////////////////////////////////////bottom button
            Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: MainColors.greyTextColor,
                      blurRadius: 20,
                    )
                  ],
                  color: MainColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 20, horizontal: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(MainColors.primaryColor)),
                    onPressed: () {},
                    child: Text(
                      "Back To Dashboard",
                      style: TextStyle(color: MainColors.whiteColor),
                    )),
              ),
            )
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showBottomSheet();
          },
          child: Icon(Icons.add)),
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
        return CategoryBottomSheet();
      },
    );
  }
}
