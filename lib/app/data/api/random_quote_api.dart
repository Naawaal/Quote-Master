import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quote_master/app/data/models/random_quote_model.dart';

import '../../controllers/03_random_quote_controller/random_quote_controller.dart';

class RandomQuoteApi {
  final apiBaseUrl = "https://api.quotable.io/";
  final apiEndPoint = "random";

  Future<RandomQuoteModel> getRandomQuoteApi() async {
    final randomQuoteController = Get.find<RandomQuoteController>();
    final url = Uri.parse(apiBaseUrl + apiEndPoint);

    final getRandomQuoteApiResponse = await http.get(url);

    if (getRandomQuoteApiResponse.statusCode == 200) {
      final jsonResponse = jsonDecode(getRandomQuoteApiResponse.body);
      final randomQuoteModel = RandomQuoteModel.fromJson(jsonResponse);

      randomQuoteController.randomQuoteApiContent.value =
          randomQuoteModel.content;

      randomQuoteController.randomQuoteApiTag.value = randomQuoteModel.tags[0];

      randomQuoteController.randomQuoteApiAuthor.value =
          randomQuoteModel.author;

      return randomQuoteModel;
    } else {
      throw Exception("Failed to load quotes");
    }
  }
}
