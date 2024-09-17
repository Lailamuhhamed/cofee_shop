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

    emit(GetCoffeesSuccessState(coffees: coffees));
  }
}
