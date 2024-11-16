import 'dart:io';

import 'package:flutter/material.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/general_image.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';

class NewDetailsPage extends StatelessWidget {
  final ArticleEntity articleEntity;
  const NewDetailsPage({
    Key? key,
    required this.articleEntity
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: mqWidth(context, 100),
        height: mqHeigth(context, 100),
        child: Stack(
          children: [
            GeneralImage(
              width: mqWidth(context, 100),
              height: mqWidth(context, 100),
              fromLocal: false,
              url: articleEntity.urlToImage,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: mqHeigth(context, 32),
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: mqWidth(context, 5)
                ),
                width: mqWidth(context, 90),
                child: Text(
                 articleEntity.title, 
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: mqWidth(context, 100),
                  height: mqHeigth(context, 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: mqWidth(context, 5),
                    vertical: mqHeigth(context, 3)
                  ),
                  child: SingleChildScrollView(
                    child: Text(articleEntity.description, style: const TextStyle(
                      height: 2,
                      fontSize: 16
                    ),),
                  ),
                ),
              ],
            ),
            Positioned(
              top: mqHeigth(context, 5),
              left: mqWidth(context, 5),
              child: IconButton(
                onPressed: () => Navigator.pop(context), 
                icon: Icon(Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios, color: Colors.white)
              ),
            )
          ],
        ),
      )
    );
  }
}