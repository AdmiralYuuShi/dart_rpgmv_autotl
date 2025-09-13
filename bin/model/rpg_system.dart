import 'package:json_annotation/json_annotation.dart';

part 'rpg_system.g.dart';

@JsonSerializable()
class RpgSystem {
  @JsonKey(name: "advanced")
  Advanced advanced;
  @JsonKey(name: "airship")
  Airship airship;
  @JsonKey(name: "armorTypes")
  List<String> armorTypes;
  @JsonKey(name: "attackMotions")
  List<AttackMotion> attackMotions;
  @JsonKey(name: "battleBgm")
  BattleBgm battleBgm;
  @JsonKey(name: "battleback1Name")
  String battleback1Name;
  @JsonKey(name: "battleback2Name")
  String battleback2Name;
  @JsonKey(name: "battlerHue")
  int battlerHue;
  @JsonKey(name: "battlerName")
  String battlerName;
  @JsonKey(name: "battleSystem")
  int battleSystem;
  @JsonKey(name: "boat")
  Airship boat;
  @JsonKey(name: "currencyUnit")
  String currencyUnit;
  @JsonKey(name: "defeatMe")
  BattleBgm defeatMe;
  @JsonKey(name: "editMapId")
  int editMapId;
  @JsonKey(name: "elements")
  List<String> elements;
  @JsonKey(name: "equipTypes")
  List<String> equipTypes;
  @JsonKey(name: "gameTitle")
  String gameTitle;
  @JsonKey(name: "gameoverMe")
  BattleBgm gameoverMe;
  @JsonKey(name: "itemCategories")
  List<bool> itemCategories;
  @JsonKey(name: "locale")
  String locale;
  @JsonKey(name: "magicSkills")
  List<int> magicSkills;
  @JsonKey(name: "menuCommands")
  List<bool> menuCommands;
  @JsonKey(name: "optAutosave")
  bool optAutosave;
  @JsonKey(name: "optDisplayTp")
  bool optDisplayTp;
  @JsonKey(name: "optDrawTitle")
  bool optDrawTitle;
  @JsonKey(name: "optExtraExp")
  bool optExtraExp;
  @JsonKey(name: "optFloorDeath")
  bool optFloorDeath;
  @JsonKey(name: "optFollowers")
  bool optFollowers;
  @JsonKey(name: "optKeyItemsNumber")
  bool optKeyItemsNumber;
  @JsonKey(name: "optSideView")
  bool optSideView;
  @JsonKey(name: "optSlipDeath")
  bool optSlipDeath;
  @JsonKey(name: "optTransparent")
  bool optTransparent;
  @JsonKey(name: "partyMembers")
  List<int> partyMembers;
  @JsonKey(name: "ship")
  Airship ship;
  @JsonKey(name: "skillTypes")
  List<String> skillTypes;
  @JsonKey(name: "sounds")
  List<BattleBgm> sounds;
  @JsonKey(name: "startMapId")
  int startMapId;
  @JsonKey(name: "startX")
  int startX;
  @JsonKey(name: "startY")
  int startY;
  @JsonKey(name: "switches")
  List<String> switches;
  @JsonKey(name: "terms")
  Terms terms;
  @JsonKey(name: "testBattlers")
  List<TestBattler> testBattlers;
  @JsonKey(name: "testTroopId")
  int testTroopId;
  @JsonKey(name: "title1Name")
  String title1Name;
  @JsonKey(name: "title2Name")
  String title2Name;
  @JsonKey(name: "titleBgm")
  BattleBgm titleBgm;
  @JsonKey(name: "titleCommandWindow")
  TitleCommandWindow titleCommandWindow;
  @JsonKey(name: "variables")
  List<String> variables;
  @JsonKey(name: "versionId")
  int versionId;
  @JsonKey(name: "victoryMe")
  BattleBgm victoryMe;
  @JsonKey(name: "weaponTypes")
  List<String> weaponTypes;
  @JsonKey(name: "windowTone")
  List<int> windowTone;
  @JsonKey(name: "hasEncryptedImages")
  bool hasEncryptedImages;
  @JsonKey(name: "hasEncryptedAudio")
  bool hasEncryptedAudio;
  @JsonKey(name: "encryptionKey")
  String encryptionKey;

