// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class CustomTextField extends StatelessWidget {
//   CustomTextField({
//     this.onFieldSubmitted,
//     this.icon,
//     this.hint,
//     this.labelText,
//     this.suffixIcon,
//     this.obscure = false,
//     this.validator,
//     this.onSaved,
//     this.onChanged,
//     this.color,
//     this.suffixColor,
//     this.keyBoardType,
//     this.initialValue,
//     this.maxLine,
//     this.maxLength,
//     this.controller,
//     this.inputFormatters,
//     this.prefixText,
//     this.leftPadding,
//     this.rightPadding,
//     this.textInputAction,
//     this.textCapitalization,
//     this.prefixWidget,
//     this.suffixWidget,
//     this.enable,
//     this.prefixIcon,
//     this.isNotPrefixIcon = false,
//     this.focusNode,
//   });

//   final FormFieldSetter<String> onFieldSubmitted;
//   final FormFieldSetter<String> onSaved;
//   final FormFieldSetter<String> onChanged;
//   final Icon icon;
//   final String hint;
//   final String labelText;
//   final Widget suffixIcon;
//   final bool obscure;
//   final FormFieldValidator<String> validator;
//   final Color color;
//   final Color suffixColor;
//   final TextInputType keyBoardType;
//   final String initialValue;
//   final int maxLine;
//   final int maxLength;
//   final TextEditingController controller;
//   final List<TextInputFormatter> inputFormatters;
//   final String prefixText;
//   final double leftPadding;
//   final double rightPadding;
//   final TextInputAction textInputAction;
//   final TextCapitalization textCapitalization;
//   final bool enable;
//   final String prefixWidget;
//   final Widget prefixIcon;
//   final String suffixWidget;
//   final bool isNotPrefixIcon;
//   final FocusNode focusNode;

//   @override
//   Widget build(BuildContext context) {
//     // SizeConfig().init(context);
//     return Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(0),
//       child: TextFormField(
//         focusNode: focusNode,
//         autocorrect: false,
//         enabled: enable != null ? enable : true,
//         textCapitalization: textCapitalization == null
//             ? TextCapitalization.sentences
//             : textCapitalization,
//         textInputAction: textInputAction,
//         onFieldSubmitted: onFieldSubmitted,
//         maxLength: maxLength ?? 100,
//         controller: controller,
//         maxLines: 1,
//         initialValue: initialValue,
//         keyboardType: keyBoardType,
//         onSaved: onSaved,
//         onChanged: onChanged,
//         validator: validator,
//         obscureText: obscure,
//         inputFormatters: inputFormatters,
//         // style: AppTheme.textFieldTextStyle(),
//         decoration: InputDecoration(
//           errorStyle: TextStyle(
//             color: Theme.of(context).errorColor, // or any other color
//           ),
//           errorMaxLines: 2,
//           contentPadding: isNotPrefixIcon
//               ? const EdgeInsets.only(right: 18, top: 14, bottom: 15, left: 18)
//               : const EdgeInsets.only(right: 12, top: 14),
//           prefixIcon: isNotPrefixIcon
//               ? null
//               : Container(
//                   height: 18,
//                   width: 18,
//                   padding: const EdgeInsets.all(15),
//                   child: prefixIcon),
//           prefixText: prefixText,
//           hintText: labelText,
//           // hintStyle: AppTheme.textFieldTextStyle(color: AppTheme.grayColor()),
//           suffixIcon: suffixIcon,
//           counterText: "",
//           border: InputBorder.none,
//           errorBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           disabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           focusedErrorBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide.none,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           // fillColor: AppTheme.textFieldBgColor(),
//           filled: true,
//         ),
//       ),
//     );
//   }
// }
