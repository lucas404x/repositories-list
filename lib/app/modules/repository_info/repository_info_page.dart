import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/models/repository_model.dart';
import '../../shared/widgets/information_field/information_field_widget.dart';
import '../../shared/widgets/separator/separator_widget.dart';
import 'repository_info_controller.dart';

class RepositoryInfoPage extends StatefulWidget {
  final RepositoryModel repository;
  const RepositoryInfoPage({Key key, this.repository}) : super(key: key);

  @override
  _RepositoryInfoPageState createState() => _RepositoryInfoPageState();
}

class _RepositoryInfoPageState
    extends ModularState<RepositoryInfoPage, RepositoryInfoController> {
  final _repositoryInfoController = Modular.get<RepositoryInfoController>();
  RepositoryModel _repository;

  @override
  void initState() {
    this._repository = widget.repository;
    print(this._repository.toMap());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextTheme textThemes = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(this._repository.name),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Container(
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
                content: this._repository.description ?? "Not informed.",
              ),
              SeparatorWidget(),
              InformationFieldWidget(
                title: "Language",
                titleStyle: textThemes.headline6,
                content: this._repository.language ?? "Not informed.",
              ),
              SeparatorWidget(),
              InformationFieldWidget(
                title: "Stars Count",
                titleStyle: textThemes.headline6,
                content: this._repository.stargazersCount?.toString() ??
                    "Not informed.",
              ),
              SeparatorWidget(),
              InformationFieldWidget(
                title: "Watchers",
                titleStyle: textThemes.headline6,
                content: this._repository.subscribersCount?.toString() ??
                    "Not informed",
              ),
              SeparatorWidget(),
              GestureDetector(
                onTap: () =>
                    _repositoryInfoController.openUrl(this._repository.gitUrl),
                child: InformationFieldWidget(
                  title: "Git URL",
                  titleStyle: textThemes.headline6,
                  content: this._repository.gitUrl,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
