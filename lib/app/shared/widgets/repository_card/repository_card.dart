import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';

class RepositoryCard extends StatelessWidget {
  final RepositoryModel repositoryModel;

  RepositoryCard(this.repositoryModel);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () =>
          Modular.to.pushNamed('/home/repoDetails', arguments: repositoryModel),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        height: size.height * .3,
      ),
    );
  }
}
