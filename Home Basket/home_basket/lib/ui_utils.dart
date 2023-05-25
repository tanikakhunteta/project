import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiUtilsScreen {
  static Widget gradientContainer(BuildContext context,
      {required String text}) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(colors: [
            Color(0xff0E5299),
            Color(0xff0680D6),
            Color(0xff2FC2E3),
            Color(0xff35C856)
          ])),
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 17, color: Colors.white),
      )),
    );
  }

  static Widget textFormField(
      {CountryCodePicker? prefix,
      required String hintText,
      EdgeInsetsGeometry? contentPadding,Widget? suffixIcon}) {
    return TextFormField(
      decoration: InputDecoration(suffixIcon: suffixIcon,
          contentPadding: contentPadding,
          hintStyle: TextStyle(fontSize: 14, color: Color(0xff979797)),
          hintText: hintText,
          prefix: prefix,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(8))),
    );
  }
}
