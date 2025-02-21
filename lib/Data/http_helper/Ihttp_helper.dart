// ignore_for_file: file_names

import 'dart:io';

import 'package:bubbles/models/AceeptRequestModel/AceeptRequestModel.dart';
import 'package:bubbles/models/AddFrindWithBarCodeModel/AddFreindBarCodeModel.dart';
import 'package:bubbles/models/AddNewFriendModel/AddNewFriendModel.dart';
import 'package:bubbles/models/AddReplyModel/AddreplyModel.dart';
import 'package:bubbles/models/ChangeAvatarModel/ChangeAvatarModel.dart';
import 'package:bubbles/models/CheckMailModel/CheckMailModel.dart';
import 'package:bubbles/models/ChoosePollAnswerModel/ChoosePollAnswerModel.dart';
import 'package:bubbles/models/CreateBubbleModel/CreateBubbleModel.dart';
import 'package:bubbles/models/DeleteOldmessagesModel/DeleteOldmessagesModel.dart';
import 'package:bubbles/models/DenyFriendRequestModel/DenyFriendRequestModel.dart';
import 'package:bubbles/models/EventOldMessagesModel/EventOldMessagesModel.dart';
import 'package:bubbles/models/Event_CateogoryModel/EventCateogoryModel.dart';
import 'package:bubbles/models/FlowChatModel/FlowChatModel.dart';
import 'package:bubbles/models/FreindListSearchModel/FriendListSearchModel.dart';
import 'package:bubbles/models/FreindRequestsModel/FreindRequestsModel.dart';
import 'package:bubbles/models/GetAliasModel/GetAliasModel.dart';
import 'package:bubbles/models/GetAvatarsModel/GetAvatarsModel.dart';
import 'package:bubbles/models/GetBubblesModel/GetBubblesModel.dart';
import 'package:bubbles/models/GetChallengesModel/GetChallengesModel.dart';
import 'package:bubbles/models/GetDetailedEvent/GetDetailedEvent.dart';
import 'package:bubbles/models/GetGenderModel/GetGender.dart';
import 'package:bubbles/models/GetInterestsModel/GetInterestsModel.dart';
import 'package:bubbles/models/GetNotificationsModel/GetnotifcationsModel.dart';
import 'package:bubbles/models/GetPointsModel/GetPointsModel.dart';
import 'package:bubbles/models/GetQuestionsModel/GetQuestionsModel.dart';
import 'package:bubbles/models/GetSubGenders/GetSubGenderss.dart';
import 'package:bubbles/models/GetUsersInsideBubbleModell/GetUsersInsideBubbleModel.dart';

import 'package:bubbles/models/GetWhoSavedBubblesModel/GetWhoSavedBubblesModel.dart';
import 'package:bubbles/models/GetbadgeModel/GetbadgeModel.dart';
import 'package:bubbles/models/InOutUserStatusModel/InOutUserStatusModel.dart';
import 'package:bubbles/models/LogoutModel/LogoutModel.dart';
import 'package:bubbles/models/OldMessagesModel/OldMessagesModel.dart';
import 'package:bubbles/models/PostMessagesModel/PostMessagesModel.dart';
import 'package:bubbles/models/ProfileDataModel/ProfileDateModel.dart';
import 'package:bubbles/models/RemoveFrinedModel/RemoveFriendModel.dart';
import 'package:bubbles/models/SaveBubbleModel/SaveBubbleModel.dart';
import 'package:bubbles/models/SendBubbleMessageModel/SendBubbleMessageModel.dart';
import 'package:bubbles/models/SprintsJoinLeaveModel/SprintsJoinLeaveModel.dart';
import 'package:bubbles/models/SprintsLobbyUsersModel/SprintsLobbyUsersModel.dart';
import 'package:bubbles/models/SubmitCreatorAnwersModel/SubmitCreatorAnwersModel.dart';
import 'package:bubbles/models/SuggestFrinedsModel/SuggestFriendsModel.dart';
import 'package:bubbles/models/UpdateBoiModel/UpdateBoiModel.dart';
import 'package:bubbles/models/UpdateProfile/UpdateProfile.dart';
import 'package:bubbles/models/UserDataModel/UserData.dart';
import 'package:bubbles/models/VerifyProfileModel/VerifyProfileModel.dart';
import 'package:built_collection/src/list.dart';
import 'package:built_collection/built_collection.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../models/ClearBadgeModel/ClearBadgeModel.dart';
import '../../models/GetFriendsModel/GetFriendsModel.dart';
import '../../models/NotifyMeCloseToBubbleModel/NotifyMeCloseToBubbleModel.dart';
import '../../models/permissionsModel/PermissionsModel.dart';



