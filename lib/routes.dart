import 'package:get/get.dart';
import 'package:ososs_test/bindings/initial_bindings.dart';
import 'package:ososs_test/view/screen/home/home_screen.dart';
import 'package:ososs_test/view/screen/pokemons/pokemons_screen.dart';
import 'bindings/home_binding.dart';
import 'bindings/splash_binding.dart';
import 'view/screen/page_one/page_one.dart';
import 'view/screen/splash/splash.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/splashScreen",
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: '/homeScreen',
    page: () => const HomeScreen(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: '/pageOne',
    page: () => const PageOneScreen(),
  ),
  GetPage(
    name: '/pokemon',
    page: () => const PokemonsScreen(),
    binding: InitialBindings(),
  ),
];
