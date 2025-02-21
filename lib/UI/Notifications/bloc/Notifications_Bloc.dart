
import 'package:bloc/bloc.dart';
import 'package:bubbles/Data/repository/irepository.dart';
import 'Notifications_event.dart';
import 'Notifications_State.dart';


class NotificationsBloc extends Bloc<NotificationEvent, NotificationsState> {

  IRepository _repository;

  NotificationsBloc(this._repository) : super(NotificationsState.initail()) ;

  @override
  NotificationsState get initialState => NotificationsState.initail();

  @override
  Stream<NotificationsState> mapEventToState(
      NotificationEvent event,
      ) async* {

    if (event is GetNotifications) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success= false
          ..Getnotifcations=null
        );

        final date = await _repository.GetNotifications();
        print(date);

        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success= true
          ..Getnotifcations.replace(date)
        );

      } catch (e) {
        print('get Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false
        );
      }
    }


    if (event is ClearError) {
      yield state.rebuild((b) => b
        ..error = ""
      );
    }

    if (event is ClearBadge) {
      try {

        final date = await _repository.ClearBadge();

      } catch (e) {
        print('get Error $e');
      }
    }

    if (event is GetBadge) {
      try {

        final date = await _repository.Getbadge();


        print('get Success data ${date}');
        yield state.rebuild((b) =>
        b..Getbadge.replace(date)

        );
      } catch (e) {
        print('get Error $e');
      }
    }
  }
}
