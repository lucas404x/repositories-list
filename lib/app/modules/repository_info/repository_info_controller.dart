import 'package:mobx/mobx.dart';

part 'repository_info_controller.g.dart';

class RepositoryInfoController = _RepositoryInfoControllerBase
    with _$RepositoryInfoController;

abstract class _RepositoryInfoControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
