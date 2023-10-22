
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sports_101/data/repo/countryrepo.dart';

import '../models/countrymodels/countrymodel.dart';

part 'country_with_state.dart';

class CountryWithCubit extends Cubit<CountryWithState> {
  CountryWithCubit() : super(CountryWithInitial());

  getcountryuesr() {
    CountryRepo().getCountries().then((value) {
      if (value != null) {
        emit(CountrySuccess(country_response: value));
      } else {
        emit(CountryFail());
      }
    });
  }


}


// getCountries(){
//   emit(CountryWithInitial()) ;
//   CountryRepo().getCountries().then((value) {
//     if(value != null){
//       emit(CountryWithSuccess(ourResponse: value)) ;
//     }
//     else {
//       emit(CountryErrors()) ;
//     }
//   }
//   );
//
//
//
// }