// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RpgModel _$RpgModelFromJson(Map<String, dynamic> json) => RpgModel(
      autoplayBgm: json['autoplayBgm'] as bool,
      autoplayBgs: json['autoplayBgs'] as bool,
      battleback1Name: json['battleback1Name'] as String,
      battleback2Name: json['battleback2Name'] as String,
      bgm: Bgm.fromJson(json['bgm'] as Map<String, dynamic>),
      bgs: Bgm.fromJson(json['bgs'] as Map<String, dynamic>),
      disableDashing: json['disableDashing'] as bool,
      displayName: json['displayName'] as String,
      encounterList: json['encounterList'] as List<dynamic>,
      encounterStep: (json['encounterStep'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      note: json['note'] as String,
      parallaxLoopX: json['parallaxLoopX'] as bool,
      parallaxLoopY: json['parallaxLoopY'] as bool,
      parallaxName: json['parallaxName'] as String,
      parallaxShow: json['parallaxShow'] as bool,
      parallaxSx: (json['parallaxSx'] as num).toInt(),
      parallaxSy: (json['parallaxSy'] as num).toInt(),
      scrollType: (json['scrollType'] as num).toInt(),
      specifyBattleback: json['specifyBattleback'] as bool,
      tilesetId: (json['tilesetId'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              e == null ? null : Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RpgModelToJson(RpgModel instance) => <String, dynamic>{
      'autoplayBgm': instance.autoplayBgm,
      'autoplayBgs': instance.autoplayBgs,
      'battleback1Name': instance.battleback1Name,
      'battleback2Name': instance.battleback2Name,
      'bgm': instance.bgm,
      'bgs': instance.bgs,
      'disableDashing': instance.disableDashing,
      'displayName': instance.displayName,
      'encounterList': instance.encounterList,
      'encounterStep': instance.encounterStep,
      'height': instance.height,
      'note': instance.note,
      'parallaxLoopX': instance.parallaxLoopX,
      'parallaxLoopY': instance.parallaxLoopY,
      'parallaxName': instance.parallaxName,
      'parallaxShow': instance.parallaxShow,
      'parallaxSx': instance.parallaxSx,
      'parallaxSy': instance.parallaxSy,
      'scrollType': instance.scrollType,
      'specifyBattleback': instance.specifyBattleback,
      'tilesetId': instance.tilesetId,
      'width': instance.width,
      'data': instance.data,
      'events': instance.events,
    };

Bgm _$BgmFromJson(Map<String, dynamic> json) => Bgm(
      name: json['name'] as String,
      pan: (json['pan'] as num).toInt(),
      pitch: (json['pitch'] as num).toInt(),
      volume: (json['volume'] as num).toInt(),
    );

Map<String, dynamic> _$BgmToJson(Bgm instance) => <String, dynamic>{
      'name': instance.name,
      'pan': instance.pan,
      'pitch': instance.pitch,
      'volume': instance.volume,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      note: json['note'] as String,
      pages: (json['pages'] as List<dynamic>)
          .map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      x: (json['x'] as num).toInt(),
      y: (json['y'] as num).toInt(),
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'note': instance.note,
      'pages': instance.pages,
      'x': instance.x,
      'y': instance.y,
    };

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      conditions:
          Conditions.fromJson(json['conditions'] as Map<String, dynamic>),
      directionFix: json['directionFix'] as bool,
      image: Image.fromJson(json['image'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>)
          .map((e) => PageList.fromJson(e as Map<String, dynamic>))
          .toList(),
      moveFrequency: (json['moveFrequency'] as num).toInt(),
      moveRoute: MoveRoute.fromJson(json['moveRoute'] as Map<String, dynamic>),
      moveSpeed: (json['moveSpeed'] as num).toInt(),
      moveType: (json['moveType'] as num).toInt(),
      priorityType: (json['priorityType'] as num).toInt(),
      stepAnime: json['stepAnime'] as bool,
      through: json['through'] as bool,
      trigger: (json['trigger'] as num).toInt(),
      walkAnime: json['walkAnime'] as bool,
    );

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'conditions': instance.conditions,
      'directionFix': instance.directionFix,
      'image': instance.image,
      'list': instance.list,
      'moveFrequency': instance.moveFrequency,
      'moveRoute': instance.moveRoute,
      'moveSpeed': instance.moveSpeed,
      'moveType': instance.moveType,
      'priorityType': instance.priorityType,
      'stepAnime': instance.stepAnime,
      'through': instance.through,
      'trigger': instance.trigger,
      'walkAnime': instance.walkAnime,
    };

Conditions _$ConditionsFromJson(Map<String, dynamic> json) => Conditions(
      actorId: (json['actorId'] as num).toInt(),
      actorValid: json['actorValid'] as bool,
      itemId: (json['itemId'] as num).toInt(),
      itemValid: json['itemValid'] as bool,
      selfSwitchCh: json['selfSwitchCh'] as String,
      selfSwitchValid: json['selfSwitchValid'] as bool,
      switch1Id: (json['switch1Id'] as num).toInt(),
      switch1Valid: json['switch1Valid'] as bool,
      switch2Id: (json['switch2Id'] as num).toInt(),
      switch2Valid: json['switch2Valid'] as bool,
      variableId: (json['variableId'] as num).toInt(),
      variableValid: json['variableValid'] as bool,
      variableValue: (json['variableValue'] as num).toInt(),
    );

Map<String, dynamic> _$ConditionsToJson(Conditions instance) =>
    <String, dynamic>{
      'actorId': instance.actorId,
      'actorValid': instance.actorValid,
      'itemId': instance.itemId,
      'itemValid': instance.itemValid,
      'selfSwitchCh': instance.selfSwitchCh,
      'selfSwitchValid': instance.selfSwitchValid,
      'switch1Id': instance.switch1Id,
      'switch1Valid': instance.switch1Valid,
      'switch2Id': instance.switch2Id,
      'switch2Valid': instance.switch2Valid,
      'variableId': instance.variableId,
      'variableValid': instance.variableValid,
      'variableValue': instance.variableValue,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      tileId: (json['tileId'] as num).toInt(),
      characterName: json['characterName'] as String,
      direction: (json['direction'] as num).toInt(),
      pattern: (json['pattern'] as num).toInt(),
      characterIndex: (json['characterIndex'] as num).toInt(),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'tileId': instance.tileId,
      'characterName': instance.characterName,
      'direction': instance.direction,
      'pattern': instance.pattern,
      'characterIndex': instance.characterIndex,
    };

PageList _$PageListFromJson(Map<String, dynamic> json) => PageList(
      code: (json['code'] as num).toInt(),
      indent: (json['indent'] as num).toInt(),
      parameters: json['parameters'] as List<dynamic>,
    );

Map<String, dynamic> _$PageListToJson(PageList instance) => <String, dynamic>{
      'code': instance.code,
      'indent': instance.indent,
      'parameters': instance.parameters,
    };

ParameterClass _$ParameterClassFromJson(Map<String, dynamic> json) =>
    ParameterClass(
      name: json['name'] as String?,
      volume: (json['volume'] as num?)?.toInt(),
      pitch: (json['pitch'] as num?)?.toInt(),
      pan: (json['pan'] as num?)?.toInt(),
      repeat: json['repeat'] as bool?,
      skippable: json['skippable'] as bool?,
      wait: json['wait'] as bool?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ParameterList.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: (json['code'] as num?)?.toInt(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ParameterClassToJson(ParameterClass instance) =>
    <String, dynamic>{
      'name': instance.name,
      'volume': instance.volume,
      'pitch': instance.pitch,
      'pan': instance.pan,
      'repeat': instance.repeat,
      'skippable': instance.skippable,
      'wait': instance.wait,
      'list': instance.list,
      'code': instance.code,
      'parameters': instance.parameters,
    };

ParameterList _$ParameterListFromJson(Map<String, dynamic> json) =>
    ParameterList(
      code: (json['code'] as num).toInt(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ParameterListToJson(ParameterList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'parameters': instance.parameters,
    };

MoveRoute _$MoveRouteFromJson(Map<String, dynamic> json) => MoveRoute(
      list: (json['list'] as List<dynamic>)
          .map((e) => MoveRouteList.fromJson(e as Map<String, dynamic>))
          .toList(),
      repeat: json['repeat'] as bool,
      skippable: json['skippable'] as bool,
      wait: json['wait'] as bool,
    );

Map<String, dynamic> _$MoveRouteToJson(MoveRoute instance) => <String, dynamic>{
      'list': instance.list,
      'repeat': instance.repeat,
      'skippable': instance.skippable,
      'wait': instance.wait,
    };

MoveRouteList _$MoveRouteListFromJson(Map<String, dynamic> json) =>
    MoveRouteList(
      code: (json['code'] as num).toInt(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      indent: json['indent'],
    );

Map<String, dynamic> _$MoveRouteListToJson(MoveRouteList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'parameters': instance.parameters,
      'indent': instance.indent,
    };
