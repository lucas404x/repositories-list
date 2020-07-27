import 'package:flutter/material.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';

class RepositoryCard extends StatelessWidget {
  final RepositoryModel repositoryModel;

  RepositoryCard(this.repositoryModel);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      height: size.height * .3,
    );
  }
}
