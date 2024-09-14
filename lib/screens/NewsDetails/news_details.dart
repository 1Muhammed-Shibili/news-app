import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/Controller/news_controller.dart';
import 'package:news_app/Model/news_model.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;

  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new),
                            Text('Back'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            news.urlToImage ??
                                'https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  news.title!,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "${news.author} * ${news.publishedAt}",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(
                        news.author![0],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Text(
                        news.author!,
                        style: TextStyle(
                          fontSize: 18,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => newsController.isSpeaking.value
                            ? IconButton(
                                onPressed: () {
                                  newsController.stop();
                                },
                                icon: Icon(Icons.stop),
                                iconSize: 50,
                              )
                            : IconButton(
                                onPressed: () {
                                  newsController.speak(
                                      news.description ?? "No Description");
                                },
                                icon: Icon(Icons.play_arrow_rounded),
                                iconSize: 50,
                              ),
                      ),
                      Expanded(
                          child: Obx(
                        () => Lottie.asset(
                          'assets/animation/Animation - 1726295808947.json',
                          height: 70,
                          animate: newsController.isSpeaking.value,
                        ),
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        news.description ?? "No Description",
                        style: TextStyle(
                          fontSize: 18,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
