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
    var data = await ApiService.getCoffees(endpoint: 'endpoint');
    // fetch data in a loop

    for (var element in data) {
      coffees.add(CoffeeModel.fromJson(element));
    }
    emit(GetCoffeesSuccessState(coffees: coffees));
  }
}
