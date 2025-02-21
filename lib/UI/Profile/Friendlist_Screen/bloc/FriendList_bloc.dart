// ignore_for_file: file_names

import 'package:bloc/bloc.dart';
import 'package:bubbles/Data/repository/irepository.dart';
import 'package:bubbles/UI/Profile/Friendlist_Screen/pages/Friendlist_screen.dart';
import 'package:bubbles/core/Classes/Classes.dart';

import 'FriendList_event.dart';
import 'FriendList_state.dart';


class FriendListBloc extends Bloc<FriendListEvent, FriendListState> {

  IRepository _repository;

  FriendListBloc(this._repository) : super(FriendListState.initail()) ;

  @override
  FriendListState get initialState => FriendListState.initail();

  @override
  Stream<FriendListState> mapEventToState(
      FriendListEvent event,
      ) async* {


    if (event is Toggle) {
      yield state.rebuild((b) => b..error = "");
    }

    if (event is IsRefresh) {
      yield state.rebuild((b) => b
        ..IsRefresh = !b.IsRefresh!);
    }

    if (event is GetFreinds) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..GetFriends = null
        );

        final date = await _repository.GetFreinds();


        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..GetFriends.replace(date)

        );


        for(int i=0;i<state.GetFriends!.friends!.length;i++) {
          FrinedsData data = FrinedsData();
          data.Background_Color = state.GetFriends!.friends![i].background_color!;
          data.ID = state.GetFriends!.friends![i].id;
          data.my_id = state.GetFriends!.friends![i].me_id;
          data.Alias = state.GetFriends!.friends![i].alias;
          data.Avatar = state.GetFriends!.friends![i].avatar;

         state.FrinedList!.add(data);

        }
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..GetFriends = null
        );
      }
    }

    if (event is RefreshState) {
      try {
        yield state.rebuild((b) =>
        b
          ..ChangeStateLoading = true
          ..ChangeStateSuccess = false
        );

        yield state.rebuild((b) =>
        b
          ..ChangeStateLoading = false
          ..ChangeStateSuccess = true
        );



      } catch (e) {
        print('get Error $e');

      }
    }

    if (event is RemoveFriend) {
      try {



        state.FrinedList!.removeAt(event.index!);
        final date = await _repository.RemoveFriend(event.friend_id!);



      } catch (e) {
        print('get Error $e');
      }
    }

    if (event is FreindsRequests) {
      try {
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..FreindRequests = null
        );

        final date = await _repository.FreindRequests();


        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b
          ..isLoading = true
          ..error = ""
          ..success = false
          ..FreindRequests.replace(date)

        );
        for(int i=0;i<state.FreindRequests!.users!.length;i++) {
          FrinedsData data = FrinedsData();
          data.Background_Color = state.FreindRequests!.users![i].background_color!;
          data.ID = state.FreindRequests!.users![i].id;
          data.my_id = state.FreindRequests!.users![i].me_id;
          data.boi = state.FreindRequests!.users![i].bio;
          data.Alias = state.FreindRequests!.users![i].alias;
          data.Avatar = state.FreindRequests!.users![i].avatar;

          state.FrinedRequestsList!.add(data);
        }
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = ""
          ..success = true
        );


      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..FreindRequests = null
        );
      }
    }

    if (event is DenyRequest) {
      try {
        state.FrinedRequestsList!.removeAt(event.index!);


        final date = await _repository.DenyRequest(event.friend_id!);



    yield state.rebuild((b) =>
    b
    ..DenyFriendRequest.replace(date)
    );
      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) =>
        b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
          ..DenyFriendRequest=null
        );
      }
    }

    if (event is AceeptRequest) {
      try {
        state.FrinedRequestsList!.removeAt(event.index!);
        state.FrinedList!.add(event.daata!);

        final date = await _repository.AceeptRequest(event.friend_id!);

        yield state.rebuild((b) =>
        b
          ..AceeptRequest.replace(date)

        );
      } catch (e) {

      }
    }

  }
}
