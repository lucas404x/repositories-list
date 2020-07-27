import 'package:flutter/material.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';

class RepoDetailsPage extends StatefulWidget {
  final RepositoryModel repositoryModel;

  RepoDetailsPage(this.repositoryModel);

  @override
  RepoDetailsPageState createState() => RepoDetailsPageState();
}

class RepoDetailsPageState extends State<RepoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.repositoryModel.name);
    return Container();
  }
}
