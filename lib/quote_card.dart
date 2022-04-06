import 'package:flutter/material.dart';
import 'quote.dart';
import 'config.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  // final Function delete;
  final VoidCallback delete;
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Config.cardColor,
                  )
              ),
              const SizedBox(height: 6),
              Text(quote.author,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  )
              ),
              SizedBox(height: 8.0),
              TextButton.icon(
                onPressed: delete,
                label: Text('Delete card'),
                icon: const Icon(Icons.delete),
              )
            ],
          ),
        )
    );
  }
}