// ignore_for_file: non_constant_identifier_names

library TopBar_Event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'TopBar_Event.g.dart';

abstract class TopBarEvent {}



abstract class ClearError extends TopBarEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();
  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}


abstract class ChangeIndex1 extends TopBarEvent
    implements Built<ChangeIndex1, ChangeIndex1Builder> {
  ChangeIndex1._();
  factory ChangeIndex1([updates(ChangeIndex1Builder b)]) = _$ChangeIndex1;
}


abstract class ChangeIndex2 extends TopBarEvent
    implements Built<ChangeIndex2, ChangeIndex2Builder> {
  ChangeIndex2._();
  factory ChangeIndex2([updates(ChangeIndex2Builder b)]) = _$ChangeIndex2;
}


abstract class ChangeIndex3 extends TopBarEvent
    implements Built<ChangeIndex3, ChangeIndex3Builder> {
  ChangeIndex3._();
  factory ChangeIndex3([updates(ChangeIndex3Builder b)]) = _$ChangeIndex3;
}


abstract class ChangeIndex4 extends TopBarEvent
    implements Built<ChangeIndex4, ChangeIndex4Builder> {
  ChangeIndex4._();
  factory ChangeIndex4([updates(ChangeIndex4Builder b)]) = _$ChangeIndex4;
}
abstract class ChangeIndex5 extends TopBarEvent
    implements Built<ChangeIndex5, ChangeIndex5Builder> {
  ChangeIndex5._();
  factory ChangeIndex5([updates(ChangeIndex5Builder b)]) = _$ChangeIndex5;
}



abstract class ChangePAGEINDEX extends TopBarEvent
    implements Built<ChangePAGEINDEX, ChangePAGEINDEXBuilder> {

  int? get num;
  ChangePAGEINDEX._();
  factory ChangePAGEINDEX([updates(ChangePAGEINDEXBuilder b)]) = _$ChangePAGEINDEX;
}

abstract class GetProfile extends TopBarEvent
    implements Built<GetProfile,GetProfileBuilder> {

  GetProfile._();
  factory GetProfile([updates(GetProfileBuilder b)]) = _$GetProfile;
}
abstract class GetFreinds extends TopBarEvent
    implements Built<GetFreinds,GetFreindsBuilder> {

  GetFreinds._();
  factory GetFreinds([updates(GetFreindsBuilder b)]) = _$GetFreinds;
}

abstract class ClearBadge extends TopBarEvent
    implements Built<ClearBadge,ClearBadgeBuilder> {

  ClearBadge._();
  factory ClearBadge([updates(ClearBadgeBuilder b)]) = _$ClearBadge;
}
abstract class GetBadge extends TopBarEvent
    implements Built<GetBadge,GetBadgeBuilder> {

  GetBadge._();
  factory GetBadge([updates(GetBadgeBuilder b)]) = _$GetBadge;
}

abstract class Change_Is_Creator extends TopBarEvent
    implements Built<Change_Is_Creator,Change_Is_CreatorBuilder> {
bool? get ChangeISCreator;
  Change_Is_Creator._();
  factory Change_Is_Creator([updates(Change_Is_CreatorBuilder b)]) = _$Change_Is_Creator;
}
