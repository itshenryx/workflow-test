import 'package:flutter/material.dart';

class QuoteBox extends StatelessWidget {
  QuoteBox({super.key, required this.data, required this.deleteFunction});

  final String data;
  final Function deleteFunction;

  @override
  Widget build(BuildContext context) {

    return Card(
        child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(data, style: const TextStyle(
                    fontSize: 16,
                  )),
                ),
                IconButton(
                  onPressed: () => deleteFunction(data),
                  icon: const Icon(Icons.delete),
                ),
              ],
          ),
       )
    );
  }
}
