import 'package:flutter/material.dart';

class foof extends StatefulWidget {
  const foof({ Key? key }) : super(key: key);

  @override
  State<foof> createState() => _foofState();
}

class _foofState extends State<foof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back)
            ),
            Text('salah halaman ler'),
          ],
        )
      ),
    );
  }
}