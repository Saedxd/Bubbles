// ignore_for_file: non_constant_identifier_names

library DirectMessages_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'DirectMessages_event.g.dart';

abstract class DirectMessagesEvent {}

abstract class ClearError extends DirectMessagesEvent
    implements Built<ClearError, ClearErrorBuilder> {
  ClearError._();
  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}

abstract class GetLastMessageWithAllUsers extends DirectMessagesEvent
    implements Built<GetLastMessageWithAllUsers, GetLastMessageWithAllUsersBuilder> {

  GetLastMessageWithAllUsers._();
  factory GetLastMessageWithAllUsers([updates(GetLastMessageWithAllUsersBuilder b)]) = _$GetLastMessageWithAllUsers;
}

abstract class RefreshPage extends DirectMessagesEvent
    implements Built<RefreshPage, RefreshPageBuilder> {

  RefreshPage._();
  factory RefreshPage([updates(RefreshPageBuilder b)]) = _$RefreshPage;
}

abstract class RefreshState extends DirectMessagesEvent
    implements Built<RefreshState,RefreshStateBuilder> {

  RefreshState._();
  factory RefreshState([updates(RefreshStateBuilder b)]) = _$RefreshState;
}

abstract class SearchDMlist extends DirectMessagesEvent
    implements Built<SearchDMlist,SearchDMlistBuilder> {
String? get Keyword;
  SearchDMlist._();
  factory SearchDMlist([updates(SearchDMlistBuilder b)]) = _$SearchDMlist;
}

abstract class DeleteFromList extends DirectMessagesEvent
    implements Built<DeleteFromList,DeleteFromListBuilder> {
  int? get index;
  int? get receiver_id;
  DeleteFromList._();
  factory DeleteFromList([updates(DeleteFromListBuilder b)]) = _$DeleteFromList;
}


abstract class DeleteChat extends DirectMessagesEvent
    implements Built<DeleteChat,DeleteChatBuilder> {
  int? get Reciver_id;
  String? get send_by;
  DeleteChat._();
  factory DeleteChat([updates(DeleteChatBuilder b)]) = _$DeleteChat;
}