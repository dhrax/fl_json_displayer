import 'package:fl_json_displayer/widgets/block_widget.dart';
import 'package:flutter/material.dart';
import 'package:fl_json_displayer/data/document.dart';

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final (title, :modified) = document.metadata;
    final formattedDate = document.formatDate(modified);
    var blocks = document.getBlocks();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
            Text('Last modified $formattedDate'),
            Expanded(
              child: ListView.builder(
                itemCount: blocks.length,
                itemBuilder: (context, index){
                  return BlockWidget(block: blocks[index]);
                },
              )
            )
        ],
      ),
    );
  }
}