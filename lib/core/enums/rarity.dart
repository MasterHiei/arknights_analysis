import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum Rarity {
  @JsonValue(0)
  one(Color(0XFF9F9F9F)),

  @JsonValue(1)
  two(Color(0XFFDCE537)),

  @JsonValue(2)
  three(Color(0XFF388E3C)),

  @JsonValue(3)
  four(Color(0XFFA231FF)),

  @JsonValue(4)
  five(Color(0XFFCC7A00)),

  @JsonValue(5)
  six(Color(0XFFEE5700));

  const Rarity(this.color);

  final Color color;

  String get label {
    switch (index) {
      case 0:
        return '一星';

      case 1:
        return '二星';

      case 2:
        return '三星';

      case 3:
        return '四星';

      case 4:
        return '五星';

      case 5:
        return '六星';

      default:
        return '${index + 1}星';
    }
  }

  String get fullLabel => '$label干员';

  static List<Rarity> get rares => [Rarity.six, Rarity.five];

  static List<Rarity> get poolExclusive => [
        Rarity.three,
        Rarity.four,
        Rarity.five,
        Rarity.six,
      ];

  static Color exploreYourFate(int pull) {
    if (pull <= 10) {
      return Colors.green.lightest;
    }
    if (pull <= 25) {
      return Colors.green.light;
    }
    if (pull <= 45) {
      return Colors.blue.normal;
    }
    if (pull <= 65) {
      return Colors.purple.normal;
    }
    return Colors.red.darkest;
  }
}