  RpgSystem({
    required this.advanced,
    required this.airship,
    required this.armorTypes,
    required this.attackMotions,
    required this.battleBgm,
    required this.battleback1Name,
    required this.battleback2Name,
    required this.battlerHue,
    required this.battlerName,
    required this.battleSystem,
    required this.boat,
    required this.currencyUnit,
    required this.defeatMe,
    required this.editMapId,
    required this.elements,
    required this.equipTypes,
    required this.gameTitle,
    required this.gameoverMe,
    required this.itemCategories,
    required this.locale,
    required this.magicSkills,
    required this.menuCommands,
    required this.optAutosave,
    required this.optDisplayTp,
    required this.optDrawTitle,
    required this.optExtraExp,
    required this.optFloorDeath,
    required this.optFollowers,
    required this.optKeyItemsNumber,
    required this.optSideView,
    required this.optSlipDeath,
    required this.optTransparent,
    required this.partyMembers,
    required this.ship,
    required this.skillTypes,
    required this.sounds,
    required this.startMapId,
    required this.startX,
    required this.startY,
    required this.switches,
    required this.terms,
    required this.testBattlers,
    required this.testTroopId,
    required this.title1Name,
    required this.title2Name,
    required this.titleBgm,
    required this.titleCommandWindow,
    required this.variables,
    required this.versionId,
    required this.victoryMe,
    required this.weaponTypes,
    required this.windowTone,
    required this.hasEncryptedImages,
    required this.hasEncryptedAudio,
    required this.encryptionKey,
  });

  RpgSystem copyWith({
    Advanced? advanced,
    Airship? airship,
    List<String>? armorTypes,
    List<AttackMotion>? attackMotions,
    BattleBgm? battleBgm,
    String? battleback1Name,
    String? battleback2Name,
    int? battlerHue,
    String? battlerName,
    int? battleSystem,
    Airship? boat,
    String? currencyUnit,
    BattleBgm? defeatMe,
    int? editMapId,
    List<String>? elements,
    List<String>? equipTypes,
    String? gameTitle,
    BattleBgm? gameoverMe,
    List<bool>? itemCategories,
    String? locale,
    List<int>? magicSkills,
    List<bool>? menuCommands,
    bool? optAutosave,
    bool? optDisplayTp,
    bool? optDrawTitle,
    bool? optExtraExp,
    bool? optFloorDeath,
    bool? optFollowers,
    bool? optKeyItemsNumber,
    bool? optSideView,
    bool? optSlipDeath,
    bool? optTransparent,
    List<int>? partyMembers,
    Airship? ship,
    List<String>? skillTypes,
    List<BattleBgm>? sounds,
    int? startMapId,
    int? startX,
    int? startY,
    List<String>? switches,
    Terms? terms,
    List<TestBattler>? testBattlers,
    int? testTroopId,
    String? title1Name,
    String? title2Name,
    BattleBgm? titleBgm,
    TitleCommandWindow? titleCommandWindow,
    List<String>? variables,
    int? versionId,
    BattleBgm? victoryMe,
    List<String>? weaponTypes,
    List<int>? windowTone,
    bool? hasEncryptedImages,
    bool? hasEncryptedAudio,
    String? encryptionKey,
  }) =>
      RpgSystem(
        advanced: advanced ?? this.advanced,
        airship: airship ?? this.airship,
        armorTypes: armorTypes ?? this.armorTypes,
        attackMotions: attackMotions ?? this.attackMotions,
        battleBgm: battleBgm ?? this.battleBgm,
        battleback1Name: battleback1Name ?? this.battleback1Name,
        battleback2Name: battleback2Name ?? this.battleback2Name,
        battlerHue: battlerHue ?? this.battlerHue,
        battlerName: battlerName ?? this.battlerName,
        battleSystem: battleSystem ?? this.battleSystem,
        boat: boat ?? this.boat,
        currencyUnit: currencyUnit ?? this.currencyUnit,
        defeatMe: defeatMe ?? this.defeatMe,
        editMapId: editMapId ?? this.editMapId,
        elements: elements ?? this.elements,
        equipTypes: equipTypes ?? this.equipTypes,
        gameTitle: gameTitle ?? this.gameTitle,
        gameoverMe: gameoverMe ?? this.gameoverMe,
        itemCategories: itemCategories ?? this.itemCategories,
        locale: locale ?? this.locale,
        magicSkills: magicSkills ?? this.magicSkills,
        menuCommands: menuCommands ?? this.menuCommands,
        optAutosave: optAutosave ?? this.optAutosave,
        optDisplayTp: optDisplayTp ?? this.optDisplayTp,
        optDrawTitle: optDrawTitle ?? this.optDrawTitle,
        optExtraExp: optExtraExp ?? this.optExtraExp,
        optFloorDeath: optFloorDeath ?? this.optFloorDeath,
        optFollowers: optFollowers ?? this.optFollowers,
        optKeyItemsNumber: optKeyItemsNumber ?? this.optKeyItemsNumber,
        optSideView: optSideView ?? this.optSideView,
        optSlipDeath: optSlipDeath ?? this.optSlipDeath,
        optTransparent: optTransparent ?? this.optTransparent,
        partyMembers: partyMembers ?? this.partyMembers,
        ship: ship ?? this.ship,
        skillTypes: skillTypes ?? this.skillTypes,
        sounds: sounds ?? this.sounds,
        startMapId: startMapId ?? this.startMapId,
        startX: startX ?? this.startX,
        startY: startY ?? this.startY,
        switches: switches ?? this.switches,
        terms: terms ?? this.terms,
        testBattlers: testBattlers ?? this.testBattlers,
        testTroopId: testTroopId ?? this.testTroopId,
        title1Name: title1Name ?? this.title1Name,
        title2Name: title2Name ?? this.title2Name,
        titleBgm: titleBgm ?? this.titleBgm,
        titleCommandWindow: titleCommandWindow ?? this.titleCommandWindow,
        variables: variables ?? this.variables,
        versionId: versionId ?? this.versionId,
        victoryMe: victoryMe ?? this.victoryMe,
        weaponTypes: weaponTypes ?? this.weaponTypes,
        windowTone: windowTone ?? this.windowTone,
        hasEncryptedImages: hasEncryptedImages ?? this.hasEncryptedImages,
        hasEncryptedAudio: hasEncryptedAudio ?? this.hasEncryptedAudio,
        encryptionKey: encryptionKey ?? this.encryptionKey,
      );

