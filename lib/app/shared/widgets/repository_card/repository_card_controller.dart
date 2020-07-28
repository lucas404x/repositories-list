import 'package:mobx/mobx.dart';

part 'repository_card_controller.g.dart';

class RepositoryCardController = _RepositoryCardControllerBase
    with _$RepositoryCardController;

abstract class _RepositoryCardControllerBase with Store {
  double fontSize(int length, double maxSize, double minSize) {
    var size = (maxSize - length).abs().toDouble();

    return size > maxSize || size < minSize ? maxSize : size;
  }
}
