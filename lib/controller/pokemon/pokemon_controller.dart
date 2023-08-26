import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/service/service.dart';
import '../../data/data_source/pokemon_data.dart';
import '../../data/model/pokemon_model.dart';

class PokemonController extends GetxController {
  List<Result>? results = [];
  PokemonModel pokemonModelData = PokemonModel();
  String? nextPageUrl = '';
  PokemonData pokemonData = PokemonData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();
  int offset = 0;
  String nextPage = "";
  late ScrollController scrollController;
  RxBool isLoadingPokemons = true.obs;

  getPokemons() async {
    isLoadingPokemons = true.obs;
    var response = await pokemonData.getData(offset);
    print("=============================== Controller $response ");
    print(statusRequest);
    if (response != null) {
      var pokemonModel = PokemonModel.fromJson(response);
      if (pokemonModel.results != null) {
        pokemonModelData = pokemonModel;
        results = pokemonModel.results!;
        print(results);
        print('99999999999999');
      } else {
        isLoadingPokemons = false.obs;
      }
    } else {
      statusRequest = StatusRequest.failure;
      isLoadingPokemons = false.obs;
    }

    isLoadingPokemons = false.obs;

    update();
  }

  RxBool isLoadingMorePokemons = false.obs;
  List<Result>? resultsNext = [];

  Future fetchMorePokemons() async {
    try {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          pokemonModelData.next != null) {
        isLoadingMorePokemons(true);
        update();
        var response = await pokemonData.getData(offset + 20);
        if (response != null) {
          var pokemonModel = PokemonModel.fromJson(response);
          if (pokemonModel.results != null) {
            pokemonModelData = pokemonModel;
            resultsNext = pokemonModel.results;
            results?.addAll(resultsNext!);
            print(results);
            print('99999999999999');
          }
          isLoadingMorePokemons(false);
          update();
        }
      }
    } catch (e) {
      print(e);
      isLoadingMorePokemons(false);
      update();
    }
  }

  @override
  void onInit() {
    scrollController = ScrollController()..addListener(fetchMorePokemons);

    getPokemons();
    super.onInit();
  }
}
