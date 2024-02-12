// import 'package:flutter/material.dart';
// import 'package:ui1/cell_section.dart';
// import 'package:ui1/colors.dart';
//
// class BuildingBottomSheet extends StatelessWidget {
//   const BuildingBottomSheet({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Padding(
//         padding:
//             const EdgeInsetsDirectional.symmetric(vertical: 30, horizontal: 20),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//                 height: 5,
//                 width: 60,
//                 decoration: BoxDecoration(color: MainColors.greyColor)),
//             SizedBox(
//               height: 40,
//             ),
//             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Text("Items Categories",
//                   style: Theme.of(context).textTheme.labelMedium!.copyWith(
//                         color: MainColors.primaryColor,
//                         fontWeight: FontWeight.bold,
//                       )),
//               Text("choose from list below",
//                   style: Theme.of(context).textTheme.labelMedium),
//               Divider(color: MainColors.greyBorderColor),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                       border: Border.all(
//                           color: MainColors.greyBorderColor, width: 3),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Column(children: [
//                     CellSection("Apartment"),
//                     Divider(color: MainColors.greyBorderColor, thickness: 2),
//                     CellSection("Townhouse"),
//                     Divider(color: MainColors.greyBorderColor, thickness: 2),
//                     CellSection("Villa"),
//                   ]),
//                 ),
//               ),
//               Container(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStatePropertyAll(MainColors.primaryColor)),
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: Padding(
//                       padding:
//                           const EdgeInsetsDirectional.symmetric(vertical: 12),
//                       child: Text(
//                         "Select",
//                         style: TextStyle(color: MainColors.whiteColor),
//                       ),
//                     )),
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
