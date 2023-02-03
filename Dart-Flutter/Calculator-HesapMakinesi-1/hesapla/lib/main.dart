import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ButtonsButonlar.dart';

void main() {
  runApp(const hesapla());
}

class hesapla extends StatefulWidget {
  const hesapla({Key? key}) : super(key: key);

  @override
  State<hesapla> createState() => _hesaplaState();
}

class _hesaplaState extends State<hesapla> {

  void ButtonClick (String ButtonValue){

    print(ButtonValue);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.values[0]),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Calculator-HesapMakinesi",
                style: GoogleFonts.zillaSlabHighlight(
                  fontSize: 25,
                ),
              ),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                Container(
                  alignment: Alignment(1, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "History-Geçmiş",
                      style: GoogleFonts.xanhMono(
                          textStyle: TextStyle(
                        fontSize: 20,
                      )),
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment(1, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "Number-Sayı",
                        style: GoogleFonts.xanhMono(
                          fontSize: 20,
                        ),
                      ),
                    )),
                Container(
                  alignment: Alignment(1, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Buttons-Butonlar",
                      style: GoogleFonts.xanhMono(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonsButonlar(
                            TextMetin: "AC",
                            SizeBoyut: 25,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "C",
                            SizeBoyut: 25,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "/",
                            SizeBoyut: 25,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "◄",
                            SizeBoyut: 50,
                            ClickTiklama: ButtonClick),

                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonsButonlar(
                            TextMetin: "7",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "8",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "9",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "*",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),

                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonsButonlar(
                            TextMetin: "4",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "5",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "6",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "-",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),

                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonsButonlar(
                            TextMetin: "1",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "2",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "3",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "+",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),

                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonsButonlar(
                            TextMetin: "+/-",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "0",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: ",",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),
                        ButtonsButonlar(
                            TextMetin: "=",
                            SizeBoyut: 35,
                            ClickTiklama: ButtonClick),

                      ],
                    )
                  ],
                ),
              ],
            )));
  }
}
