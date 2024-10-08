import 'package:multiple_result/multiple_result.dart';

import 'package:restaurant_tour/core/domain/error/error.dart';
import 'package:restaurant_tour/domain/models/restaurant.dart';

abstract class BaseRestaurantsRepository {
  const BaseRestaurantsRepository();

  Future<Result<List<Restaurant>, BaseError>> getRestaurants({int offset = 0});

  Stream<List<Restaurant>> getFavorites();

  void toggleFavorite(Restaurant restaurant);

  void dispose();
}
