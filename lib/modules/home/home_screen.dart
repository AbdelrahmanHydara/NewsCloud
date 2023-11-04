import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/modules/home/widget/home_app_bar.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class HomeScreen extends StatelessWidget
{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewsCubit,NewsState>(
      listener: (context,state) {},
      builder: (context, state)
      {
        return Scaffold(
          appBar: AppBar(
            title: const HomeAppBar(),
            actions: [
              IconButton(
                onPressed: ()
                {
                  NewsCubit.get(context).changeAppMode();
                },
                icon: Icon(
                  Icons.brightness_2,
                ),
              ),
            ],
          ),
          body: NewsCubit.get(context).screens[NewsCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: NewsCubit.get(context).bottomNavigationBarItem,
            currentIndex: NewsCubit.get(context).currentIndex,
            onTap: (index)
            {
              NewsCubit.get(context).changeBottomNavBar(index);
            },
          ),
        );
      },
    );
  }
}