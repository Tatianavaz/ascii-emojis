class ASCIIEmojiModel {
  late String name;
  late String emoji;

  ASCIIEmojiModel({
    required this.name,
    required this.emoji,
  });

  Map<String, dynamic> toMap() {
    return {'name': name, 'emoji': emoji};
  }

  ASCIIEmojiModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    emoji = json['emoji'];
  }
}
