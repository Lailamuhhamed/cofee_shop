import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'search_coffee_state.dart';

class SearchCoffeeCubit extends Cubit<SearchCoffeeState> {
  SearchCoffeeCubit() : super(SearchCoffeeInitial());
}
