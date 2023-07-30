// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import '../../../../../core/utils/styles.dart';
// class ReadMoreText extends StatefulWidget {
//   final String text;
//   final int maxLines;
//
//    ReadMoreText({
//     Key? key,
//     required this.text,
//     required this.maxLines,
//   }) : super(key: key);
//
//   @override
//   _ReadMoreTextState createState() => _ReadMoreTextState();
// }
//
// class _ReadMoreTextState extends State<ReadMoreText> {
//   bool isExpanded = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           isExpanded = !isExpanded;
//         });
//       },
//       child: Padding(
//         padding:  EdgeInsets.only(
//           left: 24,
//           right: 24,
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               widget.text,
//               maxLines: isExpanded ? null : widget.maxLines,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyles.textStyle16.copyWith(
//                 color: ColorStyles.kGreyColor,
//               ),
//             ),
//             if (!isExpanded)
//               TextSpan(
//                 text: ' Read more..',
//                 style: TextStyle(
//                   color: Colors.blue,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
