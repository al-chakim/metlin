import 'package:flutter/material.dart';
import 'package:simpan/ui/theme.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({ Key? key }) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                  icon: Icon(
                    Icons.arrow_back
                  )
                ),
                //SizedBox(width: 1,),
                Text(
                  'Add Category',
                  style: huruf4,
                ),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Save',
                    style: huruf3,
                  )
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        'Name  : ',
                        style: huruf3,
                      ),
                      // Text(
                      //   'Cigarette',
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400
                      //   ),
                      // ),
                      Container(
                      height: 45,
                      width: 253,
                      //padding: EdgeInsets.only(left: 20, top: 6),
                      margin: EdgeInsets.only(
                          right: 20, left: 20, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Center(
                            child: TextField(
                              //autofocus: false,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                                border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: 'Name',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}