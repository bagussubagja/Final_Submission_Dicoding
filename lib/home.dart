import 'package:e_zakat/mosque_list.dart';
import 'package:e_zakat/zakatpedia_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Zakat'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            //back_rectangle
            Padding(padding: const EdgeInsets.only(top: 90),
            child: Image.asset('images/back_rectangle.png'),
            ),
            //foto_user
            Padding(padding: const EdgeInsets.only(top: 25),
              child: Image.asset('images/user.png', width: 180,height: 180,),
            ),
            //textnama
            Container(
              margin: EdgeInsets.only(top: 210),
              child: Text('Bagus Subagja',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 240),
              child: Text('Jl.Dipatiukur No.17, Bandung',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                    return mosqueList();
                  }));},
                  child: Container(
                    margin: EdgeInsets.only(top: 360),
                    child: Image.asset('images/bayarzakat.png'),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return zakatPediaMenu();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 360),
                        child: Image.asset('images/zakatpedia.png'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}