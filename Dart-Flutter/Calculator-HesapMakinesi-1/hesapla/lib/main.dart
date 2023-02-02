import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const hesapla());
}

class hesapla extends StatefulWidget {
  const hesapla({Key? key}) : super(key: key);
  @override
  State<hesapla> createState() => _hesaplaState();
}


class _hesaplaState extends State<hesapla> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness:Brightness.values[0]
      ),
      home: Scaffold(

        appBar: AppBar(
          title: Text("Calculator-HesapMakinesi",
          style: GoogleFonts.zillaSlabHighlight(
            fontSize: 25,
          ),
          ),
          centerTitle: true,

        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment:Alignment(1,1),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("History-Geçmiş",
                style: GoogleFonts.xanhMono(
                  textStyle: TextStyle(
                    fontSize: 40,
                  )
                ),),
              ),
            ),
            Container(
                alignment: Alignment(1,1),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Number-Sayı",
                  style: GoogleFonts.xanhMono(
                    fontSize: 40,
                  ),),
                )),
            Container(
              alignment:Alignment(1,1),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("Buttons-Butonlar",
                style: GoogleFonts.xanhMono(
                  fontSize: 40,
                ),),
              ),
            ),
          ],
          
        )
      )
    );
  }
}
