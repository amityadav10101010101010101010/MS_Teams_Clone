import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:firebase_ml_vision/firebase_ml_vision.dart';

void main() => runApp(OCR2MyApp());

class OCR2MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? pickedImage;
  final picker = ImagePicker();
  File file = File('');
  bool isImageLoaded = false;
  String ocrText = '';

  Future pickImage() async {
    setState(() async {
      var pickedImage = await picker.getImage(source: ImageSource.gallery);
      //   var tempStore = await ImagePicker.pickImage(source: ImageSource.gallery);

      file = File(pickedImage!.path);

      isImageLoaded = true;
    });
  }

  Future readText() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(file);
    TextRecognizer recognizeText = FirebaseVision.instance.textRecognizer();
    VisionText readText = await recognizeText.processImage(ourImage);
    String temp = ocrText;
    for (TextBlock block in readText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement word in line.elements) {
          print("word.text");
          print(word.text);
                    print("word.toString(");
          print(word.toString());
          temp = temp + word.text;
          word.toString();
        }
      }
    }
    setState(() {
      ocrText = temp;
    });
    // print(ocrText);
  }

  Future decode() async {
    FirebaseVisionImage ourImage = FirebaseVisionImage.fromFile(file);
    BarcodeDetector barcodeDetector = FirebaseVision.instance.barcodeDetector();
    List barCodes = await barcodeDetector.detectInImage(ourImage);

    for (Barcode readableCode in barCodes) {
      print(readableCode.displayValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(height: 100.0),
        isImageLoaded
            ? Center(
                child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(file), fit: BoxFit.cover))),
              )
            : Container(),
        SizedBox(height: 10.0),
        ElevatedButton(
          child: Text('Pick an image'),
          onPressed: pickImage,
        ),
        SizedBox(height: 10.0),
        RaisedButton(
          child: Text('Read Text'),
          onPressed: readText,
        ),
        
        Container(
          child: Text(
            ocrText == "" ? "Text" : ocrText,
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    ));
  }
}
