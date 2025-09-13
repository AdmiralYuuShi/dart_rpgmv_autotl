import 'package:json_annotation/json_annotation.dart';

part 'rpg_model.g.dart';

@JsonSerializable()
class RpgModel {
  @JsonKey(name: "autoplayBgm")
  bool autoplayBgm;
  @JsonKey(name: "autoplayBgs")
  bool autoplayBgs;
  @JsonKey(name: "battleback1Name")
  String battleback1Name;
  @JsonKey(name: "battleback2Name")
  String battleback2Name;
  @JsonKey(name: "bgm")
  Bgm bgm;
  @JsonKey(name: "bgs")
  Bgm bgs;
  @JsonKey(name: "disableDashing")
  bool disableDashing;
  @JsonKey(name: "displayName")
  String displayName;
  @JsonKey(name: "encounterList")
  List<dynamic> encounterList;
  @JsonKey(name: "encounterStep")
  int encounterStep;
  @JsonKey(name: "height")
  int height;
  @JsonKey(name: "note")
  String note;
  @JsonKey(name: "parallaxLoopX")
  bool parallaxLoopX;
  @JsonKey(name: "parallaxLoopY")
  bool parallaxLoopY;
  @JsonKey(name: "parallaxName")
  String parallaxName;
  @JsonKey(name: "parallaxShow")
  bool parallaxShow;
  @JsonKey(name: "parallaxSx")
  int parallaxSx;
  @JsonKey(name: "parallaxSy")
  int parallaxSy;
  @JsonKey(name: "scrollType")
  int scrollType;
  @JsonKey(name: "specifyBattleback")
  bool specifyBattleback;
  @JsonKey(name: "tilesetId")
  int tilesetId;
  @JsonKey(name: "width")
  int width;
  @JsonKey(name: "data")
  List<int> data;
  @JsonKey(name: "events")
  List<Event?> events;

  RpgModel({
    required this.autoplayBgm,
    required this.autoplayBgs,
    required this.battleback1Name,
    required this.battleback2Name,
    required this.bgm,
    required this.bgs,
    required this.disableDashing,
    required this.displayName,
    required this.encounterList,
    required this.encounterStep,
    required this.height,
    required this.note,
    required this.parallaxLoopX,
    required this.parallaxLoopY,
    required this.parallaxName,
    required this.parallaxShow,
    required this.parallaxSx,
    required this.parallaxSy,
    required this.scrollType,
    required this.specifyBattleback,
    required this.tilesetId,
    required this.width,
    required this.data,
    required this.events,
  });

  RpgModel copyWith({
    bool? autoplayBgm,
    bool? autoplayBgs,
    String? battleback1Name,
    String? battleback2Name,
    Bgm? bgm,
    Bgm? bgs,
    bool? disableDashing,
    String? displayName,
    List<dynamic>? encounterList,
    int? encounterStep,
    int? height,
    String? note,
    bool? parallaxLoopX,
    bool? parallaxLoopY,
    String? parallaxName,
    bool? parallaxShow,
    int? parallaxSx,
    int? parallaxSy,
    int? scrollType,
    bool? specifyBattleback,
    int? tilesetId,
    int? width,
    List<int>? data,
    List<Event?>? events,
  }) =>
      RpgModel(
        autoplayBgm: autoplayBgm ?? this.autoplayBgm,
        autoplayBgs: autoplayBgs ?? this.autoplayBgs,
        battleback1Name: battleback1Name ?? this.battleback1Name,
        battleback2Name: battleback2Name ?? this.battleback2Name,
        bgm: bgm ?? this.bgm,
        bgs: bgs ?? this.bgs,
        disableDashing: disableDashing ?? this.disableDashing,
        displayName: displayName ?? this.displayName,
        encounterList: encounterList ?? this.encounterList,
        encounterStep: encounterStep ?? this.encounterStep,
        height: height ?? this.height,
        note: note ?? this.note,
        parallaxLoopX: parallaxLoopX ?? this.parallaxLoopX,
        parallaxLoopY: parallaxLoopY ?? this.parallaxLoopY,
        parallaxName: parallaxName ?? this.parallaxName,
        parallaxShow: parallaxShow ?? this.parallaxShow,
        parallaxSx: parallaxSx ?? this.parallaxSx,
        parallaxSy: parallaxSy ?? this.parallaxSy,
        scrollType: scrollType ?? this.scrollType,
        specifyBattleback: specifyBattleback ?? this.specifyBattleback,
        tilesetId: tilesetId ?? this.tilesetId,
        width: width ?? this.width,
        data: data ?? this.data,
        events: events ?? this.events,
      );

