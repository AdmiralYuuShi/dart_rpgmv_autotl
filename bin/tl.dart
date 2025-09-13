import 'package:translator/translator.dart';

import 'model/tl_result.dart';

Future<TlResult> googleTranslate(
  GoogleTranslator translator, {
  required String text,
  Map<String, String>? dictionary,
}) async {
  final DateTime startTime = DateTime.now();
  String tled =
      dictionary?[text] != null ? dictionary![text]! : (await translator.translate(text, from: 'ja', to: 'en')).text;
  Duration time = DateTime.now().difference(startTime);

  return TlResult(
    original: text,
    translated: tled.trim().toLowerCase() != text.trim().toLowerCase() ? tled : text,
    time: time,
  );
}

extension Translator on GoogleTranslator {
  Future<TlResult> tl({
    required String text,
    Map<String, String>? dictionary,
  }) {
    return googleTranslate(this, text: text, dictionary: dictionary);
  }
}
