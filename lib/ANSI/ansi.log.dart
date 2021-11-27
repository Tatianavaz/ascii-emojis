import 'ansi.color.dart';

class ANSILog {
  String question(String text) => ">> ${ANSIColor.cyan}$text${ANSIColor.reset}";

  void warning(String text) =>
      print(">> ${ANSIColor.red}$text${ANSIColor.reset}");

  void space(String text) =>
      print("${ANSIColor.yellow}$text${ANSIColor.reset}");

  String topic(String color, String text) => "$color$text${ANSIColor.reset}";

  void awnser(int i, String name, String emoji) {
    String _index = topic(ANSIColor.yellow, '[${i.toString()}]');
    String _name = '${topic(ANSIColor.red, '[NAME]')}: ${name.toString()}';
    String _emoji = '${topic(ANSIColor.green, '[EMOJI]')}: ${emoji.toString()}';
    return print('$_index | $_name | $_emoji');
  }
}
