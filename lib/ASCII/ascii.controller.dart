import 'dart:convert';
import 'dart:developer';
import 'dart:async';
import 'dart:developer' show log;
import 'dart:io';
import "dart:math";

import '../ANSI/ansi.log.dart';
import 'ascii.data.dart';
import 'ascii.model.dart';

class ASCIIController {
  void startProcess() {
    ANSILog log = ANSILog();
    stdout.write(log.question('How many ASCII emojis do you want to see ? '));
    var response = stdin.readLineSync()!;
    if (response != null) {
      int? total = int.tryParse(response);
      if (total != null) {
        int len = getAsciiData().length;
        if (total <= len) {
          for (var i = 1; i < total + 1; i++) {
            ASCIIEmojiModel e = getRandonAsciiEmoji();
            log.space('=' * 50);
            log.awnser(i, e.name, e.emoji);
            sleep(Duration(milliseconds: 200));
          }
        } else {
          log.warning("Must be a number less than or equal to $len");
          startProcess();
        }
      } else {
        log.warning("'$response' is not a Number");
        startProcess();
      }
    }
  }

  ASCIIEmojiModel getRandonAsciiEmoji() {
    final _random = new Random();
    List<ASCIIEmojiModel> data = getAsciiData();
    return data[_random.nextInt(data.length)];
  }

  List<ASCIIEmojiModel> getAsciiData() {
    ASCIIEmojiData dataList = ASCIIEmojiData();
    return dataList.getDataList;
  }
}
