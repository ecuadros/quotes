import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

const Color mainColor = Colors.green;

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
      Quote(text: 'This is my first text',
            author: 'William'),
      Quote(text: 'In this line I am writing a very long text about the strike',
            author: 'Gabriel'),
      Quote(text: 'Agora tenho um outro texto super longo nesta linha de teste',
            author: 'Ernesto'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: const Text('Awesome title'),
        centerTitle: true,
        backgroundColor: mainColor,
      ),
      body: Column(
        children: quotes.map( (quote) => Text('${quote.author} - ${quote.text}') ).toList(),
      ),
    );
  }
}
