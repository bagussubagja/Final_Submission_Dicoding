import 'package:e_zakat/mosque_detail.dart';
import 'package:flutter/material.dart';
import 'package:e_zakat/mosque_place.dart';
import 'package:e_zakat/mosque_detail.dart';

class mosqueList extends StatelessWidget {
  const mosqueList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text('E-Zakat'),
      ),
      body: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(left: 0),
              child: Text('List Amil Zakat Terdekat :',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Flexible(child:
            Padding(padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index)
                {
                  final MosquePlace place = mosquePlaceList[index];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return mosqueDetail(place: place);
                      }));
                    },
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Image.asset(place.imageAsset),
                          ),
                          Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(place.name,
                                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 8),
                                Text(place.address),
                                Text('Jarak dari lokasi anda : ${place.distance}'),
                              ],
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: mosquePlaceList.length,
              ),
            ),
            ),
          ],
        ),
    );
  }
}
