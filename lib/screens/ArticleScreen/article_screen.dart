import 'package:flutter/material.dart';
import 'package:news_app/screens/ArticleScreen/widgets/search_widget.dart';
import 'package:news_app/screens/HomeScreen/Widget/newstile.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              SearchWidget(),
              SizedBox(height: 20),
              Column(
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
                  ),
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
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
