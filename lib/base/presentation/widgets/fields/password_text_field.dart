// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:muhasebe/assets.dart';
// import 'package:muhasebe/core/widgets/spaces/small_height.dart';
// import 'package:muhasebe/core/widgets/texts/headline.dart';
// import '../../constants/app_colors.dart';
// import '../../constants/app_paddings.dart';

// // ignore: must_be_immutable
// class PasswordTextField extends StatefulWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType keyboardType;
//   final int maxL;
//   final bool auotoFocus;
//   final Function(String) onChanged;
//   final String? Function(String?)? validator;
//   String title;
//   FocusNode focusNode;
//   VoidCallback fnc;
//   final bool obscureText;
//   PasswordTextField({
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
//     required this.fnc,
//     required this.obscureText,
//   }) : super(key: key);

//   @override
//   State<PasswordTextField> createState() => _PasswordTextFieldState();
// }

// class _PasswordTextFieldState extends State<PasswordTextField> {
//   @override
//   void initState() {
//     super.initState();
//     widget.focusNode.addListener(() {
//       setState(() {}); // Widget'ı tekrar çizmek için setState kullanın
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: Paddings.paddingBottom16,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Headline(
//             text: widget.title,
//             fontSize: 14,
//           ),
//           SmallHeight(
//             height: 0.6,
//           ),
//           TextFormField(
//               validator: widget.validator,
//               autofocus: widget.auotoFocus,
//               keyboardType: widget.keyboardType,
//               controller: widget.controller,
//               cursorColor: context.colors.mainColor,
//               obscureText: widget.obscureText,
//               maxLines: widget.maxL,
//               style: GoogleFonts.inter(
//                 color: context.colors.titleColor,
//                 fontSize: 14,
//                 fontWeight: FontWeight.w400,
//               ),
//               focusNode: widget.focusNode,
//               decoration: InputDecoration(
//                 suffixIcon: IconButton(
//                     onPressed: widget.fnc,
//                     icon: SvgPicture.asset(
//                       widget.obscureText
//                           ? Assets.icons.icCloseEyeSVG
//                           : Assets.icons.icEyeSVG,
//                       color: context.colors.contentColor,
//                     )),
//                 filled: true,
//                 fillColor: context.colors.textFieldColor,
//                 contentPadding: EdgeInsets.all(20),
//                 hintText: widget.focusNode.hasFocus ? '' : widget.hintText,
//                 hintStyle: GoogleFonts.montserrat(
//                   color: context.colors.contentColor,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 errorStyle: GoogleFonts.montserrat(
//                   color: Colors.red,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(
//                     color: context.colors.textFieldColor,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     color: context.colors.textFieldColor,
//                   ),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     color: context.colors.textFieldColor,
//                   ),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     color: context.colors.textFieldColor,
//                   ),
//                 ),
//               ),
//               onChanged: widget.onChanged),
//         ],
//       ),
//     );
//   }
// }
