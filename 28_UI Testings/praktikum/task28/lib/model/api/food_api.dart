import 'package:dio/dio.dart';
import 'package:task28/model/food_model.dart';

class FoodAPI {
  Future<List<FoodModel>> getFood() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<FoodModel> foods = (response.data as List)
        .map(
          (e) => FoodModel(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();
    return foods;
  }
}