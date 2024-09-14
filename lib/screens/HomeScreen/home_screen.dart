import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/newstile_loading.dart';
import 'package:news_app/Components/trending_loading_card.dart';
import 'package:news_app/Controller/news_controller.dart';
import 'package:news_app/screens/HomeScreen/Widget/newstile.dart';
import 'package:news_app/screens/HomeScreen/Widget/trendingCard.dart';
import 'package:news_app/screens/NewsDetails/news_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.dashboard),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  const Text(
                    'NEWS APP',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      newsController.getNewsForYou();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.person),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hottest News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => newsController.isTrendingLoading.value
                        ? Row(
                            children: [
                              TrendingLoadingcard(),
                              TrendingLoadingcard(),
                            ],
                          )
                        : Row(
                            children: newsController.trendingNewsList
                                .map(
                                  (e) => TrendingCard(
                                    ontap: () {
                                      Get.to(
                                        NewsDetailsPage(
                                          news: e,
                                        ),
                                      );
                                    },
                                    imageUrl: e.urlToImage!,
                                    title: e.title!,
                                    author: e.author ?? 'Unknown',
                                    tag: 'Trending no 1',
                                    time: e.publishedAt!,
                                  ),
                                )
                                .toList()),
                  )),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'News for you',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isNewsForULoading.value
                    ? Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYou5
                            .map(
                              (e) => NewsTile(
                                ontap: () => Get.to(NewsDetailsPage(
                                  news: e,
                                )),
                                imageUrl: e.urlToImage ??
                                    "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                                title: e.title!,
                                author: e.author ?? 'Unknwon',
                                time: e.publishedAt!,
                              ),
                            )
                            .toList()),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tesla News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Obx(
                () => newsController.isTeslaLoading.value
                    ? Column(
                        children: [
                          NewsTileLoading(),
                          NewsTileLoading(),
                          NewsTileLoading(),
                        ],
                      )
                    : Column(
                        children: newsController.tesla5News
                            .map(
                              (e) => NewsTile(
                                ontap: () => Get.to(NewsDetailsPage(
                                  news: e,
                                )),
                                imageUrl: e.urlToImage ??
                                    "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                                title: e.title!,
                                author: e.author ?? 'Unknwon',
                                time: e.publishedAt!,
                              ),
                            )
                            .toList()),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Business News',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    'See All',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => newsController.isBusiLoading.value
                        ? Row(
                            children: [
                              TrendingLoadingcard(),
                              TrendingLoadingcard(),
                            ],
                          )
                        : Row(
                            children: newsController.business5News
                                .map(
                                  (e) => TrendingCard(
                                    ontap: () {
                                      Get.to(
                                        NewsDetailsPage(
                                          news: e,
                                        ),
                                      );
                                    },
                                    imageUrl: e.urlToImage ??
                                        "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                                    title: e.title!,
                                    author: e.author ?? 'Unknown',
                                    tag: 'Trending no 1',
                                    time: e.publishedAt!,
                                  ),
                                )
                                .toList()),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
