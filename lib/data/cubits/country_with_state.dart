part of 'country_with_cubit.dart';

@immutable
abstract class CountryWithState {}

class CountryWithInitial extends CountryWithState {}
class CountrySuccess extends CountryWithState {
  final Country country_response;
  CountrySuccess({required this.country_response});
}

class CountryFail extends CountryWithState  {}



