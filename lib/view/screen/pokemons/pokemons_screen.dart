import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ososs_test/core/constant/image_assets.dart';

import '../../../controller/pokemon/pokemon_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/custom_text.dart';
import '../../widget/pokemons/custom_card.dart';
import '../../widget/pokemons/isEmpty.dart';
import '../../widget/pokemons/loading.dart';

class PokemonsScreen extends StatelessWidget {
  const PokemonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.appColor,
        title: const CustomText(
          color: AppColor.white,
          text: 'Pokemons',
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: GetBuilder<PokemonController>(
          init: PokemonController(),
          builder: (controller) {
            return LoadingManager(
              isLoading: controller.isLoadingPokemons.value,
              child: SingleChildScrollView(
                controller: controller.scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IsEmpty(
                      isEmpty: controller.results == [],
                      child1: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => CustomCard(
                            image:
                                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/${index + 1}.png",
                            pokemonName: controller.results?[index].name ?? "",
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 25),
                          itemCount: controller.results?.length ?? 0,
                        ),
                      ),
                      child2: const Center(
                        child: CustomText(
                          color: AppColor.appColor,
                          text: 'No Data',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    if (controller.isLoadingMorePokemons.value)
                      const Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: CircularProgressIndicator(
                          color: AppColor.appColor,
                        ),
                      ),
                    if (controller.isLoadingMorePokemons.value)
                      const SizedBox(
                        height: 100,
                      ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
