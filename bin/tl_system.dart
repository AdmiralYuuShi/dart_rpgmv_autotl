import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:translator/translator.dart';

import 'model/rpg_system.dart';
import 'extensions/num_extensions.dart';
import 'model/tl_result.dart';
import 'tl.dart';

Future<void> main() async {
  final translator = GoogleTranslator();

  // {original: translated}
  // To check if there is same original text, so no need to retranslate
  Map<String, String> dictionary = {};

  String path = 'bin/data/System.json';

  try {
    File file = File(path);

    if (!file.existsSync()) {
      print('$path Not Found. ');
      return;
    }

    final data = await json.decode(file.readAsStringSync());
    RpgSystem model = RpgSystem.fromJson(data);

    int totalTime = 0;

    for (int i = 0; i < model.elements.length; i++) {
      String textToTl = model.elements[i];
      if (textToTl.isEmpty) continue;
      print('($path)[elements] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.elements[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[elements] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.weaponTypes.length; i++) {
      String textToTl = model.weaponTypes[i];
      if (textToTl.isEmpty) continue;
      print('($path)[weaponTypes] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.weaponTypes[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[weaponTypes] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.variables.length; i++) {
      String textToTl = model.variables[i];
      if (textToTl.isEmpty) continue;
      print('($path)[variables] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.variables[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[variables] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.terms.basic.length; i++) {
      String textToTl = model.terms.basic[i];
      if (textToTl.isEmpty) continue;
      print('($path)[basic] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.terms.basic[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[basic] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.terms.params.length; i++) {
      String textToTl = model.terms.params[i];
      if (textToTl.isEmpty) continue;
      print('($path)[params] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.terms.params[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[params] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.terms.commands.length; i++) {
      String? textToTl = model.terms.commands[i];
      if (textToTl == null || textToTl.isEmpty) continue;
      print('($path)[commands] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.terms.commands[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[commands] RESULT : ${tled.translated}');
    }
    for (MapEntry<String, String> e in model.terms.messages.entries) {
      String? textToTl = e.value;
      if (textToTl.isEmpty) continue;
      print('($path)[messages] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.terms.messages[e.key] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[messages] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.switches.length; i++) {
      String textToTl = model.switches[i];
      if (textToTl.isEmpty) continue;
      print('($path)[switches] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.switches[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[switches] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.skillTypes.length; i++) {
      String textToTl = model.skillTypes[i];
      if (textToTl.isEmpty) continue;
      print('($path)[skillTypes] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.skillTypes[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[skillTypes] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.equipTypes.length; i++) {
      String textToTl = model.equipTypes[i];
      if (textToTl.isEmpty) continue;
      print('($path)[equipTypes] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.equipTypes[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[equipTypes] RESULT : ${tled.translated}');
    }
    for (int i = 0; i < model.armorTypes.length; i++) {
      String textToTl = model.armorTypes[i];
      if (textToTl.isEmpty) continue;
      print('($path)[armorTypes] TRANSLATING... : $textToTl');
      TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
      model.armorTypes[i] = tled.translated;
      dictionary[textToTl] = tled.translated;
      totalTime += tled.time.inMilliseconds;
      print('($path | ${tled.time.inMilliseconds}ms)[armorTypes] RESULT : ${tled.translated}');
    }

    String textToTl = model.gameTitle;
    print('($path)[gameTitle] TRANSLATING... : $textToTl');
    TlResult tled = await translator.tl(text: textToTl, dictionary: dictionary);
    model.gameTitle = tled.translated;
    dictionary[textToTl] = tled.translated;
    totalTime += tled.time.inMilliseconds;
    print('($path | ${tled.time.inMilliseconds}ms)[gameTitle] RESULT : ${tled.translated}');

    String resultPath = 'bin/data/result/System.json';
    await File(resultPath).writeAsString(json.encode(model.toJson()));

    print('$path Done in ${totalTime.msToSec}s | Time : ${totalTime.msToSec}s | Translated : ${dictionary.length}');
  } catch (e) {
    print('$path Error : $e');
  }
}
