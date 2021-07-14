import 'package:e_zakat/home.dart';
import 'package:flutter/material.dart';

class paymentSuccessful extends StatelessWidget {
  const paymentSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Zakat'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset('images/payment_success.png',
                height: 275,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.topCenter,
              child: Text('Selamat!',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.topCenter,
              child:  Text('Alhamdulillah, pembayaran zakat kamu telah berhasil!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomePage();
                }));
              },
              child: Padding(padding: const EdgeInsets.fromLTRB(15, 55, 15, 0),
                child: Image.asset('images/back_to_menu.png',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
