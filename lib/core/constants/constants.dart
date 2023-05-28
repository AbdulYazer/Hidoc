import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final text1 = GoogleFonts.notoSansJavanese(textStyle: const TextStyle(fontWeight: FontWeight.w900,fontSize: 18));
const titleText =  TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 16);

const mainClr = Color.fromRGBO(0, 189, 212, 1);


launchURL({required String url}) async {
   final Uri url1 = Uri.parse(url);
   if (!await launchUrl(url1)) {
        throw Exception('Could not launch $url1');
    }
}