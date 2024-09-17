import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../api/api_service.dart';
import '../../models/coffee_model.dart';

part 'search_coffee_state.dart';

class SearchCoffeeCubit extends Cubit<SearchCoffeeState> {
  SearchCoffeeCubit() : super(SearchCoffeeInitial());

  List<CoffeeModel> coffees = [];

  Future<void> searchCoffee({
    required String productName,
  }) async {
    emit(SearchCoffeeLoadingState());
    try {
      var data = await ApiService.searchCoffee(productName: productName);
      // fetch data in a loop
      for (var element in data) {
        coffees.add(CoffeeModel.fromJson(element));
        print('=====================coffee name: $element');
      }

      emit(SearchCoffeeSuccessState(coffees: coffees));
    } catch (e) {
      print('=====================coffee name: $e');
      emit(SearchCoffeeFailureState(message: e.toString()));
    }
  }
}
