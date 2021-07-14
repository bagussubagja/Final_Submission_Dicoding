import 'package:e_zakat/zakatpedia_dalil.dart';
import 'package:e_zakat/zakatpedia_definisizakat.dart';
import 'package:e_zakat/zakatpedia_hukumzakat.dart';
import 'package:e_zakat/zakatpedia_syarat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class zakatPediaMenu extends StatelessWidget {
  const zakatPediaMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Zakat'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: Row(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.only(left: 5),
                    child: Image.asset('images/zakatpedia_menu.png',
                      height: 115,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.zero,
                        child: Text('ZakatPedia',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.zero,
                        child: Text('Pengetahuan Zakat ada disini!',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return zp_Definisi();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset('images/definisizakat.png',
                      height: 230,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return zp_Hukum();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset('images/hukumzakat.png',
                      height: 230,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return zp_Dalil();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image.asset('images/dalilzakat.png',
                      height: 230,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return zp_Syarat();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset('images/syaratzakat.png',
                      height: 230,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
