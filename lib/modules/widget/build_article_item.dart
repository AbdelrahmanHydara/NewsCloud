import 'package:flutter/material.dart';

Widget buildArticleItem(articles,context) => Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children:
    [
      ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image:
                AssetImage('assets/images/image.png'),
            // NetworkImage('${articles['urlToImage']}'),
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
      ),
      const SizedBox(
        height: 12,
      ),
      Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          '${articles['title']}',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        '${articles['publishedAt']}',
        maxLines: 2,
        style: Theme.of(context).textTheme.displaySmall,
      )
    ],
  ),
);