  factory RpgSystem.fromJson(Map<String, dynamic> json) => _$RpgSystemFromJson(json);

  Map<String, dynamic> toJson() => _$RpgSystemToJson(this);
}

@JsonSerializable()
class Advanced {
  @JsonKey(name: "gameId")
  int gameId;
  @JsonKey(name: "screenWidth")
  int screenWidth;
  @JsonKey(name: "screenHeight")
  int screenHeight;
  @JsonKey(name: "uiAreaWidth")
  int uiAreaWidth;
  @JsonKey(name: "uiAreaHeight")
  int uiAreaHeight;
  @JsonKey(name: "numberFontFilename")
  String numberFontFilename;
  @JsonKey(name: "fallbackFonts")
  String fallbackFonts;
  @JsonKey(name: "fontSize")
  int fontSize;
  @JsonKey(name: "mainFontFilename")
  String mainFontFilename;
  @JsonKey(name: "windowOpacity")
  int windowOpacity;

  Advanced({
    required this.gameId,
    required this.screenWidth,
    required this.screenHeight,
    required this.uiAreaWidth,
    required this.uiAreaHeight,
    required this.numberFontFilename,
    required this.fallbackFonts,
    required this.fontSize,
    required this.mainFontFilename,
    required this.windowOpacity,
  });

  Advanced copyWith({
    int? gameId,
    int? screenWidth,
    int? screenHeight,
    int? uiAreaWidth,
    int? uiAreaHeight,
    String? numberFontFilename,
    String? fallbackFonts,
    int? fontSize,
    String? mainFontFilename,
    int? windowOpacity,
  }) =>
      Advanced(
        gameId: gameId ?? this.gameId,
        screenWidth: screenWidth ?? this.screenWidth,
        screenHeight: screenHeight ?? this.screenHeight,
        uiAreaWidth: uiAreaWidth ?? this.uiAreaWidth,
        uiAreaHeight: uiAreaHeight ?? this.uiAreaHeight,
        numberFontFilename: numberFontFilename ?? this.numberFontFilename,
        fallbackFonts: fallbackFonts ?? this.fallbackFonts,
        fontSize: fontSize ?? this.fontSize,
        mainFontFilename: mainFontFilename ?? this.mainFontFilename,
        windowOpacity: windowOpacity ?? this.windowOpacity,
      );

  factory Advanced.fromJson(Map<String, dynamic> json) => _$AdvancedFromJson(json);

  Map<String, dynamic> toJson() => _$AdvancedToJson(this);
}

@JsonSerializable()
class Airship {
  @JsonKey(name: "bgm")
  BattleBgm bgm;
  @JsonKey(name: "characterIndex")
  int characterIndex;
  @JsonKey(name: "characterName")
  String characterName;
  @JsonKey(name: "startMapId")
  int startMapId;
  @JsonKey(name: "startX")
  int startX;
  @JsonKey(name: "startY")
  int startY;

