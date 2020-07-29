import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/information_field/information_field_widget.dart';
import '../../shared/widgets/separator/separator_widget.dart';
import 'repository_info_controller.dart';

class RepositoryInfoPage extends StatefulWidget {
  const RepositoryInfoPage({Key key}) : super(key: key);

  @override
  _RepositoryInfoPageState createState() => _RepositoryInfoPageState();
}

class _RepositoryInfoPageState
    extends ModularState<RepositoryInfoPage, RepositoryInfoController> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextTheme textThemes = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Text(this.controller.repositoryData?.name ?? "");
          },
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Observer(
        builder: (_) {
          if (this.controller.repositoryData == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              width: screenSize.width,
              height: screenSize.height,
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InformationFieldWidget(
                      title: "Description",
                      titleStyle: textThemes.headline6,
                      content: this.controller.repositoryData.description ??
                          "Not informed.",
                    ),
                    SeparatorWidget(),
                    InformationFieldWidget(
                      title: "Language",
                      titleStyle: textThemes.headline6,
                      content: this.controller.repositoryData.language ??
                          "Not informed.",
                    ),
                    SeparatorWidget(),
                    InformationFieldWidget(
                      title: "Stars Count",
                      titleStyle: textThemes.headline6,
                      content: this
                              .controller
                              .repositoryData
                              .stargazersCount
                              ?.toString() ??
                          "Not informed.",
                    ),
                    SeparatorWidget(),
                    InformationFieldWidget(
                      title: "Watchers",
                      titleStyle: textThemes.headline6,
                      content: this
                              .controller
                              .repositoryData
                              .subscribersCount
                              ?.toString() ??
                          "Not informed",
                    ),
                    SeparatorWidget(),
                    GestureDetector(
                      onTap: () => this
                          .controller
                          .openUrl(this.controller.repositoryData.gitUrl),
                      child: InformationFieldWidget(
                        title: "Git URL",
                        titleStyle: textThemes.headline6,
                        content: this.controller.repositoryData.gitUrl,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
