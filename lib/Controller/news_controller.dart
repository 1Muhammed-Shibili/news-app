import 'dart:convert';
import 'dart:ffi';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/Model/news_model.dart';

class NewsController extends GetxController {
  RxList<NewsModel> trendingNewsList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYouList = <NewsModel>[].obs;
  RxList<NewsModel> newsForYou5 = <NewsModel>[].obs;
  RxList<NewsModel> appleNewsList = <NewsModel>[].obs;
  RxList<NewsModel> apple5News = <NewsModel>[].obs;
  RxList<NewsModel> teslaNewsList = <NewsModel>[].obs;
  RxList<NewsModel> tesla5News = <NewsModel>[].obs;
  RxList<NewsModel> businessNewsList = <NewsModel>[].obs;
  RxList<NewsModel> business5News = <NewsModel>[].obs;
  RxBool isTrendingLoading = false.obs;
  RxBool isNewsForULoading = false.obs;
  RxBool isTeslaLoading = false.obs;
  RxBool isAppleLoading = false.obs;
  RxBool isBusiLoading = false.obs;
  RxBool isSpeaking = false.obs;
  FlutterTts flutterTts = FlutterTts();

  void onInit() async {
    super.onInit();
    getTrendingNews();
    getNewsForYou();
    getAppleNews();
    getTeslaNews();
    getbusinessNews();
  }

  Future<void> getTrendingNews() async {
    isTrendingLoading.value = true;

    var baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          trendingNewsList.add(NewsModel.fromJson(news));
        }
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isTrendingLoading.value = false;
  }

  Future<void> getNewsForYou() async {
    isNewsForULoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          newsForYouList.add(NewsModel.fromJson(news));
        }
        newsForYou5 = newsForYouList.sublist(0, 3).obs;
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isNewsForULoading.value = false;
  }

  Future<void> getAppleNews() async {
    isAppleLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2024-09-11&to=2024-09-11&sortBy=popularity&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          appleNewsList.add(NewsModel.fromJson(news));
        }
        apple5News = appleNewsList.sublist(0, 3).obs;
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isAppleLoading.value = false;
  }

  Future<void> getTeslaNews() async {
    isTeslaLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2024-08-14&sortBy=publishedAt&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          teslaNewsList.add(NewsModel.fromJson(news));
        }
        tesla5News = teslaNewsList.sublist(0, 5).obs;
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isTeslaLoading.value = false;
  }

  Future<void> getbusinessNews() async {
    isBusiLoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        for (var news in articles) {
          businessNewsList.add(NewsModel.fromJson(news));
        }
        business5News = businessNewsList.sublist(0, 3).obs;
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isBusiLoading.value = false;
  }

  Future<void> searchNews(String search) async {
    isNewsForULoading.value = true;
    var baseURL =
        "https://newsapi.org/v2/everything?q=$search&apiKey=931ec6026c2c45a7b090d94a22f4b274";
    try {
      var response = await http.get(Uri.parse(baseURL));
      print(response);
      if (response.statusCode == 200) {
        print(response.body);
        var body = jsonDecode(response.body);
        var articles = body["articles"];
        newsForYouList.clear();
        int i = 0;
        for (var news in articles) {
          i++;
          newsForYouList.add(NewsModel.fromJson(news));
          if (i == 10) {
            break;
          }
        }
      } else {
        print('Something went wrong on trending News');
      }
    } catch (ex) {
      print(ex);
    }
    isNewsForULoading.value = false;
  }

  Future<void> speak(String text) async {
    isSpeaking.value = true;
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
    isSpeaking.value = false;
  }

  void stop() async {
    await flutterTts.stop();
    isSpeaking.value = false;
  }
}
