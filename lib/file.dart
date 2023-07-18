import 'dart:io';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';




class ExcelFile extends StatefulWidget {
  const ExcelFile({Key? key}) : super(key: key);

  @override
  State<ExcelFile> createState() => _ExcelFileState();
}

class _ExcelFileState extends State<ExcelFile> {


  TextEditingController header1 = TextEditingController();
  TextEditingController header2 = TextEditingController();
  TextEditingController header3 = TextEditingController();
  TextEditingController header4 = TextEditingController();
  TextEditingController header5 = TextEditingController();

  @override
  void initState() {
    header1.text = "Product Name";
    header2.text="Quantity";
    header3.text="Price";
    header4.text="Total";
    super.initState();
  }

  TextEditingController edit_controller = TextEditingController();
  TextEditingController edit_controller2 = TextEditingController();
  TextEditingController edit_controller3 = TextEditingController();
  TextEditingController edit_controller4 = TextEditingController();
  TextEditingController edit_controller5 = TextEditingController();

  void performAddition() {
    double value1 = double.tryParse(edit_controller2.text) ?? 0.0;
    double value2 = double.tryParse(edit_controller3.text) ?? 0.0;
    double value11 = double.tryParse(edit_controller22.text) ?? 0.0;
    double value22 = double.tryParse(edit_controller33.text) ?? 0.0;
    double value111 = double.tryParse(edit_controller222.text) ?? 0.0;
    double value222 = double.tryParse(edit_controller333.text) ?? 0.0;
    double value1111 = double.tryParse(edit_controller2222.text) ?? 0.0;
    double value2222 = double.tryParse(edit_controller3333.text) ?? 0.0;
    double value11111 = double.tryParse(edit_controller22222.text) ?? 0.0;
    double value22222 = double.tryParse(edit_controller33333.text) ?? 0.0;

    if((edit_controller2.text.isNotEmpty)&&(edit_controller3.text.isNotEmpty)){
      double sum = value1 * value2;
      edit_controller4.text = sum.toString();
    }
    else{
      edit_controller4.text = " ";
    }
    if((edit_controller22.text.isNotEmpty)&&(edit_controller33.text.isNotEmpty)){
      double sum = value11 * value22;
      edit_controller44.text = sum.toString();
    }
    else{
      edit_controller44.text = " ";
    }
    if((edit_controller222.text.isNotEmpty)&&(edit_controller333.text.isNotEmpty)){
      double sum = value111 * value222;
      edit_controller444.text = sum.toString();
    }
    else{
      edit_controller444.text = " ";
    }
    if((edit_controller2222.text.isNotEmpty)&&(edit_controller3333.text.isNotEmpty)){
      double sum = value1111 * value2222;
      edit_controller4444.text = sum.toString();
    }
    else{
      edit_controller4444.text = " ";
    }
    if((edit_controller22222.text.isNotEmpty)&&(edit_controller33333.text.isNotEmpty)){
      double sum = value11111 * value22222;
      edit_controller44444.text = sum.toString();
    }
    else{
      edit_controller44444.text = " ";
    }

  }
  TextEditingController edit_controller11 = TextEditingController();
  TextEditingController edit_controller22 = TextEditingController();
  TextEditingController edit_controller33 = TextEditingController();
  TextEditingController edit_controller44 = TextEditingController();
  TextEditingController edit_controller55 = TextEditingController();

  TextEditingController edit_controller111 = TextEditingController();
  TextEditingController edit_controller222 = TextEditingController();
  TextEditingController edit_controller333 = TextEditingController();
  TextEditingController edit_controller444 = TextEditingController();
  TextEditingController edit_controller555 = TextEditingController();

  TextEditingController edit_controller1111 = TextEditingController();
  TextEditingController edit_controller2222 = TextEditingController();
  TextEditingController edit_controller3333 = TextEditingController();
  TextEditingController edit_controller4444 = TextEditingController();
  TextEditingController edit_controller5555 = TextEditingController();

