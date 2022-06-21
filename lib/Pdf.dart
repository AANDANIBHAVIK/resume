import 'dart:io';


import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/modelclass.dart';

void formate1(Modeldata m1)async {
  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context) {
          return pw.Row(
            children: [
              pw.Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    padding: pw.EdgeInsets.all(11),
                    height: 900,
                    width: 150,
                    color: PdfColors.blue,
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                            // backgroundImage: FileImage(m1.img),




                        ),
                        pw.SizedBox(height: 5,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.name}",
                            style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.mn}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.em}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.add}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height:30,),

                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Experience",
                          style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.exp}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              pw.Expanded(
                child: pw.Container(
                  padding: pw.EdgeInsets.only(left: 5,right: 5),
                  height: 900,
                  width: 100,
                  color: PdfColors.white,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 5,right: 5),
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Education",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.course}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.uni}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Skills",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.s3}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Projects",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.pr1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.pr2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw. SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Referance",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.ref}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )

            ],
          );
        }
    ),
  );
  Directory dir = await getApplicationSupportDirectory();

  File f1 = File("$dir/formate1.pdf");

  print("=====>${f1.path}");
  f1.writeAsBytes(await pdf.save());
}

void formate2(Modeldata m1)async {
  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context) {
          return pw.Row(
            children: [

              pw.Expanded(
                child: pw.Container(
                  padding: pw.EdgeInsets.only(left: 5,right: 5),
                  height: 900,
                  width: 100,
                  color: PdfColors.white,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 5,right: 5),
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Education",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.course}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.uni}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Skills",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.s2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.s3}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Text("Projects",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.pr1}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw. SizedBox(height: 5,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.pr2}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                        pw.SizedBox(height: 30,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Text("Referance",
                          style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.black,
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.ref}",
                            style: pw.TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              pw.Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  pw.Container(
                    padding: pw.EdgeInsets.all(11),
                    height: 900,
                    width: 150,
                    color: PdfColors.brown,
                    child: pw.Column(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                          // backgroundImage: FileImage(m1.img),




                        ),
                        pw.SizedBox(height: 5,),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.white,
                        ),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.name}",
                            style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.mn}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.em}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height: 20,),
                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(
                            "${m1.add}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                        pw.SizedBox(height:30,),

                        pw.Container(
                          margin:pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.white,
                        ),
                        pw.Text("Experience",
                          style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.white),

                        ),
                        pw.Container(
                          margin: pw.EdgeInsets.all(10),
                          height: 2,
                          width: double.infinity,
                          color: PdfColors.white,
                        ),

                        pw.Align(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Text(

                            "${m1.exp}",
                            style: pw.TextStyle(fontSize: 17,color: PdfColors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          );
        }
    ),
  );
  Directory dir = await getApplicationSupportDirectory();

  File f1 = File("$dir/formate2.pdf");

  print("=====>${f1.path}");
  f1.writeAsBytes(await pdf.save());
}
void formate3(Modeldata m1)async {
  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
        margin: pw.EdgeInsets.all(10),
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        build: (pw.Context context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.only(left: 12,right: 12,bottom: 12),
            child: pw.Column(
              children: [
                pw.Container(
                  height: 150,
                  width: double.infinity,
                  color: PdfColors.grey,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.all(10.0),
                    child: pw.Row(
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(top: 10),
                          height: 100,
                          width: 100,
                          child: pw.Container(
                            margin: pw.EdgeInsets.only(top: 10),
                            height: 100,
                            width: 100,
                            // backgroundColor: PdfColors.white,
                            // backgroundImage: pw.FileImage(File(m1.img.toString())),
                          ),
                        ),

                        pw.SizedBox(width: 20,),
                        pw.Column(
                          children: [
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.name}",style: pw.TextStyle(fontWeight: pw.FontWeight.bold,fontSize: 25),),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.mn}"),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.em}"),
                            pw.SizedBox(height: 10,),
                            pw.Text("${m1.add}")
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
                // Text("${m1.about}",style: TextStyle(fontSize: 16),),
                // SizedBox(height: 40,),


                //Skills
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Skills",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(
                  alignment: pw.Alignment.topLeft,
                  child: pw.Text("${m1.s1}\n${m1.s2}\n${m1.s3}",style: pw.TextStyle(fontSize: 16),),),
                pw.SizedBox(height: 40,),


                //projects
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Projects",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(
                  alignment: pw.Alignment.topLeft,
                  child: pw.Text("${m1.pr1}\n\n${m1.pr2}",style: pw.TextStyle(fontSize: 16),),
                ),
                pw.SizedBox(height: 40,),


                //Education
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Education",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container(
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Align(alignment: pw.Alignment.topLeft,child: pw.Text("${m1.course}",style: pw.TextStyle(fontSize: 16),)),
                pw.SizedBox(height: 5,),
                pw.Align(alignment: pw.Alignment.topLeft,child: pw.Text("${m1.uni}",style: pw.TextStyle(fontSize: 16),)),
                pw.SizedBox(height: 20,),
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Referance",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container (
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Text("${m1.ref}",style: pw.TextStyle(fontSize: 16),),
                pw.SizedBox(height: 40,),
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child: pw.Text("Experience",style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold),)),
                pw.Container (
                  height: 2,
                  width: double.infinity,
                  color: PdfColors.black,
                ),
                pw.SizedBox(height: 10,),
                pw.Text("${m1.exp}",style: pw.TextStyle(fontSize: 16),),
                pw.SizedBox(height: 40,),
              ],
            ),
          );
        }
    ),
  );
  Directory dir = await getApplicationSupportDirectory();

  File f1 = File("$dir/formate3.pdf");

  print("=====>${f1.path}");
  f1.writeAsBytes(await pdf.save());
}