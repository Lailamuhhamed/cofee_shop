part of 'get_coffees_cubit.dart';

@immutable
sealed class GetCoffeesState {}

final class GetCoffeesInitial extends GetCoffeesState {}

final class GetCoffeesLoadingState extends GetCoffeesState {}

final class GetCoffeesSuccessState extends GetCoffeesState {
  final List<CoffeeModel> coffees;
  GetCoffeesSuccessState({required this.coffees});
}

final class GetCoffeesFailureState extends GetCoffeesState {
  final String message;
  GetCoffeesFailureState({required this.message});
}

final class SearchCoffeeLoadingState extends GetCoffeesState {}

final class SearchCoffeeSuccessState extends GetCoffeesState {
  final List<CoffeeModel> coffees;
  SearchCoffeeSuccessState({required this.coffees});
}

final class SearchCoffeeFailureState extends GetCoffeesState {
  final String message;
  SearchCoffeeFailureState({required this.message});
}