  factory RpgModel.fromJson(Map<String, dynamic> json) => _$RpgModelFromJson(json);

  Map<String, dynamic> toJson() => _$RpgModelToJson(this);
}

@JsonSerializable()
class Bgm {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "pan")
  int pan;
  @JsonKey(name: "pitch")
  int pitch;
  @JsonKey(name: "volume")
  int volume;

  Bgm({
    required this.name,
    required this.pan,
    required this.pitch,
    required this.volume,
  });

  Bgm copyWith({
    String? name,
    int? pan,
    int? pitch,
    int? volume,
  }) =>
      Bgm(
        name: name ?? this.name,
        pan: pan ?? this.pan,
        pitch: pitch ?? this.pitch,
        volume: volume ?? this.volume,
      );

  factory Bgm.fromJson(Map<String, dynamic> json) => _$BgmFromJson(json);

  Map<String, dynamic> toJson() => _$BgmToJson(this);
}

@JsonSerializable()
class Event {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "note")
  String note;
  @JsonKey(name: "pages")
  List<Page> pages;
  @JsonKey(name: "x")
  int x;
  @JsonKey(name: "y")
  int y;

  Event({
    required this.id,
    required this.name,
    required this.note,
    required this.pages,
    required this.x,
    required this.y,
  });

  Event copyWith({
    int? id,
    String? name,
    String? note,
    List<Page>? pages,
    int? x,
    int? y,
  }) =>
      Event(
        id: id ?? this.id,
        name: name ?? this.name,
        note: note ?? this.note,
        pages: pages ?? this.pages,
        x: x ?? this.x,
        y: y ?? this.y,
      );

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable()
class Page {
  @JsonKey(name: "conditions")
  Conditions conditions;
  @JsonKey(name: "directionFix")
  bool directionFix;
  @JsonKey(name: "image")
  Image image;
  @JsonKey(name: "list")
  List<PageList> list;
  @JsonKey(name: "moveFrequency")
  int moveFrequency;
  @JsonKey(name: "moveRoute")
  MoveRoute moveRoute;
  @JsonKey(name: "moveSpeed")
  int moveSpeed;
  @JsonKey(name: "moveType")
  int moveType;
  @JsonKey(name: "priorityType")
  int priorityType;
  @JsonKey(name: "stepAnime")
  bool stepAnime;
  @JsonKey(name: "through")
  bool through;
  @JsonKey(name: "trigger")
  int trigger;
  @JsonKey(name: "walkAnime")
  bool walkAnime;

  Page({
    required this.conditions,
    required this.directionFix,
    required this.image,
    required this.list,
    required this.moveFrequency,
    required this.moveRoute,
    required this.moveSpeed,
    required this.moveType,
    required this.priorityType,
    required this.stepAnime,
    required this.through,
    required this.trigger,
    required this.walkAnime,
  });

  Page copyWith({
    Conditions? conditions,
    bool? directionFix,
    Image? image,
    List<PageList>? list,
    int? moveFrequency,
    MoveRoute? moveRoute,
    int? moveSpeed,
    int? moveType,
    int? priorityType,
    bool? stepAnime,
    bool? through,
    int? trigger,
    bool? walkAnime,
  }) =>
      Page(
        conditions: conditions ?? this.conditions,
        directionFix: directionFix ?? this.directionFix,
        image: image ?? this.image,
        list: list ?? this.list,
        moveFrequency: moveFrequency ?? this.moveFrequency,
        moveRoute: moveRoute ?? this.moveRoute,
        moveSpeed: moveSpeed ?? this.moveSpeed,
        moveType: moveType ?? this.moveType,
        priorityType: priorityType ?? this.priorityType,
        stepAnime: stepAnime ?? this.stepAnime,
        through: through ?? this.through,
        trigger: trigger ?? this.trigger,
        walkAnime: walkAnime ?? this.walkAnime,
      );

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}

