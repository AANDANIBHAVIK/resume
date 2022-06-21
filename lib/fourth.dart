import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/Pdf.dart';
import 'package:resume/modelclass.dart';

class fourth extends StatefulWidget {
  const fourth({Key? key}) : super(key: key);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  @override
  Widget build(BuildContext context) {
    Modeldata m2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              setState(() {
                formate2(m2);
              });
            }, icon: Icon(Icons.picture_as_pdf))
          ],

          elevation: 0,
          backgroundColor: Colors.brown,
        ),
          body: SingleChildScrollView(
            child: Row(
              children: [

                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 5,right: 5),
                    height: 900,
                    width: 100,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,right: 5),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          Text("Education",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.course}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.uni}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Text("Skills",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.s1}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.s2}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.s3}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Text("Projects",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.pr1}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.pr2}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          Text("Referance",
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.black,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.ref}",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(11),
                      height: 900,
                      width: 150,
                      color: Colors.brown,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: FileImage(File(m2.img.toString())),
                              // backgroundImage: await FileImage(m2.img),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.name}",
                              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.mn}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.em}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${m2.add}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                          SizedBox(height:30,),

                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.white,
                          ),
                          Text("Experience",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),

                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 2,
                            width: double.infinity,
                            color: Colors.white,
                          ),

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(

                              "${m2.exp}",
                              style: TextStyle(fontSize: 17,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )),
    );
  }
}
