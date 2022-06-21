import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/modelclass.dart';

import 'Pdf.dart';

class five extends StatefulWidget {
  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  @override
  Widget build(BuildContext context) {
    Modeldata m2 = ModalRoute.of(context)!.settings.arguments as Modeldata;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              setState(() {
                formate3(m2);
              });
            }, icon: Icon(Icons.picture_as_pdf))
          ],
          elevation: 0,
          backgroundColor: Colors.grey.shade400,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey.shade400,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: FileImage(File(m2.img.toString())),
                          ),
                        ),

                        SizedBox(width: 30,),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Text("${m2.name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            SizedBox(height: 10,),
                            Text("${m2.mn}"),
                            SizedBox(height: 10,),
                            Text("${m2.em}"),
                            SizedBox(height: 10,),
                            Text("${m2.add}")
                          ],
                        )
                      ],
                    ),
                  ),
                ),


                // SizedBox(height: 20,),
                // Container(
                //     alignment: Alignment.topLeft,
                //     child: Text("About",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                // Container (
                //   height: 2,
                //   width: double.infinity,
                //   color: Colors.black,
                // ),
                // SizedBox(height: 10,),
                // Text("${m2.about}",style: TextStyle(fontSize: 16),),
                // SizedBox(height: 40,),


                //Skills
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Skills",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("${m2.s1}\n${m2.s2}\n${m2.s3}",style: TextStyle(fontSize: 16),),),
                SizedBox(height: 40,),


                //projects
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Projects",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("${m2.pr1}\n\n${m2.pr2}",style: TextStyle(fontSize: 16),),
                ),
                SizedBox(height: 40,),


                //Education
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Education",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.topLeft,child: Text("${m2.course}",style: TextStyle(fontSize: 16),)),
                SizedBox(height: 5,),
                Align(alignment: Alignment.topLeft,child: Text("${m2.uni}",style: TextStyle(fontSize: 16),)),
                SizedBox(height: 20,),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Referance",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container (
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Text("${m2.ref}",style: TextStyle(fontSize: 16),),
                SizedBox(height: 40,),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Experience",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                Container (
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                SizedBox(height: 10,),
                Text("${m2.exp}",style: TextStyle(fontSize: 16),),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }

}