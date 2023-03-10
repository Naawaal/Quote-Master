import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quote_master/app/controllers/04_unsplash_api_controller/unsplash_api_controller.dart';
import 'package:quote_master/app/data/models/unsplash_api_model.dart';

class UnsplashApi {
  final apiBaseUrl = "https://api.unsplash.com/";

  final apiEndPoint = "photos/random";

  final acessKey = "wlPRX-eVUsmv6uBEMPLXwtLrZgIIhQ1gHbmqIBCWudk";

  final unsplashApiController = Get.find<UnspalshApiController>();

  Future<UnsplashApiModel> unsplashApi() async {
    final url = Uri.parse(apiBaseUrl + apiEndPoint);
    final unsplashApiResponse = await http.get(
      url,
      headers: {
        "Accept-Version": "v1",
        "Authorization": "Client-ID $acessKey",
      },
    );

    if (unsplashApiResponse.statusCode == 200) {
      final unsplashJson = jsonDecode(unsplashApiResponse.body);
      final unsplashApiModel = UnsplashApiModel.fromJson(unsplashJson);
      unsplashApiController.full.value = unsplashApiModel.urls.full;
      return unsplashApiModel;
    } else {
      debugPrint("error: ${unsplashApiResponse.statusCode}");
      return UnsplashApiModel(
        altDescription: "",
        urls: Urls(
          raw: "",
          regular: "",
          small: "",
          smallS3: "",
          full: '',
          thumb: "",
        ),
      );
    }
  }
}
