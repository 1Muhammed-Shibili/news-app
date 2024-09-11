import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;

  const NewsTile(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.background,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(width: 10),
                    Text('$author')
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'सरकारी नौकरी:रेलवे में अप्रेंटिस के 3115 पदों पर निकली भर्ती, 24 सितंबर से होंगे आवेदन, 10वीं पास करें अप्लाई',
                  maxLines: 2,
                ),
                SizedBox(height: 15),
                Text(
                  '$time',
                  style: Theme.of(context).textTheme.labelSmall,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
