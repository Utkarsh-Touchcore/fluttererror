import 'package:flutter/material.dart';
import 'package:quotes/Quote.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote,required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            SizedBox(height: 6.0,),
           ElevatedButton(
             onPressed: delete()  , child: Text(
              'Delete Quote'
            ),

            )


          ],
        ),
      ),
    );
  }
}