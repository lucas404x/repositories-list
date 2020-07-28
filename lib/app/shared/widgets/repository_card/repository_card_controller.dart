import 'package:mobx/mobx.dart';

part 'repository_card_controller.g.dart';

class RepositoryCardController = _RepositoryCardControllerBase
    with _$RepositoryCardController;

abstract class _RepositoryCardControllerBase with Store {
  String changeText(String text, limit) {
    if (text.length <= limit) return text;
    print(text.substring(0, (limit - 3).abs()) + "...");
    return text.substring(0, (limit - 3).abs()) + "...";
  }

  double fontSize(int length, double maxSize, double minSize) {
    var size = (maxSize - length).abs().toDouble();

    if (size > maxSize)
      return minSize;
    else if (size < minSize)
      return minSize;
    else
      return size;
  }
}
