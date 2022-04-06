import 'package:flutter/material.dart';
import 'package:simpan_app/theme.dart';

class foof extends StatefulWidget {
  const foof({ Key? key }) : super(key: key);

  @override
  State<foof> createState() => _foofState();
}

class _foofState extends State<foof> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff4B0082),
        title: Center(
          child: Text('Food')
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.edit)
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.push(
          //   context, MaterialPageRoute(
          //     builder: (context) => nama class halaman()
          //   )
          // );
        },
        backgroundColor: Color(0xff4B0082),
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     IconButton(
            //       onPressed: (){
            //         Navigator.pop(context);
            //       }, 
            //       icon: Icon(Icons.arrow_back)
            //     ),
            //     Text(
            //       'Food',
            //       style: huruf4,
            //     ),
            //     IconButton(
            //       onPressed: (){}, 
            //       icon: Icon(Icons.more_vert)
            //     ),
            //   ],
            // ),
            Container(
              // width: 400,
              // height: 55,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 15,
                bottom: 5
              ),
              padding: EdgeInsets.only(
                left: 20, 
                right: 20,
                top: 15,
                bottom: 15
              ),
              decoration: BoxDecoration(
                color: Color(0xff4B0082),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'id',
                        style: huruf5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: huruf5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: huruf5,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Price',
                        style: huruf5,
                      ),
                    ],
                  ),
                ],
              )
              
            ),
          ]
        )
      ),
    );
  }
}