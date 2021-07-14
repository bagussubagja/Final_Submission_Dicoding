import 'package:e_zakat/mosque_list.dart';
import 'package:e_zakat/mosque_place.dart';
import 'package:e_zakat/zakat_payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mosqueDetail extends StatelessWidget {
  final MosquePlace place;

  mosqueDetail({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
          SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image.asset(place.imageAsset),
                  ),
                  GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Icon(Icons.arrow_back_sharp,
                        size: 36,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                alignment: Alignment.topLeft,
                child: Text(place.name,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                alignment: Alignment.topLeft,
                child: Text('${place.address} \n(Jarak dari lokasi anda : ${place.distance})',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                alignment: Alignment.topLeft,
                child: Text(place.creditNumber,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                alignment: Alignment.topLeft,
                child: Text(place.contactPerson,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 25),
                alignment: Alignment.center,
                child:  Text('Metode Pembayaran Zakat Maal',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return zakatPayment();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('images/bank.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return zakatPayment();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('images/ewallet.png'),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ),
      ),
    );
  }
}
