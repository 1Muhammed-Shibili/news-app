import 'package:flutter/material.dart';
import 'package:news_app/Components/loading_container.dart';

class TrendingLoadingcard extends StatelessWidget {
  const TrendingLoadingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      width: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primaryContainer),
      child: Column(
        children: [
          LoadingContainer(
            height: 200,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoadingContainer(
                height: 10,
                width: MediaQuery.of(context).size.width / 4,
              ),
              LoadingContainer(
                height: 10,
                width: MediaQuery.of(context).size.width / 5,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoadingContainer(
                height: 20,
                width: MediaQuery.of(context).size.width / 1.6,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoadingContainer(
                height: 20,
                width: MediaQuery.of(context).size.width / 2 - 0.2,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              LoadingContainer(
                height: 30,
                width: 30,
              ),
              SizedBox(width: 10),
              LoadingContainer(
                height: 20,
                width: MediaQuery.of(context).size.width / 2,
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
