import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NetworkHelper {
  var url;

  NetworkHelper(this.url);

  Future getData() async {
    var response = await http.get(url);
    var data = response.body;
    if (response.statusCode == 200) {
      print(response.statusCode);
      return convert.jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
