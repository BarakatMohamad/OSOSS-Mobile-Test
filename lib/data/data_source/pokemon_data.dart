import 'package:dartz/dartz.dart';
import 'package:ososs_test/core/class/statusrequest.dart';
import '../../core/class/crud.dart';
import '../../core/constant/main_config.dart';

class PokemonData {
  Crud crud;
  PokemonData(this.crud);
  getData(int offset) async {
    Either<StatusRequest, Map> response;
    if (offset == 0) {
      var response1 =
          await crud.getData('${Config.baseURL}pokemon?offset=0&limit=20', {});
      response = response1;
    } else {
      var response2 = await crud
          .getData('${Config.baseURL}pokemon?offset=$offset&limit=20', {});
      response = response2;
    }
    return response.fold((l) => l, (r) => r);
  }
}
