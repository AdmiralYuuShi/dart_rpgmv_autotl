// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpg_system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RpgSystem _$RpgSystemFromJson(Map<String, dynamic> json) => RpgSystem(
      advanced: Advanced.fromJson(json['advanced'] as Map<String, dynamic>),
      airship: Airship.fromJson(json['airship'] as Map<String, dynamic>),
      armorTypes: (json['armorTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      attackMotions: (json['attackMotions'] as List<dynamic>)
          .map((e) => AttackMotion.fromJson(e as Map<String, dynamic>))
          .toList(),
      battleBgm: BattleBgm.fromJson(json['battleBgm'] as Map<String, dynamic>),
      battleback1Name: json['battleback1Name'] as String,
      battleback2Name: json['battleback2Name'] as String,
      battlerHue: (json['battlerHue'] as num).toInt(),
      battlerName: json['battlerName'] as String,
      battleSystem: (json['battleSystem'] as num).toInt(),
      boat: Airship.fromJson(json['boat'] as Map<String, dynamic>),
      currencyUnit: json['currencyUnit'] as String,
      defeatMe: BattleBgm.fromJson(json['defeatMe'] as Map<String, dynamic>),
      editMapId: (json['editMapId'] as num).toInt(),
      elements:
          (json['elements'] as List<dynamic>).map((e) => e as String).toList(),
      equipTypes: (json['equipTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      gameTitle: json['gameTitle'] as String,
      gameoverMe:
          BattleBgm.fromJson(json['gameoverMe'] as Map<String, dynamic>),
      itemCategories: (json['itemCategories'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
      locale: json['locale'] as String,
      magicSkills: (json['magicSkills'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      menuCommands: (json['menuCommands'] as List<dynamic>)
          .map((e) => e as bool)
          .toList(),
      optAutosave: json['optAutosave'] as bool,
      optDisplayTp: json['optDisplayTp'] as bool,
      optDrawTitle: json['optDrawTitle'] as bool,
      optExtraExp: json['optExtraExp'] as bool,
      optFloorDeath: json['optFloorDeath'] as bool,
      optFollowers: json['optFollowers'] as bool,
      optKeyItemsNumber: json['optKeyItemsNumber'] as bool,
      optSideView: json['optSideView'] as bool,
      optSlipDeath: json['optSlipDeath'] as bool,
      optTransparent: json['optTransparent'] as bool,
      partyMembers: (json['partyMembers'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      ship: Airship.fromJson(json['ship'] as Map<String, dynamic>),
      skillTypes: (json['skillTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sounds: (json['sounds'] as List<dynamic>)
          .map((e) => BattleBgm.fromJson(e as Map<String, dynamic>))
          .toList(),
      startMapId: (json['startMapId'] as num).toInt(),
      startX: (json['startX'] as num).toInt(),
      startY: (json['startY'] as num).toInt(),
      switches:
          (json['switches'] as List<dynamic>).map((e) => e as String).toList(),
      terms: Terms.fromJson(json['terms'] as Map<String, dynamic>),
      testBattlers: (json['testBattlers'] as List<dynamic>)
          .map((e) => TestBattler.fromJson(e as Map<String, dynamic>))
          .toList(),
      testTroopId: (json['testTroopId'] as num).toInt(),
      title1Name: json['title1Name'] as String,
      title2Name: json['title2Name'] as String,
      titleBgm: BattleBgm.fromJson(json['titleBgm'] as Map<String, dynamic>),
      titleCommandWindow: TitleCommandWindow.fromJson(
          json['titleCommandWindow'] as Map<String, dynamic>),
      variables:
          (json['variables'] as List<dynamic>).map((e) => e as String).toList(),
      versionId: (json['versionId'] as num).toInt(),
      victoryMe: BattleBgm.fromJson(json['victoryMe'] as Map<String, dynamic>),
      weaponTypes: (json['weaponTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      windowTone: (json['windowTone'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      hasEncryptedImages: json['hasEncryptedImages'] as bool,
      hasEncryptedAudio: json['hasEncryptedAudio'] as bool,
      encryptionKey: json['encryptionKey'] as String,
    );

Map<String, dynamic> _$RpgSystemToJson(RpgSystem instance) => <String, dynamic>{
      'advanced': instance.advanced,
      'airship': instance.airship,
      'armorTypes': instance.armorTypes,
      'attackMotions': instance.attackMotions,
      'battleBgm': instance.battleBgm,
      'battleback1Name': instance.battleback1Name,
      'battleback2Name': instance.battleback2Name,
      'battlerHue': instance.battlerHue,
      'battlerName': instance.battlerName,
      'battleSystem': instance.battleSystem,
      'boat': instance.boat,
      'currencyUnit': instance.currencyUnit,
      'defeatMe': instance.defeatMe,
      'editMapId': instance.editMapId,
      'elements': instance.elements,
      'equipTypes': instance.equipTypes,
      'gameTitle': instance.gameTitle,
      'gameoverMe': instance.gameoverMe,
      'itemCategories': instance.itemCategories,
      'locale': instance.locale,
      'magicSkills': instance.magicSkills,
      'menuCommands': instance.menuCommands,
      'optAutosave': instance.optAutosave,
      'optDisplayTp': instance.optDisplayTp,
      'optDrawTitle': instance.optDrawTitle,
      'optExtraExp': instance.optExtraExp,
      'optFloorDeath': instance.optFloorDeath,
      'optFollowers': instance.optFollowers,
      'optKeyItemsNumber': instance.optKeyItemsNumber,
      'optSideView': instance.optSideView,
      'optSlipDeath': instance.optSlipDeath,
      'optTransparent': instance.optTransparent,
      'partyMembers': instance.partyMembers,
      'ship': instance.ship,
      'skillTypes': instance.skillTypes,
      'sounds': instance.sounds,
      'startMapId': instance.startMapId,
      'startX': instance.startX,
      'startY': instance.startY,
      'switches': instance.switches,
      'terms': instance.terms,
      'testBattlers': instance.testBattlers,
      'testTroopId': instance.testTroopId,
      'title1Name': instance.title1Name,
      'title2Name': instance.title2Name,
      'titleBgm': instance.titleBgm,
      'titleCommandWindow': instance.titleCommandWindow,
      'variables': instance.variables,
      'versionId': instance.versionId,
      'victoryMe': instance.victoryMe,
      'weaponTypes': instance.weaponTypes,
      'windowTone': instance.windowTone,
      'hasEncryptedImages': instance.hasEncryptedImages,
      'hasEncryptedAudio': instance.hasEncryptedAudio,
      'encryptionKey': instance.encryptionKey,
    };

Advanced _$AdvancedFromJson(Map<String, dynamic> json) => Advanced(
      gameId: (json['gameId'] as num).toInt(),
      screenWidth: (json['screenWidth'] as num).toInt(),
      screenHeight: (json['screenHeight'] as num).toInt(),
      uiAreaWidth: (json['uiAreaWidth'] as num).toInt(),
      uiAreaHeight: (json['uiAreaHeight'] as num).toInt(),
      numberFontFilename: json['numberFontFilename'] as String,
      fallbackFonts: json['fallbackFonts'] as String,
      fontSize: (json['fontSize'] as num).toInt(),
      mainFontFilename: json['mainFontFilename'] as String,
      windowOpacity: (json['windowOpacity'] as num).toInt(),
    );

Map<String, dynamic> _$AdvancedToJson(Advanced instance) => <String, dynamic>{
      'gameId': instance.gameId,
      'screenWidth': instance.screenWidth,
      'screenHeight': instance.screenHeight,
      'uiAreaWidth': instance.uiAreaWidth,
      'uiAreaHeight': instance.uiAreaHeight,
      'numberFontFilename': instance.numberFontFilename,
      'fallbackFonts': instance.fallbackFonts,
      'fontSize': instance.fontSize,
      'mainFontFilename': instance.mainFontFilename,
      'windowOpacity': instance.windowOpacity,
    };

Airship _$AirshipFromJson(Map<String, dynamic> json) => Airship(
      bgm: BattleBgm.fromJson(json['bgm'] as Map<String, dynamic>),
      characterIndex: (json['characterIndex'] as num).toInt(),
      characterName: json['characterName'] as String,
      startMapId: (json['startMapId'] as num).toInt(),
      startX: (json['startX'] as num).toInt(),
      startY: (json['startY'] as num).toInt(),
    );

Map<String, dynamic> _$AirshipToJson(Airship instance) => <String, dynamic>{
      'bgm': instance.bgm,
      'characterIndex': instance.characterIndex,
      'characterName': instance.characterName,
      'startMapId': instance.startMapId,
      'startX': instance.startX,
      'startY': instance.startY,
    };

BattleBgm _$BattleBgmFromJson(Map<String, dynamic> json) => BattleBgm(
      name: json['name'] as String,
      pan: (json['pan'] as num).toInt(),
      pitch: (json['pitch'] as num).toInt(),
      volume: (json['volume'] as num).toInt(),
    );

Map<String, dynamic> _$BattleBgmToJson(BattleBgm instance) => <String, dynamic>{
      'name': instance.name,
      'pan': instance.pan,
      'pitch': instance.pitch,
      'volume': instance.volume,
    };

AttackMotion _$AttackMotionFromJson(Map<String, dynamic> json) => AttackMotion(
      type: (json['type'] as num).toInt(),
      weaponImageId: (json['weaponImageId'] as num).toInt(),
    );

Map<String, dynamic> _$AttackMotionToJson(AttackMotion instance) =>
    <String, dynamic>{
      'type': instance.type,
      'weaponImageId': instance.weaponImageId,
    };

Terms _$TermsFromJson(Map<String, dynamic> json) => Terms(
      basic: (json['basic'] as List<dynamic>).map((e) => e as String).toList(),
      commands:
          (json['commands'] as List<dynamic>).map((e) => e as String?).toList(),
      params:
          (json['params'] as List<dynamic>).map((e) => e as String).toList(),
      messages: Map<String, String>.from(json['messages'] as Map),
    );

Map<String, dynamic> _$TermsToJson(Terms instance) => <String, dynamic>{
      'basic': instance.basic,
      'commands': instance.commands,
      'params': instance.params,
      'messages': instance.messages,
    };

TestBattler _$TestBattlerFromJson(Map<String, dynamic> json) => TestBattler(
      actorId: (json['actorId'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      equips: (json['equips'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$TestBattlerToJson(TestBattler instance) =>
    <String, dynamic>{
      'actorId': instance.actorId,
      'level': instance.level,
      'equips': instance.equips,
    };

TitleCommandWindow _$TitleCommandWindowFromJson(Map<String, dynamic> json) =>
    TitleCommandWindow(
      background: (json['background'] as num).toInt(),
      offsetX: (json['offsetX'] as num).toInt(),
      offsetY: (json['offsetY'] as num).toInt(),
    );

Map<String, dynamic> _$TitleCommandWindowToJson(TitleCommandWindow instance) =>
    <String, dynamic>{
      'background': instance.background,
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
    };
