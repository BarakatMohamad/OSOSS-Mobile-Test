import 'package:get/get.dart';
import '../controller/pokemon/pokemon_controller.dart';

class PokemonBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PokemonController>(
      PokemonController(),
    );
  }
}
