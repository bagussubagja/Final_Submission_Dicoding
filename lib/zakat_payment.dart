import 'package:e_zakat/payment_successful.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum banks{
  MandiriSyariah, BNISyariah , BRISyariah
}

class zakatPayment extends StatefulWidget {
  const zakatPayment({Key? key}) : super(key: key);

  @override
  _zakatPaymentState createState() => _zakatPaymentState();
}

class _zakatPaymentState extends State<zakatPayment> {
  String _account_number = '';
  String _nominal_zakat = '';
  banks? _bank = banks.MandiriSyariah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('E-Zakat'),
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
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                child: Image.asset('images/checkout.png',
                  height: 175,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
                child: Text('Pilihan Bank*',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Mandiri Syariah'),
                leading: Radio<banks>(
                  value: banks.MandiriSyariah,
                  groupValue: _bank,
                  onChanged: (banks? value){
                    setState(() {
                      _bank = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('BRI Syariah'),
                leading: Radio<banks>(
                  value: banks.BRISyariah,
                  groupValue: _bank,
                  onChanged: (banks? value){
                    setState(() {
                      _bank = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('BNI Syariah'),
                leading: Radio<banks>(
                  value: banks.BNISyariah,
                  groupValue: _bank,
                  onChanged: (banks? value){
                    setState(() {
                      _bank = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text('Nomor Rekening Amil Zakat*',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '123xxxxxxx',
                  ),
                  onChanged: (String value){
                    setState(() {
                      _account_number = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text('Nominal Zakat*',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '(dalam Rupiah)',
                  ),
                  onChanged: (String value){
                    setState(() {
                      _nominal_zakat = value;
                    });
                  },
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return paymentSuccessful();
                  }));
                },
                child: Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Image.asset('images/payment_confirmation.png'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
