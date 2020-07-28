import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'repository_info_controller.g.dart';

class RepositoryInfoController = _RepositoryInfoControllerBase
    with _$RepositoryInfoController;

abstract class _RepositoryInfoControllerBase with Store {
  void openUrl(String gitRepoLink) async {
    String url = _convertToUrl(gitRepoLink);
    if (await canLaunch(url)) {
      launch(url);
    }
  }

  String _convertToUrl(String gitRepoLink) =>
      "https" + gitRepoLink.substring(3);
}
