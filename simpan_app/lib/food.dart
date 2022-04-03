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
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(Icons.arrow_back)
                ),
                Text(
                  'Food',
                  style: huruf4,
                ),
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.more_vert)
                ),
              ],
            ),
            
          ]
        )
      ),
    );
  }
}