abstract class IHttpHelper {



  Future<UserData> GoogleLogin(String Email, String password,String fcmToken,String avatar);

  Future<UserData> login(
      String Email,
      String password,
      String fcmToken,
      );

  Future<UserData> SignUp(
      String Email,
      String password,
      String fcmToken,
      String first_name,
      String last_name,
      int Genter,
      String background_color,
      String bio,
      String birth_date,
      List<int> interests,
      int avatarid,
      String alias,
  );

  Future<UserData> LoginSocial(
      String Token,
      String fcmToken,
      );
  Future<PermissionsModel> SetPermission(
      int is_notify,
      String Auth
      );
  Future<UpdateProfile> upDateSocailProfile(
      String fcmToken,
      String first_name,
      String last_name,
      int Genter,
      String background_color,
      String bio,
      String birth_date,
      List<int> interests,
      int avatarid,
      String alias,
      String auth
      );
  Future<GetQuestionsModel> QuestionCreator();
  Future<GetGenderModel> GetGenders();
  Future<GetInterestsModel> GetInterests();
  Future<GetSubGender> GetSubGenders();
  Future<GetAvatarsModel> GetAvatars();
  Future<UpdateBoiModel> updateProfile(String alias,String bio,String auth);
  Future<ChangeAvatarModel> ChangeAvatar(int AvatarID, String auth);
  Future<AddNewFriendModel> AddFriend(String serial,String auth);
  Future<RemoveFriendModel> RemoveFriend(int friend_id,String auth);
  Future<GetFriendsModel> GetFreinds(String auth);
  Future<CheckMailModel> CheckEmail(String Email);
  Future<FreindRequestsModel> FreindRequests(String Auth);
  Future<ProfileDateModel> GetProfile(String Auth);
  Future<SuggestFriendsModel> SuggestFreinds(
      String Auth,
      );
  Future<AddFreindBarCodeModel> AddFreindWithBarCode(
      String serial,
      String Auth,
      );
  Future<LogoutModel> Logout(
      String Auth,
      );
  Future<AceeptRequestModel> AceeptRequest(
      int  friend_id,
      String Auth,
      );
  Future<DenyFriendRequestModel> DenyRequest(
      int  friend_id,
      String Auth,
      );
  Future<SubmitCreatorAnwersModel> CreatorSubmit(
      List<int> Answers,
      String Auth,
      List<int> questions,
      );
  Future<GetnotifcationsModel> GetNotifications(
      String Auth,
      );
  Future<VerifyProfileModel> VerifyProfile(
      String Image2,
      String Image1,
      String Auth,
      );

  Future<GetPointsModel> GetPoints(
      int challenge_id,
      String Auth
      );

  Future<GetChallengesModel> GetChallenges(
      String Auth,
      );

  Future<GetBubblesModel> GetPrimeBubblees(
      String Auth,
      );

  Future<CreateBubbleModel> CreateBubble(
      String Auth,
      String title,
      String location,
      List<String> images,
      String color,
      String description,
      List<int> organizers,
      String start_event_date,
      String end_event_date,
      List<String> dates,
      double lng,
      double lat,
      int radius,
      int Cateogory_id,
      );

  Future<GetBubblesModel> GetAllBubbles(
      String Auth,
      );
  Future<GetBubblesModel> GetNewBubbles(
      String Auth,
      );
  Future<OldMessagesModel> GetLastMessageBetweenMeAndAllUsers(
      String Auth,
      );
  Future<OldMessagesModel> GetOldMessages(
      String Auth,
      String send_by,
      int Reciver_ID,
      );
  Future<PostMessagesModel> PostMessage(
      String Auth,
      String Message,
      String sms_type,
      String send_by,
      int Reciver_ID,
      );
  Future<GetAliasModel> GetAlias(
      String Auth,
      int friend_id
      );
  Future<AddreplyModel> AddReply(
      String Auth,
      String comment,
      int message_id,
      );
  Future<GetDetailedEvent> GetEventDetails(
      int Event_id,
      String Auth,
      );
  Future<AddreplyModel> RemoveFromDirect(
      String Auth,
      int receiver_id,
      );
  Future<OldMessagesModel> SearchDMlistt(
      String Keyword,
      String Auth,
      );
  Future<FriendListSearchModel> SearchFriendList(
      String Keyword,
      String Auth,
      );
  Future<GetBubblesModel> NearByEventList(
      double lat,
      double lng,
      String Auth,
      );
  Future<GetDetailedEvent> SearchEventLists(     //TODO: FIX RETURN TYPE
      String Keyword,
      String Auth,
      );
  Future<ClearBadgeModel> ClearBadge(
      String Auth,
      );

