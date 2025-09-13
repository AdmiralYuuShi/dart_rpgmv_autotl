import 'dart:convert';
import 'dart:io';
import 'package:translator/translator.dart';

import 'tl.dart';
import 'model/tl_result.dart';
import 'extensions/num_extensions.dart';

Future<void> tlOther() async {
  final translator = GoogleTranslator();
  int allTotalTime = 0;

  List<String> fileNames = [
    'Actors',
    'Animations',
    'Armors',
    'Classes',
    'CommonEvents',
    'Enemies',
    'Items',
    'MapInfos',
    'Skills',
    'States',
    // 'System',
    'Tilesets',
    'Troops',
    'Weapons',
    // 'Test'
  ];

  List<String> keys = [
    'name',
    'description',
    'note',
    'parameters',
    'message1',
    'message2',
    'message3',
    'message4',
    'profile',
  ];

  // {original: translated}
  // To check if there is same original text, so no need to retranslate
  Map<String, String> dictionary = {};

  for (String filename in fileNames) {
    String path = 'bin/data/$filename.json';
    int totalTime = 0;

    try {
      File file = File(path);

      if (!file.existsSync()) {
        print('$path Not Found. ');
        continue;
      } else {
        print('$path Translating...');
      }

      var data = await json.decode(file.readAsStringSync());

      if (data is! List) continue;
      for (int i = 0; i < data.length; i++) {
        if (data[i] is! Map) continue;
        Map d = data[i] as Map;

        for (String key in keys) {
          if (!d.keys.contains(key)) continue;

          if (data[i][key] is String && (data[i][key] as String).isNotEmpty) {
            String textToTl = data[i][key];
            if (key == 'note' && textToTl.startsWith('<equipSlotEx:')) continue;
            print('($path)[$key] TRANSLATING... : $textToTl');
            TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
            data[i][key] = tled.translated;
            dictionary[textToTl] = tled.translated;
            totalTime += tled.time.inMilliseconds;
            print('($path | ${tled.time.inMilliseconds}ms)[$key] RESULT : ${tled.translated}');
          } else if (data[i][key] is List && (data[i][key] as List).isNotEmpty) {
            List dataList = data[i][key];
            for (int j = 0; j < dataList.length; j++) {
              if (data[i][key][j] is! String) continue;

              String textToTl = data[i][key][j];
              print('($path)[$key] TRANSLATING... : $textToTl');
              TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
              data[i][key][j] = tled.translated;
              dictionary[textToTl] = tled.translated;
              totalTime += tled.time.inMilliseconds;
              print('($path | ${tled.time.inMilliseconds}ms)[$key] RESULT : ${tled.translated}');
            }
          }
        }
      }

      String resultPath = 'bin/data/result/$filename.json';
      await File(resultPath).writeAsString(json.encode(data));
      allTotalTime += totalTime;
      print('$path Done in ${totalTime.msToSec}s | Translated : ${dictionary.length}');
    } catch (e) {
      print('$path Error : $e');
    }
  }

  print('All Done in ${allTotalTime.msToSec}s');
}