  TextEditingController edit_controller11111 = TextEditingController();
  TextEditingController edit_controller22222 = TextEditingController();
  TextEditingController edit_controller33333 = TextEditingController();
  TextEditingController edit_controller44444 = TextEditingController();
  TextEditingController edit_controller55555 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        title: Text('Riad SoftTech'),
        centerTitle: true,
        actions: [IconButton(
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles();
              List<String>? filePath = result?.files
                  .map((filePath) => filePath.path)
                  .cast<String>()
                  .toList();
              if (filePath == null) {
                return;
              }

              await Share.shareFiles(filePath);
            },
            icon: Icon(Icons.share,color: Colors.indigo,))],
      ),
      body: Column(
        children: [
          Container(
            height: 350,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 52,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          padding: EdgeInsets.all(6),
                          height: 50,
                          width: 155,
                          color: Colors.deepOrange[100],
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(fontSize: 17),
                            controller: header1,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.deepOrange[100],
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(fontSize: 18),
                            controller: header2,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.deepOrange[100],
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(fontSize: 18),
                            controller: header3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.deepOrange[100],
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(fontSize: 18),
                            controller: header4,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.deepOrange[100],
                          child: TextField(
                            readOnly: true,
                            style: TextStyle(fontSize: 18),
                            controller: header5,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      //header end here
                    ],
                  ),
                ),

                //main start here
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.deepOrange[100],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller2,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller3,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller4,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller5,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.deepOrange[200],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller11,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller22,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller33,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller44,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller55,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.deepOrange[200],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller111,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller222,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller333,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller444,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller555,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),


                    ],
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.deepOrange[200],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller1111,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller2222,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller3333,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller4444,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller5555,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),


                    ],
                  ),
                ),

                Container(
                  height: 60,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.deepOrange[200],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller11111,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller22222,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller33333,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[200],
                          child: TextField(
                            controller: edit_controller44444,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 150,
                          padding: EdgeInsets.all(6),
                          color: Colors.green[100],
                          child: TextField(
                            controller: edit_controller55555,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Text',
                              hintText: 'Enter text',
                            ),
                          )
                      ),


                    ],
                  ),
                ),

                //main end here

                //this is button

              ],
            ),
          ),
          Container(
            height: 60,
            width: 300,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    child: Text(" Save "),
                    onPressed:
                    createAndOpenFolder,
                    //  Fluttertoast.showToast(msg: "Data Save Successfully!");
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    child: Text(" Total Amount "),
                    onPressed: () {
                      performAddition();
                    },
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }


  void createAndOpenFolder() async {
    if (await Permission.storage.request().isGranted) {
      final folderPath = '/storage/emulated/0/A Folder';
      // Create the folder if it doesn't exist
      final folder = Directory(folderPath);
      if (!(await folder.exists())) {
        await folder.create(recursive: true);
      }
      var excel = Excel.createExcel();
      // Create a sheet
      Sheet sheetObject = excel['Sheet1'];
      //Add Company name
      sheetObject.appendRow(['                          Riad SoftTech ']);
      sheetObject.appendRow(['                        Jalil Tower,khulna ']);
      sheetObject.appendRow(['                     riadrayhan.cse@gmail.com ']);
      sheetObject.appendRow(['                            01610-473706    ']);
      sheetObject.appendRow(['      ']);
      // Add headers
      sheetObject.appendRow([header1.text, header2.text, header3.text, header4.text, header5.text]);
      // Add data rows
      sheetObject.appendRow([edit_controller.text, edit_controller2.text,edit_controller3.text,edit_controller4.text, edit_controller5.text]);

      sheetObject.appendRow([edit_controller11.text, edit_controller22.text,edit_controller33.text,edit_controller44.text, edit_controller55.text]);

      sheetObject.appendRow([edit_controller111.text, edit_controller222.text,edit_controller333.text,edit_controller444.text, edit_controller555.text]);

      sheetObject.appendRow([edit_controller1111.text, edit_controller2222.text,edit_controller3333.text,edit_controller4444.text, edit_controller5555.text]);

      sheetObject.appendRow([edit_controller11111.text, edit_controller22222.text,edit_controller33333.text,edit_controller44444.text, edit_controller55555.text]);

      sheetObject.appendRow([]);

      // Save the workbook
      // var directory = await getExternalStorageDirectory();
      final filePath = '$folderPath/product.xlsx';
      File(filePath).writeAsBytesSync(excel.encode()!);

      Fluttertoast.showToast(
          msg: "File Path is: $filePath",
          fontSize: 15,
          backgroundColor: Colors.indigo[200],
          gravity: ToastGravity.BOTTOM,
          textColor: Colors.black,
          toastLength: Toast.LENGTH_LONG
      );
    }
  }
}

