import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/modules/home/home_screen.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';
import 'package:news/shared/network/local/cache_helper.dart';
import 'package:news/shared/network/remote/dio_helper.dart';
import 'package:news/shared/styles/themes/dark_theme.dart';
import 'package:news/shared/styles/themes/light_theme.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await DioHelper.init();

  await CacheHelper.init();

  dynamic isDark = CacheHelper.getData(key: 'isDark');

  runApp(MyApp());
}

class MyApp extends StatelessWidget
{

  const MyApp({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..changeAppMode()..
      getBusiness()..getSports()..getScience()..getTechnology(),
      child: BlocConsumer<NewsCubit,NewsState>(
        listener: (context,state) {},
        builder: (context, state)
        {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: NewsCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
