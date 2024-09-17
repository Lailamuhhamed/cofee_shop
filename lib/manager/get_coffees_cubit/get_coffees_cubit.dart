import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_coffees_state.dart';

class GetCoffeesCubit extends Cubit<GetCoffeesState> {
  GetCoffeesCubit() : super(GetCoffeesInitial());
}
