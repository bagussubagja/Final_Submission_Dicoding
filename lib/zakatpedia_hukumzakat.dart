import 'package:e_zakat/home.dart';
import 'package:flutter/material.dart';

class zp_Hukum extends StatelessWidget {
  const zp_Hukum({Key? key}) : super(key: key);

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
                margin: EdgeInsets.only(top: 20),
                child: Image.asset('images/hukumzakat_expand.png',
                  height: 250,
                ),
              ),
              Center(
                child: Image.asset('images/hukumzakat_answer.png'
                ),
              )
            ],
          ),
        )
    );
  }
}
