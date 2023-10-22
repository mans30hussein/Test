import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_101/data/cubits/country_with_cubit.dart';
import 'package:sports_101/data/repo/countryrepo.dart';

class CountryScreen extends StatefulWidget {
   CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CountryWithCubit>().getcountryuesr();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CountryWithCubit, CountryWithState>(
  builder: (context, state) {
    if(state is CountryWithInitial){
      return CircularProgressIndicator() ;
    }
    else if(state is CountrySuccess){
      return GridView.count(
        childAspectRatio: 1,
        crossAxisCount: 2, // Number of columns
        mainAxisSpacing: 10.0, // Spacing between rows
        crossAxisSpacing: 10.0, // Spacing between columns
        padding: EdgeInsets.all(15.0), // Padding around the grid
        children: List.generate( state.country_response.result.length,(index) {

          return InkWell(
            child: Container(
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(state.country_response.result[index].countryLogo ??
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fstock.adobe.com%2Fsearch%2Fi"
                            "mages%3Fk%3Dno%2Bimage%2Bavailable&psig=AOvVaw1uTApexhELuHFOBMTMogN8&ust=16907165238170"
                            "00&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNDgr4Pos4ADFQAAAAAdAAAAABAK"),
                    fit: BoxFit.cover,
                  )
                  //image: NetworkImage(state.country_response.result[index].countryLogo
              ),
              child: Text(state.country_response.result[index].countryName ?? "", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),

            ),
          ) ;
        },
        ),
      );

    }
    else if(state is CountryFail){
      return Center(child: Text("errer"),) ;
    }
    else {
      return SizedBox() ;
    }


  },
),

    );
  }
}
// "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzbF"
// "ddHOUce6F3iOsBlTFKZnyRMh18IIZeX6JQbzxR&s"