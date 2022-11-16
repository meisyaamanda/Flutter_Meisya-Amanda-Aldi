import 'package:task27/model/api/food_api.dart';
import 'package:task27/model/food_model.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'food_api_test.mocks.dart';

@GenerateMocks([FoodAPI])
void main() {
  group('FoodAPI', () {
    FoodAPI foodAPI = MockFoodAPI();

    test('Fetching Food Data from API ', () async {
      when(foodAPI.getFood()).thenAnswer(
        (_) async => <FoodModel>[
          FoodModel(id: 1, name: 'Bakso'),
        ],
      );

      var foods = await foodAPI.getFood();
      expect(foods.isNotEmpty, true);
    });
  });
}