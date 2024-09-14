import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/news_controller.dart';
import 'package:news_app/screens/ArticleScreen/widgets/search_widget.dart';
import 'package:news_app/screens/HomeScreen/Widget/newstile.dart';
import 'package:news_app/screens/NewsDetails/news_details.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              SearchWidget(),
              SizedBox(height: 20),
              Obx(
                () => Column(
                    children: newsController.newsForYouList
                        .map(
                          (e) => NewsTile(
                            ontap: () {
                              Get.to(NewsDetailsPage(news: e));
                            },
                            imageUrl: e.urlToImage ??
                                "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                            title: e.title!,
                            author: e.author ?? "Unknown",
                            time: e.publishedAt!,
                          ),
                        )
                        .toList()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
