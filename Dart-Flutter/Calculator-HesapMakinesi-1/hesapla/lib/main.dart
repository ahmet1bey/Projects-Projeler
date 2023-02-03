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

  //VARİABLES
  int NumberSayi1 = 0;
  int NumberSayi2 = 0;
  String OutputCikti = "";
  String HistoryGecmis = "";
  String ResultSonuc = "";
  String ActionEylem = "";

  //ON CLİCK ACTİON
  void ButtonClick (String ButtonValue){

    print(ButtonValue);

    if(ButtonValue == "AC"){

    }
    else if(ButtonValue == "C"){

    }
    else if(ButtonValue == "◄"){

    }
    else if(ButtonValue == "*"){

    }
    else if(ButtonValue == "="){
      NumberSayi2  = int.parse(OutputCikti);

      if(ActionEylem == "+"){

        ResultSonuc = (NumberSayi1+NumberSayi2).toString();
        HistoryGecmis = NumberSayi1.toString()+ActionEylem.toString()+NumberSayi2.toString();

      }

    }
    else if(ButtonValue == "-"){

    }
    else if(ButtonValue == "+"){

      NumberSayi1 = int.parse(OutputCikti);
      ResultSonuc = "";
      ActionEylem = ButtonValue;

    }
    else if(ButtonValue == "+/-"){

    }
    else{
      ResultSonuc = int.parse(OutputCikti + ButtonValue).toString();
    }

    setState(() {
      OutputCikti = ResultSonuc;
    });


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
            body: Padding(
              padding: const EdgeInsets.only(left: 0,top: 0,
              right: 0,bottom: 10),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                  Container(
                    alignment: Alignment(1, 1),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        HistoryGecmis,
                        style: GoogleFonts.xanhMono(
                            textStyle: TextStyle(
                          fontSize: 25,
                        )),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment(1, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          OutputCikti,
                          style: GoogleFonts.xanhMono(
                            fontSize: 100,
                          ),
                        ),
                      )),

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
                              SizeBoyut: 35,
                              ClickTiklama: ButtonClick),
                          ButtonsButonlar(
                              TextMetin: "◄",
                              SizeBoyut: 55,
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
                              SizeBoyut: 45,
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
                              SizeBoyut: 55,
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
                              SizeBoyut: 55,
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
                              SizeBoyut: 45,
                              ClickTiklama: ButtonClick),
                          ButtonsButonlar(
                              TextMetin: "0",
                              SizeBoyut: 35,
                              ClickTiklama: ButtonClick),
                          ButtonsButonlar(
                              TextMetin: ",",
                              SizeBoyut: 55,
                              ClickTiklama: ButtonClick),
                          ButtonsButonlar(
                              TextMetin: "=",
                              SizeBoyut: 55,
                              ClickTiklama: ButtonClick),

                        ],
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
