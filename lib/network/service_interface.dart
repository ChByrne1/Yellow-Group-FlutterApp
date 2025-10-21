import 'package:chopper/chopper.dart';

import '../models/overview.dart';
import 'model_reponse.dart';

typedef RecipeResponse = Response<Result<QueryResult>>;
typedef RecipeDetailsResponse = Response<Result<Book>>;

abstract class ServiceInterface {
  /// Query recipes with the given query string
  /// offset is the starting point
  /// number is the number of items
  Future<RecipeResponse> queryRecipes(
      String query,
      int offset,
      int number,
      );

  /// Get the details of a specific recipe
  Future<RecipeDetailsResponse> queryRecipe(
      String id,
      );
}