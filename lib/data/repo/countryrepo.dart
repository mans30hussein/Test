import 'dart:convert' as convert;
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/countrymodels/countrymodel.dart';
// import 'dart:html';
// class
class CountryRepo {
  // functions get data
  Future<Country?> getCountries() async {
    try {
      var response = await http.get(Uri.parse(
          "https://apiv2.allsportsapi.com/football/?met=Countries&APIkey="
              "da95144cf56dccc164254ba6567952cdfb87783cd7f6424b8baa0b447e45a65a"));

      Map<String, dynamic> decCodedResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        // AutoGenerate  class of dart code  in models files
        // data -> data of dart in models files

        Country data = Country.fromJson(decCodedResponse);
        // print(data.result[0].res);

        return data;
      } else {
        print("Request faild");
        return null;
      }
    } catch (Error) {
      print("Errors ${Error}");
      return null;
    }
  }
}



















//    void main(List<String> arguments) async {
//       var url =
//                 Uri.https('https://newsapi.org/v2/everything?q=tesla&from=2023-06-23&sortBy=publishedAt&apiKey=a0f4d6a4e5b249648a155ede8e40655a', {'q': '{http}'});
//
//  // Await the http get response, then decode the json-formatted response.
//           var response = await http.get(url);
//
//                 if (response.statusCode == 200) {
//           var jsonResponse =
//                             convert.jsonDecode(response.body) as Map<String, dynamic>;
//          var itemCount = jsonResponse['totalItems'];
//          print('Number of books about http: $itemCount.');
//      } else {
//        print('Request failed with status: ${response.statusCode}.');
//  }
// }