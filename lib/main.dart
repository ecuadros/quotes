import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
import 'config.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
      Quote(text: 'This is my first text abc',
            author: 'William'),
      Quote(text: 'In this line I am writing a very long text about the strike',
            author: 'Gabriel'),
      Quote(text: 'Agora tenho um outro texto super longo nesta linha de teste',
            author: 'Ernesto'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.mainColor,
      appBar: AppBar(
        title: const Text('Awesome title'),
        centerTitle: true,
        backgroundColor: Config.mainColor,
      ),
      body: Column(
        children: quotes.map( (quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        ) ).toList(),
      ),
      // FloatingActionButton(
      //   onPressed: () { },
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.navigation),
      // ),
    );
  }
}