  Airship({
    required this.bgm,
    required this.characterIndex,
    required this.characterName,
    required this.startMapId,
    required this.startX,
    required this.startY,
  });

  Airship copyWith({
    BattleBgm? bgm,
    int? characterIndex,
    String? characterName,
    int? startMapId,
    int? startX,
    int? startY,
  }) =>
      Airship(
        bgm: bgm ?? this.bgm,
        characterIndex: characterIndex ?? this.characterIndex,
        characterName: characterName ?? this.characterName,
        startMapId: startMapId ?? this.startMapId,
        startX: startX ?? this.startX,
        startY: startY ?? this.startY,
      );

  factory Airship.fromJson(Map<String, dynamic> json) => _$AirshipFromJson(json);

  Map<String, dynamic> toJson() => _$AirshipToJson(this);
}

@JsonSerializable()
class BattleBgm {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "pan")
  int pan;
  @JsonKey(name: "pitch")
  int pitch;
  @JsonKey(name: "volume")
  int volume;

  BattleBgm({
    required this.name,
    required this.pan,
    required this.pitch,
    required this.volume,
  });

  BattleBgm copyWith({
    String? name,
    int? pan,
    int? pitch,
    int? volume,
  }) =>
      BattleBgm(
        name: name ?? this.name,
        pan: pan ?? this.pan,
        pitch: pitch ?? this.pitch,
        volume: volume ?? this.volume,
      );

  factory BattleBgm.fromJson(Map<String, dynamic> json) => _$BattleBgmFromJson(json);

  Map<String, dynamic> toJson() => _$BattleBgmToJson(this);
}

@JsonSerializable()
class AttackMotion {
  @JsonKey(name: "type")
  int type;
  @JsonKey(name: "weaponImageId")
  int weaponImageId;

  AttackMotion({
    required this.type,
    required this.weaponImageId,
  });

  AttackMotion copyWith({
    int? type,
    int? weaponImageId,
  }) =>
      AttackMotion(
        type: type ?? this.type,
        weaponImageId: weaponImageId ?? this.weaponImageId,
      );

  factory AttackMotion.fromJson(Map<String, dynamic> json) => _$AttackMotionFromJson(json);

  Map<String, dynamic> toJson() => _$AttackMotionToJson(this);
}

@JsonSerializable()
class Terms {
  @JsonKey(name: "basic")
  List<String> basic;
  @JsonKey(name: "commands")
  List<String?> commands;
  @JsonKey(name: "params")
  List<String> params;
  @JsonKey(name: "messages")
  Map<String, String> messages;

  Terms({
    required this.basic,
    required this.commands,
    required this.params,
    required this.messages,
  });

  Terms copyWith({
    List<String>? basic,
    List<String?>? commands,
    List<String>? params,
    Map<String, String>? messages,
  }) =>
      Terms(
        basic: basic ?? this.basic,
        commands: commands ?? this.commands,
        params: params ?? this.params,
        messages: messages ?? this.messages,
      );

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);

  Map<String, dynamic> toJson() => _$TermsToJson(this);
}

@JsonSerializable()
class TestBattler {
  @JsonKey(name: "actorId")
  int actorId;
  @JsonKey(name: "level")
  int level;
  @JsonKey(name: "equips")
  List<int> equips;

  TestBattler({
    required this.actorId,
    required this.level,
    required this.equips,
  });

  TestBattler copyWith({
    int? actorId,
    int? level,
    List<int>? equips,
  }) =>
      TestBattler(
        actorId: actorId ?? this.actorId,
        level: level ?? this.level,
        equips: equips ?? this.equips,
      );

  factory TestBattler.fromJson(Map<String, dynamic> json) => _$TestBattlerFromJson(json);

  Map<String, dynamic> toJson() => _$TestBattlerToJson(this);
}

@JsonSerializable()
class TitleCommandWindow {
  @JsonKey(name: "background")
  int background;
  @JsonKey(name: "offsetX")
  int offsetX;
  @JsonKey(name: "offsetY")
  int offsetY;

  TitleCommandWindow({
    required this.background,
    required this.offsetX,
    required this.offsetY,
  });

  TitleCommandWindow copyWith({
    int? background,
    int? offsetX,
    int? offsetY,
  }) =>
      TitleCommandWindow(
        background: background ?? this.background,
        offsetX: offsetX ?? this.offsetX,
        offsetY: offsetY ?? this.offsetY,
      );

  factory TitleCommandWindow.fromJson(Map<String, dynamic> json) => _$TitleCommandWindowFromJson(json);

  Map<String, dynamic> toJson() => _$TitleCommandWindowToJson(this);
}