  Future<SendBubbleMessageModel> SendMessageEVENT(
      String Auth,
      String type,
      String message,
      int Event_id,
      int main_type,
      );


  Future<SendBubbleMessageModel> SendReplyMessageEVENT(
      String Auth,
      String comment,
      int message_id,
      );



  Future<InOutUserStatusModel> ChangeUserStatusToOut(
      String Auth,
      int bubble_id,
      );



  Future<InOutUserStatusModel> ChangeUserStatusToIN(
      String Auth,
      int bubble_id,
      );
  Future<EventOldMessagesModel> GetEventMessages(
      String Auth,
      int bubble_id,

      );
  Future<GetUsersInsideBubbleModel> GetUsersInsideBubble(
      String Auth,
      int bubble_id,
      );
  Future<GetbadgeModel> Getbadge(
      String Auth,
      );
  Future<GetBubblesModel> PopularNowBubbles(
      String Auth,
      );
  Future<NotifyMeCloseToBubbleModel> NotifyMeImCloseToBubble(
      String Auth,
      String distance,
      String Title,
      );

  Future<FlowChatModel> GetFlowOldMessages(
      String Auth,
      int message_id,

      );
  Future<SendBubbleMessageModel> SendMessageInFlows(
      String Auth,
      String message,
      String type,
      int message_id,
      );
  Future<SendBubbleMessageModel> SendReplyInFlows(
      String Auth,
      String comment,
      int sub_message_id,
      );
  Future<SendBubbleMessageModel> SendTopicFlow(
      String Auth,
      int bubble_id,
      String content,
      String title,
      int main_type,
      );
  Future<SendBubbleMessageModel> SendPollFlow(
      String Auth,
      String Question,
      int bubble_id,
      List<String> answers,
      bool multi_choice,
      bool show_participants,
      );



  Future<SendBubbleMessageModel> SendFootPrintFlow(
      String Auth,
      String title,
      String image,//base64
      int type,//new_poll
      int bubble_id,
      );



  Future<SendBubbleMessageModel> SendMediaDumpFlow(
      String Auth,
      String title,
      String image,//base64
      int type,//new_poll
      int bubble_id,
      );

  Future<SaveBubbleModel> SaveBubble(
      String Auth,
      int bubble_id,
      );


  Future<GetBubblesModel> GetSavedBubbles(
      String Auth,
      int User_id,
      );

  Future<GetWhoSavedBubblesModel> GetWhoSavedBubble(
      String Auth,
      int Bubble_id,
      );
  Future<EventCateogoryModel> GetEventCateogories(
      String Auth,
      );
  Future<GetBubblesModel> GetActiveBubbles(
      String Auth,
      );
  Future<GetBubblesModel> GetUpcomingBubbles(
      String Auth,
      );
  Future<GetBubblesModel> NearByPrimes(
      double lat,
      double lng,
      String Auth,
      );

  Future<ChoosePollAnswerModel> ChoosePollFlowAnswer(
      int answer_poll_id,
      String Auth,
      ) ;


  Future<SprintsJoinLeaveModel> LeaveSprintsLobby(
      int event_id,
      String Auth,
      ) ;


  Future<SprintsJoinLeaveModel> JoinSprintsLobby(
      int event_id,
      String Auth,
      );


  Future<SprintsLobbyUsersModel> GetAllUsersInLobby(
      int event_id,
      String Auth,
      ) ;


  Future<DeleteOldmessagesModel> DeleteOldMessages(
      int receiver_id,
      String send_by,
      String Auth,
      );
}
//ihttp_helper is the abstaction class for http_helper
