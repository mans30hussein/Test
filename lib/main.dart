import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_101/data/cubits/country_with_cubit.dart';
import 'package:sports_101/screens/countryscreen.dart';
import 'package:sports_101/screens/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CountryWithCubit>(
          create: (BuildContext context) => CountryWithCubit(),
        ),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplachScreen(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,

        ],

        ),
    );
  }
}



