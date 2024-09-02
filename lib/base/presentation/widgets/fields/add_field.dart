// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
// import 'package:beneficiary/base/presentation/widgets/spaces/small_height.dart';
// import 'package:beneficiary/base/presentation/widgets/texts/body.dart';
// import 'package:beneficiary/base/presentation/widgets/texts/headline.dart';


// // ignore: must_be_immutable
// class AddField extends StatefulWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType keyboardType;
//   final int maxL;
//   final bool auotoFocus;
//   final Function(String) onChanged;
//   final String? Function(String?)? validator;
//   String title;
//   FocusNode focusNode;
//   int maxLength;
//   String right;
//   AddField({
//     Key? key,
//     required this.controller,
//     required this.hintText,
//     required this.keyboardType,
//     this.maxL = 1,
//     this.auotoFocus = false,
//     required this.onChanged,
//     required this.validator,
//     required this.title,
//     required this.focusNode,
//     required this.maxLength,
//     required this.right,
//   }) : super(key: key);

//   @override
//   State<AddField> createState() => _AddFieldState();
// }

// class _AddFieldState extends State<AddField> {
//   @override
//   void initState() {
//     super.initState();
//     widget.focusNode.addListener(() {
//       setState(() {}); // Widget'ı tekrar çizmek için setState kullanın
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Body(
//           text: widget.title,
//           color: context.colors.titleColor,
//           fontSize: 14,
//         ),
//         SmallHeight(
//           height: 0.6,
//         ),
//         TextFormField(
//             maxLength: widget.maxLength,
//             validator: widget.validator,
//             autofocus: widget.auotoFocus,
//             keyboardType: widget.keyboardType,
//             controller: widget.controller,
//             cursorColor: context.colors.titleColor,
//             maxLines: widget.maxL,
//             style: GoogleFonts.montserrat(
//               color: context.colors.titleColor,
//               fontSize: 14,
//               fontWeight: FontWeight.w400,
//             ),
//             focusNode: widget.focusNode,
//             decoration: InputDecoration(
//               counterStyle: GoogleFonts.montserrat(
//                 color: Colors.white,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//               ),
//               filled: true,
//               fillColor: context.colors.borderColor,
//               contentPadding: EdgeInsets.all(16),
//               hintText: widget.focusNode.hasFocus ? '' : widget.hintText,
//               hintStyle: GoogleFonts.montserrat(
//                 color: context.colors.white.withOpacity(0.3),
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//               ),
//               errorStyle: GoogleFonts.montserrat(
//                 color: Colors.red,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//               ),
//               suffix: Headline(text: widget.right),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: BorderSide(
//                     color: context.colors.backgroundColor.withOpacity(0.1),
//                     width: 1.5),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: BorderSide(
//                     color: context.colors.backgroundColor.withOpacity(0.1),
//                     width: 1.5),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: BorderSide(
//                     color: context.colors.backgroundColor.withOpacity(0.1),
//                     width: 1.5),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(16),
//                 borderSide: BorderSide(
//                     color: context.colors.backgroundColor.withOpacity(0.1),
//                     width: 1.5),
//               ),
//             ),
//             onChanged: widget.onChanged),
//       ],
//     );
//   }
// }
