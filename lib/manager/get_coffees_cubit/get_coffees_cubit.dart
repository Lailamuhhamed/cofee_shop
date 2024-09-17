import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../api/api_service.dart';
import '../../models/coffee_model.dart';

part 'get_coffees_state.dart';

class GetCoffeesCubit extends Cubit<GetCoffeesState> {
  GetCoffeesCubit() : super(GetCoffeesInitial());

  List<CoffeeModel> coffees = [];
  Future<void> getCoffees() async {
    emit(GetCoffeesLoadingState());
    try {
      var data = await ApiService.getCoffees(endpoint: '/Products');
      // fetch data in a loop
      for (var element in data) {
        coffees.add(CoffeeModel.fromJson(element));
      }
      emit(GetCoffeesSuccessState(coffees: coffees));
    } catch (e) {
      emit(GetCoffeesFailureState(message: e.toString()));
    }
  }

  Future<void> searchCoffee({
    required String productName,
  }) async {
    if (productName == '') {
      coffees = [];
      getCoffees();
      return;
    }
    emit(SearchCoffeeLoadingState());
    try {
      coffees = [];
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
