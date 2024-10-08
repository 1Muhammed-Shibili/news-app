import 'package:flutter/material.dart';
import 'package:news_app/Components/loading_container.dart';

class NewsTileLoading extends StatelessWidget {
  const NewsTileLoading({super.key});

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
          LoadingContainer(width: 120, height: 120),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoadingContainer(
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    LoadingContainer(
                        width: MediaQuery.of(context).size.width / 2.3,
                        height: 20),
                  ],
                ),
                SizedBox(height: 15),
                LoadingContainer(
                    width: MediaQuery.of(context).size.width / 1.6, height: 15),
                SizedBox(height: 15),
                LoadingContainer(
                    width: MediaQuery.of(context).size.width / 1.8, height: 15),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LoadingContainer(
                        width: MediaQuery.of(context).size.width / 5,
                        height: 15),
                    LoadingContainer(
                        width: MediaQuery.of(context).size.width / 5,
                        height: 15),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