@JsonSerializable()
class Conditions {
  @JsonKey(name: "actorId")
  int actorId;
  @JsonKey(name: "actorValid")
  bool actorValid;
  @JsonKey(name: "itemId")
  int itemId;
  @JsonKey(name: "itemValid")
  bool itemValid;
  @JsonKey(name: "selfSwitchCh")
  String selfSwitchCh;
  @JsonKey(name: "selfSwitchValid")
  bool selfSwitchValid;
  @JsonKey(name: "switch1Id")
  int switch1Id;
  @JsonKey(name: "switch1Valid")
  bool switch1Valid;
  @JsonKey(name: "switch2Id")
  int switch2Id;
  @JsonKey(name: "switch2Valid")
  bool switch2Valid;
  @JsonKey(name: "variableId")
  int variableId;
  @JsonKey(name: "variableValid")
  bool variableValid;
  @JsonKey(name: "variableValue")
  int variableValue;

  Conditions({
    required this.actorId,
    required this.actorValid,
    required this.itemId,
    required this.itemValid,
    required this.selfSwitchCh,
    required this.selfSwitchValid,
    required this.switch1Id,
    required this.switch1Valid,
    required this.switch2Id,
    required this.switch2Valid,
    required this.variableId,
    required this.variableValid,
    required this.variableValue,
  });

  Conditions copyWith({
    int? actorId,
    bool? actorValid,
    int? itemId,
    bool? itemValid,
    String? selfSwitchCh,
    bool? selfSwitchValid,
    int? switch1Id,
    bool? switch1Valid,
    int? switch2Id,
    bool? switch2Valid,
    int? variableId,
    bool? variableValid,
    int? variableValue,
  }) =>
      Conditions(
        actorId: actorId ?? this.actorId,
        actorValid: actorValid ?? this.actorValid,
        itemId: itemId ?? this.itemId,
        itemValid: itemValid ?? this.itemValid,
        selfSwitchCh: selfSwitchCh ?? this.selfSwitchCh,
        selfSwitchValid: selfSwitchValid ?? this.selfSwitchValid,
        switch1Id: switch1Id ?? this.switch1Id,
        switch1Valid: switch1Valid ?? this.switch1Valid,
        switch2Id: switch2Id ?? this.switch2Id,
        switch2Valid: switch2Valid ?? this.switch2Valid,
        variableId: variableId ?? this.variableId,
        variableValid: variableValid ?? this.variableValid,
        variableValue: variableValue ?? this.variableValue,
      );

  factory Conditions.fromJson(Map<String, dynamic> json) => _$ConditionsFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionsToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "tileId")
  int tileId;
  @JsonKey(name: "characterName")
  String characterName;
  @JsonKey(name: "direction")
  int direction;
  @JsonKey(name: "pattern")
  int pattern;
  @JsonKey(name: "characterIndex")
  int characterIndex;

  Image({
    required this.tileId,
    required this.characterName,
    required this.direction,
    required this.pattern,
    required this.characterIndex,
  });

  Image copyWith({
    int? tileId,
    String? characterName,
    int? direction,
    int? pattern,
    int? characterIndex,
  }) =>
      Image(
        tileId: tileId ?? this.tileId,
        characterName: characterName ?? this.characterName,
        direction: direction ?? this.direction,
        pattern: pattern ?? this.pattern,
        characterIndex: characterIndex ?? this.characterIndex,
      );

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class PageList {
  @JsonKey(name: "code")
  int code;
  @JsonKey(name: "indent")
  int indent;
  @JsonKey(name: "parameters")
  List<dynamic> parameters;

  PageList({
    required this.code,
    required this.indent,
    required this.parameters,
  });

  PageList copyWith({
    int? code,
    int? indent,
    List<dynamic>? parameters,
  }) =>
      PageList(
        code: code ?? this.code,
        indent: indent ?? this.indent,
        parameters: parameters ?? this.parameters,
      );

  factory PageList.fromJson(Map<String, dynamic> json) => _$PageListFromJson(json);

  Map<String, dynamic> toJson() => _$PageListToJson(this);
}

