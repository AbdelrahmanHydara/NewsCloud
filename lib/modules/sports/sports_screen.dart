import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/modules/widget/build_article_item.dart';
import 'package:news/shared/components/components.dart';
import 'package:news/shared/cubit/cubit.dart';
import 'package:news/shared/cubit/states.dart';

class SportsScreen extends StatelessWidget
{
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<NewsCubit,NewsState>(
      listener: (context,state) {},
      builder: (context,state)
      {
        return ConditionalBuilder(
          condition: NewsCubit.get(context).sports.length > 0,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context,index) => buildArticleItem(NewsCubit.get(context).sports[index],context),
            separatorBuilder: (context,index) => myDivider(),
            itemCount: NewsCubit.get(context).sports.length,
          ),
          fallback: (context) => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
