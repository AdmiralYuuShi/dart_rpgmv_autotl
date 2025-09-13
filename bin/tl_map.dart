import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:translator/translator.dart';

import 'model/rpg_map.dart';
import 'extensions/num_extensions.dart';

Future<void> tlMap() async {
  final translator = GoogleTranslator();

  int index = 50;

  int allTotalTime = 0;
  bool isDone = false;

  // {original: translated}
  // To check if there is same original text, so no need to retranslate
  Map<String, String> dictionary = {};

  while (!isDone) {
    index++;
    String path = 'bin/data/Map${'$index'.padLeft(3, '0')}.json';

    try {
      File file = File(path);

      if (!file.existsSync()) {
        print('$path Not Found. Translation done: ${index - 1}');
        isDone = true;
        continue;
      }

      final data = await json.decode(file.readAsStringSync());
      RpgMap model = RpgMap.fromJson(data);

      int totalVal = model.events
          .map((e) => (e?.pages ?? [])
              .map((f) => f.list
                  .map((g) =>
                      g.parameters.where((h) => (h is String && h.isNotEmpty) || (h is List && h.isNotEmpty)).length)
                  .sum)
              .sum)
          .sum;
      int current = 0;
      int totalTime = 0;

      for (int i = 0; i < model.events.length; i++) {
        for (int j = 0; j < (model.events[i]?.pages.length ?? 0); j++) {
          for (int k = 0; k < (model.events[i]?.pages[j].list.length ?? 0); k++) {
            for (int l = 0; l < (model.events[i]?.pages[j].list[k].parameters.length ?? 0); l++) {
              final val = model.events[i]?.pages[j].list[k].parameters[l];
              if (val is String && val.isNotEmpty) {
                current++;
                final DateTime startTime = DateTime.now();
                String textToTl = model.events[i]?.pages[j].list[k].parameters[l];
                print('($path | $current/$totalVal) TRANSLATING... : $textToTl');
                String tled = dictionary[textToTl] != null
                    ? dictionary[textToTl]!
                    : (await translator.translate(textToTl, from: 'ja', to: 'en')).text;

                int time = DateTime.now().difference(startTime).inMilliseconds;

                if (tled.toLowerCase() != textToTl.toLowerCase()) {
                  model.events[i]?.pages[j].list[k].parameters[l] = tled;
                  dictionary[textToTl] = tled;
                }

                totalTime += time;
                print('($path | $current/$totalVal | ${time}ms) RESULT : $tled');
              } else if (val is List && val.isNotEmpty) {
                current++;
                final DateTime startTime = DateTime.now();
                for (int m = 0; m < val.length; m++) {
                  final val2 = model.events[i]?.pages[j].list[k].parameters[l][m];
                  if (val2 is String && val2.isNotEmpty) {
                    print(
                        '($path | $current/$totalVal) TRANSLATING... : ${model.events[i]?.pages[j].list[k].parameters[l][m]}');
                    String textToTl = model.events[i]?.pages[j].list[k].parameters[l][m];
                    String tled = dictionary[textToTl] != null
                        ? dictionary[textToTl]!
                        : (await translator.translate(textToTl, from: 'ja', to: 'en')).text;

                    if (tled.toLowerCase() != textToTl.toLowerCase()) {
                      model.events[i]?.pages[j].list[k].parameters[l][m] = tled;
                      dictionary[textToTl] = tled;
                    }
                  }
                }
                int time = DateTime.now().difference(startTime).inMilliseconds;
                totalTime += time;
                print(
                    '($path | $current/$totalVal | ${time}ms) RESULT : ${model.events[i]?.pages[j].list[k].parameters[l].join(' | ')}');
              }
            }
          }
        }
      }

      String resultPath = 'bin/data/result/Map${'$index'.padLeft(3, '0')}.json';
      await File(resultPath).writeAsString(json.encode(model.toJson()));

      allTotalTime += totalTime;
      print(
          '$path Done in ${totalTime.msToSec}s | Time : ${allTotalTime.msToSec}s | dictionary : ${dictionary.length}');
    } catch (e) {
      print('$path Error : $e');
    }
  }

  print('All Done in ${allTotalTime.msToSec}s');
}
