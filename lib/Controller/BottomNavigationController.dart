import 'package:get/get.dart';
import 'package:news_app/screens/ArticleScreen/article_screen.dart';
import 'package:news_app/screens/HomeScreen/home_screen.dart';
import 'package:news_app/screens/profile/profile_screen.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;

  var Pages = [
    HomeScreen(),
    ArticleScreen(),
    ProfileScreen(),
  ];
}
