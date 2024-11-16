import 'package:flutter/material.dart';
import 'package:news_app/core/date/date_utils.dart';
import 'package:news_app/core/navigation.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/general_image.dart';
import 'package:news_app/features/common/presentation/widgets/h_spacing.dart';
import 'package:news_app/features/news/domain/entities/article_entity.dart';
import 'package:news_app/features/news/presentation/pages/new_details_page.dart';

class NewPreviewItem extends StatelessWidget {
  final ArticleEntity articleEntity;
  const NewPreviewItem({
    super.key,
    required this.articleEntity
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, cupertinoNavigationRoute(context, NewDetailsPage(
          articleEntity: articleEntity,
        )));
      },
      child: Container(
        width: mqWidth(context, 90),
        margin: EdgeInsets.only(
          bottom: mqHeigth(context, 3)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GeneralImage(
              width: mqWidth(context, 25),
              height: mqWidth(context, 25),
              url: articleEntity.urlToImage,
              fromLocal: false,
              borderRadius: 10,
              fit: BoxFit.cover,
            ),
            const HSpacing(5),
            SizedBox(
              height: mqWidth(context, 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: mqWidth(context, 60),
                    child: Text(
                      articleEntity.title, 
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: mqWidth(context, 60),
                    child: Text("${articleEntity.author} | ${formatDate(articleEntity.publishedAt)}", style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}