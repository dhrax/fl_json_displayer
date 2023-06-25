import 'package:flutter/material.dart';
import 'package:fl_json_displayer/screens/document_screen.dart';
import 'package:fl_json_displayer/data/document.dart';

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(
        document: Document(),
      ),
    );
  }
}