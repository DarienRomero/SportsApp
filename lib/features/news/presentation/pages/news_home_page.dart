import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/utils.dart';
import 'package:news_app/features/common/presentation/widgets/empty_view.dart';
import 'package:news_app/features/common/presentation/widgets/error_view.dart';
import 'package:news_app/features/common/presentation/widgets/loading_view.dart';
import 'package:news_app/features/common/presentation/widgets/scaffold_wrapper.dart';
import 'package:news_app/features/news/presentation/bloc/news_bloc.dart';
import 'package:news_app/features/news/presentation/widgets/new_preview_item.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewsBloc>(context, listen: false).add(StartGetNews());
    });
  }

  @override
  Widget build(BuildContext context) {
    final cacheSize = PaintingBinding.instance.imageCache.currentSizeBytes;
    if(cacheSize > 20 * 1024 * 1024){
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
    }
    return ScaffoldWrapper(
      appBar: AppBar(
        title: const Text('Aplicación de noticias'),
        leading: Container(),
        centerTitle: true,
      ),
      body: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, newsState) {
          return newsState.newsListLoading ? const LoadingView(
            heigth: 100
          ) : newsState.newsListError ? const ErrorView(
            heigth: 100
          ) : newsState.newsList.isEmpty ? const EmptyView(
            heigth: 100
          ) :  Container(
            padding: EdgeInsets.symmetric(
              horizontal: mqWidth(context, 5)
            ),
            child: 
            SizedBox(
              height: mqHeigth(context, 100),
              child: ListView.builder(
                itemCount: newsState.newsList.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  top: mqHeigth(context, 3)
                ),
                itemBuilder: (context, index) {
                  final item  = newsState.newsList[index];
                  return NewPreviewItem(
                    articleEntity: item,
                  );
                },
              ),
            ),
          );
        },
      )
    );
  }
}