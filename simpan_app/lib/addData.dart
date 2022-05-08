import 'package:flutter/material.dart';
import 'theme.dart';

class data extends StatefulWidget {
  const data({ Key? key }) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4B0082),
        title: Center(child: Text('Add Data')),
        actions: [
          TextButton(
            onPressed: (){},
            child: Text(
              'Save',
              style: huruf5,
            )
          )
        ],
      ),

      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Name  :',
                        style: huruf3,
                      ),
                      //TextField()
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Total    :',
                        style: huruf3,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        'Price    :',
                        style: huruf3,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              height: 30,
              width: 30,
              //padding: EdgeInsets.only(left: 20, top: 6),
              margin: EdgeInsets.only(right: 280, left: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: huruf6,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 400,),
            Column(
              children: [
                Text(
                  'Recheck Your Data!\n@simpan',
                  style: huruf4,
                  textAlign: TextAlign.center,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}