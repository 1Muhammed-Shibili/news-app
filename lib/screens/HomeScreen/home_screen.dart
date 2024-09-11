import 'package:flutter/material.dart';
import 'package:news_app/Components/navigationBar.dart';
import 'package:news_app/screens/HomeScreen/Widget/newstile.dart';
import 'package:news_app/screens/HomeScreen/Widget/trendingCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NEWSEEKERS',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: MyBottomNav(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  TrendingCard(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                    title:
                        'अब GPS से होगी टोल वसूली, नए नियम आज से:20 किमी तक फ्री, फिर जितनी यात्रा, उतना टोल; फास्टैग भी चलता रहेगा',
                    author: 'Nitesh Kumar',
                    tag: 'Trending no 1',
                    time: '2 Day ago',
                  ),
                  TrendingCard(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/11/untitled-design-84_1726040627.jpg",
                    title:
                        'रोहित ने वीडियो पोस्टकर लिखा- 99% वर्कआउट, 1% मस्ती:यूजर्स बोले- इन्फ्लुएंसर्स का करियर खत्म कर देंगे; 6 घंटे में 13 लाख लाइक',
                    author: 'Nitesh Kumar',
                    tag: 'Trending no 1',
                    time: '2 Day ago',
                  ),
                  TrendingCard(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/11/2024-09-11t120628183_1726036592.jpg",
                    title:
                        'सरकारी नौकरी:रेलवे में अप्रेंटिस के 3115 पदों पर निकली भर्ती, 24 सितंबर से होंगे आवेदन, 10वीं पास करें अप्लाई',
                    author: 'Nitesh Kumar',
                    tag: 'Trending no 1',
                    time: '3 घंटे पहले',
                  ),
                ]),
              ),
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
              const Column(
                children: [
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/360x0/web2images/521/2024/09/11/news51680241104_1726014604.jpg",
                    title:
                        'अब GPS से होगी टोल वसूली, नए नियम आज से:20 किमी तक फ्री, फिर जितनी यात्रा, उतना टोल; फास्टैग भी चलता रहेगा',
                    author: 'Nitesh Kumar',
                    time: '2 Day ago',
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/11/untitled-design-84_1726040627.jpg",
                    title:
                        'रोहित ने वीडियो पोस्टकर लिखा- 99% वर्कआउट, 1% मस्ती:यूजर्स बोले- इन्फ्लुएंसर्स का करियर खत्म कर देंगे; 6 घंटे में 13 लाख लाइक',
                    author: 'Nitesh Kumar',
                    time: '2 Day ago',
                  ),
                  NewsTile(
                    imageUrl:
                        "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/09/11/2024-09-11t120628183_1726036592.jpg",
                    title:
                        'सरकारी नौकरी:रेलवे में अप्रेंटिस के 3115 पदों पर निकली भर्ती, 24 सितंबर से होंगे आवेदन, 10वीं पास करें अप्लाई',
                    author: 'Nitesh Kumar',
                    time: '3 घंटे पहले',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
