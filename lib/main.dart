import 'package:bhagavad_gita_advance/provider/favorite_provider.dart';
import 'package:bhagavad_gita_advance/provider/home_provider.dart';
import 'package:bhagavad_gita_advance/screens/splash/splash_screen.dart';
import 'package:bhagavad_gita_advance/theme/theme_data.dart';
import 'package:bhagavad_gita_advance/theme/theme_provider.dart';
import 'package:bhagavad_gita_advance/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HomeProvider homeP = HomeProvider();
  await homeP.initialise();
  
  FavoriteProvider favP = FavoriteProvider();
  await favP.init(homeP.chapterList);
  
  runApp( BhagavadGita(homeProvider: homeP, favoriteProvider: favP,));
}

class BhagavadGita extends StatelessWidget {
  const BhagavadGita({super.key, required this.homeProvider, required this.favoriteProvider});

  final HomeProvider homeProvider;
  final FavoriteProvider favoriteProvider;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return MultiProvider(
      providers: [
        // HOME
        ChangeNotifierProvider(create: (_) => homeProvider),

        // THEME
        ChangeNotifierProvider(create: (_) => ThemeProvider()),


        // FAVORITE
        ChangeNotifierProvider(create: (_) => favoriteProvider),
      ],
      builder: (context, child) => MaterialApp(
        theme: AppThemeData.lightTheme,
        darkTheme: AppThemeData.darkTheme,
        themeMode: context.watch<ThemeProvider>().isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
