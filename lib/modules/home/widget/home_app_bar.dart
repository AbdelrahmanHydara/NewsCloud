import 'package:flutter/material.dart';
import 'package:news/shared/styles/app_colors.dart';

class HomeAppBar extends StatelessWidget
{
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children:
      [
        Text(
          'News',
        ),
        Text(
          'Cloud',
          style: TextStyle(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
