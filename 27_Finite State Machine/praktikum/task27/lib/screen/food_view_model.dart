import 'package:flutter/cupertino.dart';
import 'package:task27/model/api/food_api.dart';
import 'package:task27/model/food_model.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<FoodModel> _foods = [];
  List<FoodModel> get foods => _foods;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFood() async {
    changeState(FoodViewState.loading);
    try {
      final foods = await FoodAPI().getFood();
      _foods = foods;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}