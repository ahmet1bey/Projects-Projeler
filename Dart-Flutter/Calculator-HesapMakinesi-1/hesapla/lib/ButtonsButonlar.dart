import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonsButonlar extends StatelessWidget {
  final String TextMetin;
  final double SizeBoyut;
  final Function ClickTiklama;

  const ButtonsButonlar(
      { //Key? key,
      required this.TextMetin,
      required this.SizeBoyut,
      required this.ClickTiklama,
      });
       //: super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      child: SizedBox(
          width: 95,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {
              ClickTiklama(TextMetin);
            },
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundColor: Colors.black,
            child: Text(
              TextMetin,
              style: GoogleFonts.xanhMono(
                  textStyle: TextStyle(
                fontSize: SizeBoyut,
              )),
            ),
          )),
    );
  }
}
