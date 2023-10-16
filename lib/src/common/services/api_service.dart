import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:taj_wa9ar/src/common/constants/constants.dart';
import 'package:taj_wa9ar/src/models/user_model.dart';

class ApiService {
  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return parseProducts(response.body); 
      }
    } catch (e) {
      log(e.toString());
    }
  }

List<UserModel> parseProducts(String responseBody) { 
   final parsed = json.decode(responseBody).cast<Map<String, dynamic>>(); 
   return parsed.map<UserModel>((json) => UserModel.fromMap(json)).toList(); 
} 
   
}
