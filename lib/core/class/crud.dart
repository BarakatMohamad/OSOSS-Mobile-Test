import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:ososs_test/core/class/statusrequest.dart';
import 'checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> getData(String linkUrl, Map data) async {
    try {
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
        );
        Map<String, dynamic> responseBody = jsonDecode(response.body);
        print("response.statusCode is ${response.statusCode}");
        print("response.body is $responseBody");
        print("mhmd");

        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      return const Left(StatusRequest.serverFailure);
    }
  }
}
