import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:repositories_list/app/shared/constants/sizes.dart';
import 'package:repositories_list/app/shared/models/repository_model.dart';

import 'repository_card_controller.dart';

class RepositoryCard extends StatelessWidget {
  final RepositoryModel repositoryModel;

  RepositoryCard(this.repositoryModel);

  final repositoryCardController = Modular.get<RepositoryCardController>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () =>
          Modular.to.pushNamed('/home/repoDetails', arguments: repositoryModel),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    repositoryModel.name,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: repositoryCardController.fontSize(
                            repositoryModel.name.length,
                            TITLE_REPO_MAX_SIZE,
                            TITLE_REPO_MIN_SIZE)),
                  ),
                  Spacer(),
                  Text(
                    repositoryModel.stargazersCount.toString(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  )
                ],
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        repositoryModel.description != null
                            ? repositoryModel.description
                            : "No provided description.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: repositoryCardController.fontSize(
                                repositoryModel.description == null
                                    ? 0
                                    : repositoryModel.description.length,
                                DESCRIPTION_REPO_MAX_SIZE,
                                DESCRIPTION_REPO_MIN_SIZE)),
                      )))
            ],
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white12),
        height: size.height * .3,
      ),
    );
  }
}
