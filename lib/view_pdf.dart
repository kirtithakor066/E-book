import 'package:ebook/read_book.dart';
import 'package:ebook/uploadpdf.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class ViewBook extends StatefulWidget {

  const ViewBook({Key? key}) : super(key: key);

  @override
  State<ViewBook> createState() => _ViewBookState();


}

class _ViewBookState extends State<ViewBook> {

  static Future<File?> loadFirebase(String url) async {
    try {
      final refPDF = FirebaseStorage.instance.ref().child(url);
      final bytes = await refPDF.getData();

      return _storeFile(url, bytes as List<int>);
    } catch (e) {
      return null;
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();

    final file = File('${dir.path}/$filename');
    await file.writeAsBytes(bytes, flush: true);
    return file;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Read Book'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Container(
          child: Center(
                child: Column(
                  children: [
                    ButtonWidget(
                      text: 'Read Book',
                      icon: Icons.attach_file,
                      onClicked: () async {
                        final url = 'sample2.pdf';
                        final file = await loadFirebase(url);
                        if(file == null)return;
                        openPDF(context, file);
                      }
                    ),
                  ],
                ),

          ),
        ),
      ),
    );
  }
  void openPDF(BuildContext context, file) => Navigator.of(context).push(
  MaterialPageRoute(builder: (context) => PDFViewerPage( file: file,)),
 );
}