@JsonSerializable()
class ParameterClass {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "volume")
  int? volume;
  @JsonKey(name: "pitch")
  int? pitch;
  @JsonKey(name: "pan")
  int? pan;
  @JsonKey(name: "repeat")
  bool? repeat;
  @JsonKey(name: "skippable")
  bool? skippable;
  @JsonKey(name: "wait")
  bool? wait;
  @JsonKey(name: "list")
  List<ParameterList>? list;
  @JsonKey(name: "code")
  int? code;
  @JsonKey(name: "parameters")
  List<int>? parameters;

  ParameterClass({
    this.name,
    this.volume,
    this.pitch,
    this.pan,
    this.repeat,
    this.skippable,
    this.wait,
    this.list,
    this.code,
    this.parameters,
  });

  ParameterClass copyWith({
    String? name,
    int? volume,
    int? pitch,
    int? pan,
    bool? repeat,
    bool? skippable,
    bool? wait,
    List<ParameterList>? list,
    int? code,
    List<int>? parameters,
  }) =>
      ParameterClass(
        name: name ?? this.name,
        volume: volume ?? this.volume,
        pitch: pitch ?? this.pitch,
        pan: pan ?? this.pan,
        repeat: repeat ?? this.repeat,
        skippable: skippable ?? this.skippable,
        wait: wait ?? this.wait,
        list: list ?? this.list,
        code: code ?? this.code,
        parameters: parameters ?? this.parameters,
      );

  factory ParameterClass.fromJson(Map<String, dynamic> json) => _$ParameterClassFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterClassToJson(this);
}

@JsonSerializable()
class ParameterList {
  @JsonKey(name: "code")
  int code;
  @JsonKey(name: "parameters")
  List<int>? parameters;

  ParameterList({
    required this.code,
    this.parameters,
  });

  ParameterList copyWith({
    int? code,
    List<int>? parameters,
  }) =>
      ParameterList(
        code: code ?? this.code,
        parameters: parameters ?? this.parameters,
      );

  factory ParameterList.fromJson(Map<String, dynamic> json) => _$ParameterListFromJson(json);

  Map<String, dynamic> toJson() => _$ParameterListToJson(this);
}

@JsonSerializable()
class MoveRoute {
  @JsonKey(name: "list")
  List<MoveRouteList> list;
  @JsonKey(name: "repeat")
  bool repeat;
  @JsonKey(name: "skippable")
  bool skippable;
  @JsonKey(name: "wait")
  bool wait;

  MoveRoute({
    required this.list,
    required this.repeat,
    required this.skippable,
    required this.wait,
  });

  MoveRoute copyWith({
    List<MoveRouteList>? list,
    bool? repeat,
    bool? skippable,
    bool? wait,
  }) =>
      MoveRoute(
        list: list ?? this.list,
        repeat: repeat ?? this.repeat,
        skippable: skippable ?? this.skippable,
        wait: wait ?? this.wait,
      );

  factory MoveRoute.fromJson(Map<String, dynamic> json) => _$MoveRouteFromJson(json);

  Map<String, dynamic> toJson() => _$MoveRouteToJson(this);
}

@JsonSerializable()
class MoveRouteList {
  @JsonKey(name: "code")
  int code;
  @JsonKey(name: "parameters")
  List<int>? parameters;
  @JsonKey(name: "indent")
  dynamic indent;

  MoveRouteList({
    required this.code,
    this.parameters,
    this.indent,
  });

  MoveRouteList copyWith({
    int? code,
    List<int>? parameters,
    dynamic indent,
  }) =>
      MoveRouteList(
        code: code ?? this.code,
        parameters: parameters ?? this.parameters,
        indent: indent ?? this.indent,
      );

  factory MoveRouteList.fromJson(Map<String, dynamic> json) => _$MoveRouteListFromJson(json);

  Map<String, dynamic> toJson() => _$MoveRouteListToJson(this);
}
