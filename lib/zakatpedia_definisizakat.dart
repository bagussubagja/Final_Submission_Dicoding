import 'package:e_zakat/home.dart';
import 'package:flutter/material.dart';

class zp_Definisi extends StatelessWidget {
  const zp_Definisi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Zakat'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return HomePage();
              }));
            },
            icon: Icon(
                Icons.home_rounded
            ),
          )
        ],
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(
              icon: const Icon(Icons.arrow_back_sharp),
              onPressed: (){
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Image.asset('images/definisizakat_expand.png',
                height: 250,
              ),
            ),
            Center(
              child: Image.asset('images/definisizakat_answer.png'
              ),
            )
          ],
        ),
      )
    );
  }
}