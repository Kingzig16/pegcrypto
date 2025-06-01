import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start PEGDWENDE EXCHANGE API Group Code

class PegdwendeExchangeApiGroup {
  static String getBaseUrl() => 'https://www.pegdwendeechange.com';
  static Map<String, String> headers = {};
  static LoginApiV1LoginPostCall loginApiV1LoginPostCall =
      LoginApiV1LoginPostCall();
  static GetActualAdminApiV1AdminGetCall getActualAdminApiV1AdminGetCall =
      GetActualAdminApiV1AdminGetCall();
  static GetAllUserApiV1AdminUsersGetCall getAllUserApiV1AdminUsersGetCall =
      GetAllUserApiV1AdminUsersGetCall();
  static SearchUserApiV1AdminUsersSearchInfoGetCall
      searchUserApiV1AdminUsersSearchInfoGetCall =
      SearchUserApiV1AdminUsersSearchInfoGetCall();
  static GetUserInformationApiV1AdminUserIdentityIdSelectGetCall
      getUserInformationApiV1AdminUserIdentityIdSelectGetCall =
      GetUserInformationApiV1AdminUserIdentityIdSelectGetCall();
  static SetUserTypeApiV1AdminUserSettypeIdPostCall
      setUserTypeApiV1AdminUserSettypeIdPostCall =
      SetUserTypeApiV1AdminUserSettypeIdPostCall();
  static SetUserVerifiedApiV1AdminUserVerifyIdPostCall
      setUserVerifiedApiV1AdminUserVerifyIdPostCall =
      SetUserVerifiedApiV1AdminUserVerifyIdPostCall();
  static CreateUserApiV1AdminUserPostCall createUserApiV1AdminUserPostCall =
      CreateUserApiV1AdminUserPostCall();
  static ModifyUserApiV1AdminUserIdPatchCall
      modifyUserApiV1AdminUserIdPatchCall =
      ModifyUserApiV1AdminUserIdPatchCall();
  static DeleteClientApiV1AdminUserIdDeleteCall
      deleteClientApiV1AdminUserIdDeleteCall =
      DeleteClientApiV1AdminUserIdDeleteCall();
  static BlockClientApiV1AdminUserBlockIdDeleteCall
      blockClientApiV1AdminUserBlockIdDeleteCall =
      BlockClientApiV1AdminUserBlockIdDeleteCall();
  static SendEmailApiV1AdminEmailPostCall sendEmailApiV1AdminEmailPostCall =
      SendEmailApiV1AdminEmailPostCall();
  static GetAgentApiV1AgentGetCall getAgentApiV1AgentGetCall =
      GetAgentApiV1AgentGetCall();
  static GetAllUserApiV1AgentClientsGetCall getAllUserApiV1AgentClientsGetCall =
      GetAllUserApiV1AgentClientsGetCall();
  static GetUserInformationApiV1AgentClientIdentityIdSelectGetCall
      getUserInformationApiV1AgentClientIdentityIdSelectGetCall =
      GetUserInformationApiV1AgentClientIdentityIdSelectGetCall();
  static SearchUserApiV1AgentClientsSearchInfoGetCall
      searchUserApiV1AgentClientsSearchInfoGetCall =
      SearchUserApiV1AgentClientsSearchInfoGetCall();
  static CreateUserApiV1AgentClientPostCall createUserApiV1AgentClientPostCall =
      CreateUserApiV1AgentClientPostCall();
  static SetUserVerifiedApiV1AgentClientVerifyIdPostCall
      setUserVerifiedApiV1AgentClientVerifyIdPostCall =
      SetUserVerifiedApiV1AgentClientVerifyIdPostCall();
  static ModifyUserApiV1AgentClientIdPatchCall
      modifyUserApiV1AgentClientIdPatchCall =
      ModifyUserApiV1AgentClientIdPatchCall();
  static DeleteClientApiV1AgentClientIdDeleteCall
      deleteClientApiV1AgentClientIdDeleteCall =
      DeleteClientApiV1AgentClientIdDeleteCall();
  static BlockClientApiV1AgentClientBlockIdDeleteCall
      blockClientApiV1AgentClientBlockIdDeleteCall =
      BlockClientApiV1AgentClientBlockIdDeleteCall();
  static GetUserApiV1ClientGetCall getUserApiV1ClientGetCall =
      GetUserApiV1ClientGetCall();
  static CreateUserApiV1ClientPostCall createUserApiV1ClientPostCall =
      CreateUserApiV1ClientPostCall();
  static DeleteClientApiV1ClientDeleteCall deleteClientApiV1ClientDeleteCall =
      DeleteClientApiV1ClientDeleteCall();
  static ModifyUserApiV1ClientPatchCall modifyUserApiV1ClientPatchCall =
      ModifyUserApiV1ClientPatchCall();
  static ResendEmailApiV1ClientConfirmEmailGetCall
      resendEmailApiV1ClientConfirmEmailGetCall =
      ResendEmailApiV1ClientConfirmEmailGetCall();
  static VerifyConfirmationCodeApiV1ClientConfirmEmailCodePostCall
      verifyConfirmationCodeApiV1ClientConfirmEmailCodePostCall =
      VerifyConfirmationCodeApiV1ClientConfirmEmailCodePostCall();
  static PostUserIdentityRectoApiV1ClientIdentityTypeIdentityPostCall
      postUserIdentityRectoApiV1ClientIdentityTypeIdentityPostCall =
      PostUserIdentityRectoApiV1ClientIdentityTypeIdentityPostCall();
  static GetCryptoApiV1CryptoGetCall getCryptoApiV1CryptoGetCall =
      GetCryptoApiV1CryptoGetCall();
  static AddCryptoApiV1CryptoPostCall addCryptoApiV1CryptoPostCall =
      AddCryptoApiV1CryptoPostCall();
  static ModifyCryptoApiV1CryptoIdPatchCall modifyCryptoApiV1CryptoIdPatchCall =
      ModifyCryptoApiV1CryptoIdPatchCall();
  static DeleteCryptoApiV1CryptoIdDeleteCall
      deleteCryptoApiV1CryptoIdDeleteCall =
      DeleteCryptoApiV1CryptoIdDeleteCall();
  static GetCryptoIconApiV1CryptoIconIdGetCall
      getCryptoIconApiV1CryptoIconIdGetCall =
      GetCryptoIconApiV1CryptoIconIdGetCall();
  static GetProjectsApiV1ProjectGetCall getProjectsApiV1ProjectGetCall =
      GetProjectsApiV1ProjectGetCall();
  static CreateProjectsApiV1ProjectPostCall createProjectsApiV1ProjectPostCall =
      CreateProjectsApiV1ProjectPostCall();
  static ModifyProjectsApiV1ProjectIdPatchCall
      modifyProjectsApiV1ProjectIdPatchCall =
      ModifyProjectsApiV1ProjectIdPatchCall();
  static DeleteProjectsApiV1ProjectIdDeleteCall
      deleteProjectsApiV1ProjectIdDeleteCall =
      DeleteProjectsApiV1ProjectIdDeleteCall();
  static GetProjectIconApiV1ProjectIconIdGetCall
      getProjectIconApiV1ProjectIconIdGetCall =
      GetProjectIconApiV1ProjectIconIdGetCall();
  static GetExchangeApiV1ExchangeGetCall getExchangeApiV1ExchangeGetCall =
      GetExchangeApiV1ExchangeGetCall();
  static AddExchangeApiV1ExchangePostCall addExchangeApiV1ExchangePostCall =
      AddExchangeApiV1ExchangePostCall();
  static ModifyExchangeApiV1ExchangeIdPatchCall
      modifyExchangeApiV1ExchangeIdPatchCall =
      ModifyExchangeApiV1ExchangeIdPatchCall();
  static DeleteExchangeApiV1ExchangeIdDeleteCall
      deleteExchangeApiV1ExchangeIdDeleteCall =
      DeleteExchangeApiV1ExchangeIdDeleteCall();
  static GetSourceIconApiV1ExchangeIconIdSourceGetCall
      getSourceIconApiV1ExchangeIconIdSourceGetCall =
      GetSourceIconApiV1ExchangeIconIdSourceGetCall();
  static GetDestinationIconApiV1ExchangeIconIdDestinationGetCall
      getDestinationIconApiV1ExchangeIconIdDestinationGetCall =
      GetDestinationIconApiV1ExchangeIconIdDestinationGetCall();
  static GetCryptoTransactionApiV1TransactionCryptoAdmingestfinGetCall
      getCryptoTransactionApiV1TransactionCryptoAdmingestfinGetCall =
      GetCryptoTransactionApiV1TransactionCryptoAdmingestfinGetCall();
  static GetACryptoTransactionApiV1TransactionCryptoAdmingestfinIdGetCall
      getACryptoTransactionApiV1TransactionCryptoAdmingestfinIdGetCall =
      GetACryptoTransactionApiV1TransactionCryptoAdmingestfinIdGetCall();
  static GetClientCryptoTransactionApiV1TransactionCryptoClientGetCall
      getClientCryptoTransactionApiV1TransactionCryptoClientGetCall =
      GetClientCryptoTransactionApiV1TransactionCryptoClientGetCall();
  static GetAClientCryptoTransactionApiV1TransactionCryptoClientIdGetCall
      getAClientCryptoTransactionApiV1TransactionCryptoClientIdGetCall =
      GetAClientCryptoTransactionApiV1TransactionCryptoClientIdGetCall();
  static CreateCrytoTransactionApiV1TransactionCryptoPostCall
      createCrytoTransactionApiV1TransactionCryptoPostCall =
      CreateCrytoTransactionApiV1TransactionCryptoPostCall();
  static ValidateCryptoTransactionApiV1TransactionCryptoValidateIdPostCall
      validateCryptoTransactionApiV1TransactionCryptoValidateIdPostCall =
      ValidateCryptoTransactionApiV1TransactionCryptoValidateIdPostCall();
  static GetProofImageApiV1TransactionCryptoAdmingestfinProofIdGetCall
      getProofImageApiV1TransactionCryptoAdmingestfinProofIdGetCall =
      GetProofImageApiV1TransactionCryptoAdmingestfinProofIdGetCall();
  static GetValidateImageApiV1TransactionCryptoAdmingestfinValidateIdGetCall
      getValidateImageApiV1TransactionCryptoAdmingestfinValidateIdGetCall =
      GetValidateImageApiV1TransactionCryptoAdmingestfinValidateIdGetCall();
  static GetProofImageClientApiV1TransactionCryptoClientProofIdGetCall
      getProofImageClientApiV1TransactionCryptoClientProofIdGetCall =
      GetProofImageClientApiV1TransactionCryptoClientProofIdGetCall();
  static GetValidateImageClientApiV1TransactionCryptoClientValidateIdGetCall
      getValidateImageClientApiV1TransactionCryptoClientValidateIdGetCall =
      GetValidateImageClientApiV1TransactionCryptoClientValidateIdGetCall();
  static GetProjectTransactionsApiV1TransactionProjectAdmingestfinGetCall
      getProjectTransactionsApiV1TransactionProjectAdmingestfinGetCall =
      GetProjectTransactionsApiV1TransactionProjectAdmingestfinGetCall();
  static GetAProjectTransactionsApiV1TransactionProjectAdmingestfinIdGetCall
      getAProjectTransactionsApiV1TransactionProjectAdmingestfinIdGetCall =
      GetAProjectTransactionsApiV1TransactionProjectAdmingestfinIdGetCall();
  static GetProjectTransactionsClientApiV1TransactionProjectClientGetCall
      getProjectTransactionsClientApiV1TransactionProjectClientGetCall =
      GetProjectTransactionsClientApiV1TransactionProjectClientGetCall();
  static GetAProjectTransactionClientApiV1TransactionProjectClientIdGetCall
      getAProjectTransactionClientApiV1TransactionProjectClientIdGetCall =
      GetAProjectTransactionClientApiV1TransactionProjectClientIdGetCall();
  static CreateProjectTransactionApiV1TransactionProjectPostCall
      createProjectTransactionApiV1TransactionProjectPostCall =
      CreateProjectTransactionApiV1TransactionProjectPostCall();
  static ValidateProjectTransactionApiV1TransactionProjectValidateIdPostCall
      validateProjectTransactionApiV1TransactionProjectValidateIdPostCall =
      ValidateProjectTransactionApiV1TransactionProjectValidateIdPostCall();
  static GetProofImageApiV1TransactionProjectAdmingestfinProofIdGetCall
      getProofImageApiV1TransactionProjectAdmingestfinProofIdGetCall =
      GetProofImageApiV1TransactionProjectAdmingestfinProofIdGetCall();
  static GetValidateImageApiV1TransactionProjectAdmingestfinValidateIdGetCall
      getValidateImageApiV1TransactionProjectAdmingestfinValidateIdGetCall =
      GetValidateImageApiV1TransactionProjectAdmingestfinValidateIdGetCall();
  static GetProofImageClientApiV1TransactionProjectClientProofIdGetCall
      getProofImageClientApiV1TransactionProjectClientProofIdGetCall =
      GetProofImageClientApiV1TransactionProjectClientProofIdGetCall();
  static GetValidateImageClientApiV1TransactionProjectClientValidateIdGetCall
      getValidateImageClientApiV1TransactionProjectClientValidateIdGetCall =
      GetValidateImageClientApiV1TransactionProjectClientValidateIdGetCall();
  static GetExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetCall
      getExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetCall =
      GetExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetCall();
  static GetAExchangeTransactionsApiV1TransactionExchangeAdmingestfinIdGetCall
      getAExchangeTransactionsApiV1TransactionExchangeAdmingestfinIdGetCall =
      GetAExchangeTransactionsApiV1TransactionExchangeAdmingestfinIdGetCall();
  static GetExchangeTransactionsClientApiV1TransactionExchangeClientGetCall
      getExchangeTransactionsClientApiV1TransactionExchangeClientGetCall =
      GetExchangeTransactionsClientApiV1TransactionExchangeClientGetCall();
  static GetAExchangeTransactionClientApiV1TransactionExchangeClientIdGetCall
      getAExchangeTransactionClientApiV1TransactionExchangeClientIdGetCall =
      GetAExchangeTransactionClientApiV1TransactionExchangeClientIdGetCall();
  static CreateExchangeTransactionApiV1TransactionExchangePostCall
      createExchangeTransactionApiV1TransactionExchangePostCall =
      CreateExchangeTransactionApiV1TransactionExchangePostCall();
  static ValidateExchangeTransactionApiV1TransactionExchangeValidateIdPostCall
      validateExchangeTransactionApiV1TransactionExchangeValidateIdPostCall =
      ValidateExchangeTransactionApiV1TransactionExchangeValidateIdPostCall();
  static GetProofImageApiV1TransactionExchangeAdmingestfinProofIdGetCall
      getProofImageApiV1TransactionExchangeAdmingestfinProofIdGetCall =
      GetProofImageApiV1TransactionExchangeAdmingestfinProofIdGetCall();
  static GetValidateImageApiV1TransactionExchangeAdmingestfinValidateIdGetCall
      getValidateImageApiV1TransactionExchangeAdmingestfinValidateIdGetCall =
      GetValidateImageApiV1TransactionExchangeAdmingestfinValidateIdGetCall();
  static GetProofImageClientApiV1TransactionExchangeClientProofIdGetCall
      getProofImageClientApiV1TransactionExchangeClientProofIdGetCall =
      GetProofImageClientApiV1TransactionExchangeClientProofIdGetCall();
  static GetValidateImageClientApiV1TransactionExchangeClientValidateIdGetCall
      getValidateImageClientApiV1TransactionExchangeClientValidateIdGetCall =
      GetValidateImageClientApiV1TransactionExchangeClientValidateIdGetCall();
  static GetPubApiV1PubIdGetCall getPubApiV1PubIdGetCall =
      GetPubApiV1PubIdGetCall();
  static ModifyPubApiV1PubIdPatchCall modifyPubApiV1PubIdPatchCall =
      ModifyPubApiV1PubIdPatchCall();
  static SuppressionPubApiV1PubIdDeleteCall suppressionPubApiV1PubIdDeleteCall =
      SuppressionPubApiV1PubIdDeleteCall();
  static GetAllPubApiV1PubGetCall getAllPubApiV1PubGetCall =
      GetAllPubApiV1PubGetCall();
  static AddPubApiV1PubPostCall addPubApiV1PubPostCall =
      AddPubApiV1PubPostCall();
  static GetAffilitedUserApiV1AffiliationGetCall
      getAffilitedUserApiV1AffiliationGetCall =
      GetAffilitedUserApiV1AffiliationGetCall();
  static GetAffilitedUserClientApiV1AffiliationClientGetCall
      getAffilitedUserClientApiV1AffiliationClientGetCall =
      GetAffilitedUserClientApiV1AffiliationClientGetCall();
  static CreateAffiliationCodeClientApiV1AffiliationClientPostCall
      createAffiliationCodeClientApiV1AffiliationClientPostCall =
      CreateAffiliationCodeClientApiV1AffiliationClientPostCall();
  static UseAffiliationCodeApiV1AffiliationClientUsePostCall
      useAffiliationCodeApiV1AffiliationClientUsePostCall =
      UseAffiliationCodeApiV1AffiliationClientUsePostCall();
  static CreateAffiliationCodeApiV1AffiliationUserIdPostCall
      createAffiliationCodeApiV1AffiliationUserIdPostCall =
      CreateAffiliationCodeApiV1AffiliationUserIdPostCall();
  static GetContactApiV1ContactGetCall getContactApiV1ContactGetCall =
      GetContactApiV1ContactGetCall();
  static AddContactApiV1ContactPostCall addContactApiV1ContactPostCall =
      AddContactApiV1ContactPostCall();
  static GetChatsApiV1ChatAgentsGetCall getChatsApiV1ChatAgentsGetCall =
      GetChatsApiV1ChatAgentsGetCall();
  static GetChatContentsApiV1ChatAgentsChatContentGetCall
      getChatContentsApiV1ChatAgentsChatContentGetCall =
      GetChatContentsApiV1ChatAgentsChatContentGetCall();
  static ClientChatContentsApiV1ChatClientsChatContentGetCall
      clientChatContentsApiV1ChatClientsChatContentGetCall =
      ClientChatContentsApiV1ChatClientsChatContentGetCall();
  static SendchangepasswordcodeCall sendchangepasswordcodeCall =
      SendchangepasswordcodeCall();
  static CheckchangepasswordcodeCall checkchangepasswordcodeCall =
      CheckchangepasswordcodeCall();
  static CheckchangepasswordcodeCopyCall checkchangepasswordcodeCopyCall =
      CheckchangepasswordcodeCopyCall();
}

class LoginApiV1LoginPostCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'login_api_v1_login__post',
      apiUrl: '${baseUrl}/api/v1/login/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetActualAdminApiV1AdminGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_actual_admin_api_v1_admin__get',
      apiUrl: '${baseUrl}/api/v1/admin/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUserApiV1AdminUsersGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
    List<String>? nomList,
    List<String>? prenomsList,
    List<String>? emailsList,
    List<String>? numeroList,
    String? sexe = '',
    String? type = '',
    bool? isVerified,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);
    final nom = _serializeList(nomList);
    final prenoms = _serializeList(prenomsList);
    final emails = _serializeList(emailsList);
    final numero = _serializeList(numeroList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_all_user_api_v1_admin_users_get',
      apiUrl: '${baseUrl}/api/v1/admin/users',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
        'id': id,
        'nom': nom,
        'prenoms': prenoms,
        'emails': emails,
        'numero': numero,
        'sexe': sexe,
        'type': type,
        'is_verified': isVerified,
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchUserApiV1AdminUsersSearchInfoGetCall {
  Future<ApiCallResponse> call({
    String? info = '',
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'search_user_api_v1_admin_users_search__info__get',
      apiUrl: '${baseUrl}/api/v1/admin/users/search/${info}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserInformationApiV1AdminUserIdentityIdSelectGetCall {
  Future<ApiCallResponse> call({
    int? id,
    String? select = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_user_information_api_v1_admin_user_identity__id___select__get',
      apiUrl: '${baseUrl}/api/v1/admin/user/identity/${id}/${select}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetUserTypeApiV1AdminUserSettypeIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
    String? userType = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'set_user_type_api_v1_admin_user_settype__id__post',
      apiUrl: '${baseUrl}/api/v1/admin/user/settype/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetUserVerifiedApiV1AdminUserVerifyIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'set_user_verified_api_v1_admin_user_verify__id__post',
      apiUrl: '${baseUrl}/api/v1/admin/user/verify/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserApiV1AdminUserPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "",
  "prenoms": "",
  "email": "",
  "numero": "",
  "sexe": "HOMME",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_user_api_v1_admin_user_post',
      apiUrl: '${baseUrl}/api/v1/admin/user',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyUserApiV1AdminUserIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "",
  "prenoms": "",
  "email": "",
  "numero": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify_user_api_v1_admin_user__id__patch',
      apiUrl: '${baseUrl}/api/v1/admin/user/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteClientApiV1AdminUserIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_client_api_v1_admin_user__id__delete',
      apiUrl: '${baseUrl}/api/v1/admin/user/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BlockClientApiV1AdminUserBlockIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'block_client_api_v1_admin_user_block__id__delete',
      apiUrl: '${baseUrl}/api/v1/admin/user/block/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendEmailApiV1AdminEmailPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'send_email_api_v1_admin_email__post',
      apiUrl: '${baseUrl}/api/v1/admin/email/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAgentApiV1AgentGetCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_agent_api_v1_agent__get',
      apiUrl: '${baseUrl}/api/v1/agent/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUserApiV1AgentClientsGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
    List<String>? nomList,
    List<String>? prenomsList,
    List<String>? emailsList,
    List<String>? numeroList,
    String? sexe = '',
    bool? isVerified,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);
    final nom = _serializeList(nomList);
    final prenoms = _serializeList(prenomsList);
    final emails = _serializeList(emailsList);
    final numero = _serializeList(numeroList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_all_user_api_v1_agent_clients_get',
      apiUrl: '${baseUrl}/api/v1/agent/clients',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
        'id': id,
        'nom': nom,
        'prenoms': prenoms,
        'emails': emails,
        'numero': numero,
        'sexe': sexe,
        'is_verified': isVerified,
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserInformationApiV1AgentClientIdentityIdSelectGetCall {
  Future<ApiCallResponse> call({
    int? id,
    String? select = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_user_information_api_v1_agent_client_identity__id___select__get',
      apiUrl: '${baseUrl}/api/v1/agent/client/identity/${id}/${select}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchUserApiV1AgentClientsSearchInfoGetCall {
  Future<ApiCallResponse> call({
    String? info = '',
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'search_user_api_v1_agent_clients_search__info__get',
      apiUrl: '${baseUrl}/api/v1/agent/clients/search/${info}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserApiV1AgentClientPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "",
  "prenoms": "",
  "email": "",
  "numero": "",
  "sexe": "HOMME",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_user_api_v1_agent_client_post',
      apiUrl: '${baseUrl}/api/v1/agent/client',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SetUserVerifiedApiV1AgentClientVerifyIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'set_user_verified_api_v1_agent_client_verify__id__post',
      apiUrl: '${baseUrl}/api/v1/agent/client/verify/${id}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyUserApiV1AgentClientIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "",
  "prenoms": "",
  "email": "",
  "numero": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify_user_api_v1_agent_client__id__patch',
      apiUrl: '${baseUrl}/api/v1/agent/client/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteClientApiV1AgentClientIdDeleteCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_client_api_v1_agent_client__id__delete',
      apiUrl: '${baseUrl}/api/v1/agent/client/',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BlockClientApiV1AgentClientBlockIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'block_client_api_v1_agent_client_block__id__delete',
      apiUrl: '${baseUrl}/api/v1/agent/client/block/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserApiV1ClientGetCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? nom = '',
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_user_api_v1_client__get',
      apiUrl: '${baseUrl}/api/v1/client/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserApiV1ClientPostCall {
  Future<ApiCallResponse> call({
    String? nom = '',
    String? prenoms = '',
    String? email = '',
    String? numero = '',
    String? sexe = '',
    String? password = '',
    String? dateCreation = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "${escapeStringForJson(nom)}",
  "prenoms": "${escapeStringForJson(prenoms)}",
  "email": "${escapeStringForJson(email)}",
  "numero": "${escapeStringForJson(numero)}",
  "sexe": "${escapeStringForJson(sexe)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_user_api_v1_client__post',
      apiUrl: '${baseUrl}/api/v1/client/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteClientApiV1ClientDeleteCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_client_api_v1_client__delete',
      apiUrl: '${baseUrl}/api/v1/client/',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyUserApiV1ClientPatchCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    String? nom = '',
    String? prenoms = '',
    String? numero = '',
    String? pays = '',
    String? ville = '',
    String? codePost = '',
    String? dateNaissance = '',
    String? typePieceIdentite = '',
    String? numberPieceIdentite = '',
    String? expirationPieceIdentite = '',
    String? sexe = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "nom": "${escapeStringForJson(nom)}",
  "prenoms": "${escapeStringForJson(prenoms)}",
  "numero": "${escapeStringForJson(numero)}",
  "password": "",
  "sexe": "${escapeStringForJson(sexe)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modify_user_api_v1_client__patch',
      apiUrl: '${baseUrl}/api/v1/client/',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResendEmailApiV1ClientConfirmEmailGetCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'resend_email_api_v1_client_confirm_email_get',
      apiUrl: '${baseUrl}/api/v1/client/confirm/email',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyConfirmationCodeApiV1ClientConfirmEmailCodePostCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? authtoken = '',
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'verify_confirmation_code_api_v1_client_confirm_email__code__post',
      apiUrl: '${baseUrl}/api/v1/client/confirm/email/${code}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostUserIdentityRectoApiV1ClientIdentityTypeIdentityPostCall {
  Future<ApiCallResponse> call({
    String? typeIdentity = '',
    String? recto = '',
    String? verso = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'post_user_identity_recto_api_v1_client_identity__type_identity__post',
      apiUrl: '${baseUrl}/api/v1/client/identity/${typeIdentity}',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'recto': recto,
        'verso': verso,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCryptoApiV1CryptoGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
    List<String>? nomList,
    List<int>? quantiteList,
    List<int>? prixUnitaireList,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);
    final nom = _serializeList(nomList);
    final quantite = _serializeList(quantiteList);
    final prixUnitaire = _serializeList(prixUnitaireList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_crypto_api_v1_crypto__get',
      apiUrl: '${baseUrl}/api/v1/crypto/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddCryptoApiV1CryptoPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'add_crypto_api_v1_crypto__post',
      apiUrl: '${baseUrl}/api/v1/crypto/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyCryptoApiV1CryptoIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'modify_crypto_api_v1_crypto__id__patch',
      apiUrl: '${baseUrl}/api/v1/crypto/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteCryptoApiV1CryptoIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_crypto_api_v1_crypto__id__delete',
      apiUrl: '${baseUrl}/api/v1/crypto/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCryptoIconApiV1CryptoIconIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_crypto_icon_api_v1_crypto_icon__id__get',
      apiUrl: '${baseUrl}/api/v1/crypto/icon/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectsApiV1ProjectGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
    String? titre = '',
    int? budget,
    String? dateDebut = '',
    String? dateFin = '',
    bool? isDeleted,
    bool? isFinish,
    String? contacts = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_projects_api_v1_project__get',
      apiUrl: '${baseUrl}/api/v1/project/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
        'is_finish': isFinish,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProjectsApiV1ProjectPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_projects_api_v1_project__post',
      apiUrl: '${baseUrl}/api/v1/project/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyProjectsApiV1ProjectIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'modify_projects_api_v1_project__id__patch',
      apiUrl: '${baseUrl}/api/v1/project/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteProjectsApiV1ProjectIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_projects_api_v1_project__id__delete',
      apiUrl: '${baseUrl}/api/v1/project/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectIconApiV1ProjectIconIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_project_icon_api_v1_project_icon__id__get',
      apiUrl: '${baseUrl}/api/v1/project/icon/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetExchangeApiV1ExchangeGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
    String? source = '',
    String? destination = '',
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_exchange_api_v1_exchange__get',
      apiUrl: '${baseUrl}/api/v1/exchange/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddExchangeApiV1ExchangePostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'add_exchange_api_v1_exchange__post',
      apiUrl: '${baseUrl}/api/v1/exchange/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyExchangeApiV1ExchangeIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'modify_exchange_api_v1_exchange__id__patch',
      apiUrl: '${baseUrl}/api/v1/exchange/${id}',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteExchangeApiV1ExchangeIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete_exchange_api_v1_exchange__id__delete',
      apiUrl: '${baseUrl}/api/v1/exchange/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSourceIconApiV1ExchangeIconIdSourceGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_source_icon_api_v1_exchange_icon__id__source_get',
      apiUrl: '${baseUrl}/api/v1/exchange/icon/${id}/source',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDestinationIconApiV1ExchangeIconIdDestinationGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_destination_icon_api_v1_exchange_icon__id__destination_get',
      apiUrl: '${baseUrl}/api/v1/exchange/icon/${id}/destination',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCryptoTransactionApiV1TransactionCryptoAdmingestfinGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? userIdList,
    List<String>? nomList,
    List<int>? quantiteList,
    List<int>? prixUnitaireList,
    bool? isDeleted,
    String? authtoken = '',
    int? isValidate,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final userId = _serializeList(userIdList);
    final nom = _serializeList(nomList);
    final quantite = _serializeList(quantiteList);
    final prixUnitaire = _serializeList(prixUnitaireList);

    return ApiManager.instance.makeApiCall(
      callName:
          'get_crypto_transaction_api_v1_transaction_crypto_admingestfin__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/admingestfin/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetACryptoTransactionApiV1TransactionCryptoAdmingestfinIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_crypto_transaction_api_v1_transaction_crypto_admingestfin__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/admingestfin/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetClientCryptoTransactionApiV1TransactionCryptoClientGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<String>? nomList,
    List<int>? quantiteList,
    List<int>? prixUnitaireList,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final nom = _serializeList(nomList);
    final quantite = _serializeList(quantiteList);
    final prixUnitaire = _serializeList(prixUnitaireList);

    return ApiManager.instance.makeApiCall(
      callName:
          'get_client_crypto_transaction_api_v1_transaction_crypto_client__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/client/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
        'nom': nom,
        'quantite': quantite,
        'prix_unitaire': prixUnitaire,
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAClientCryptoTransactionApiV1TransactionCryptoClientIdGetCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_client_crypto_transaction_api_v1_transaction_crypto_client__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/client/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateCrytoTransactionApiV1TransactionCryptoPostCall {
  Future<ApiCallResponse> call({
    int? cryptoId,
    int? cryptoQuantity,
    String? cryptowallet = '',
    int? userId,
    String? cryptoName = '',
    FFUploadedFile? proofPath,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_cryto_transaction_api_v1_transaction_crypto__post',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'proof': proofPath,
        'crypto_id': cryptoId,
        'crypto_quantity': cryptoQuantity,
        'crypto_wallet': cryptowallet,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateCryptoTransactionApiV1TransactionCryptoValidateIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authtoken = '',
    FFUploadedFile? proof,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'validate_crypto_transaction_api_v1_transaction_crypto_validate__id__post',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/validate/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'id': id,
        'proof': proof,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageApiV1TransactionCryptoAdmingestfinProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_api_v1_transaction_crypto_admingestfin_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/admingestfin/proof/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageApiV1TransactionCryptoAdmingestfinValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_api_v1_transaction_crypto_admingestfin_validate__id__get',
      apiUrl:
          '${baseUrl}/api/v1/transaction/crypto/admingestfin/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageClientApiV1TransactionCryptoClientProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_client_api_v1_transaction_crypto_client_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/client/proof/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageClientApiV1TransactionCryptoClientValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_client_api_v1_transaction_crypto_client_validate__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/crypto/client/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectTransactionsApiV1TransactionProjectAdmingestfinGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? projectIdList,
    List<int>? userIdList,
    String? projectTitre = '',
    bool? isDeleted,
    bool? isValidate,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final projectId = _serializeList(projectIdList);
    final userId = _serializeList(userIdList);

    return ApiManager.instance.makeApiCall(
      callName:
          'get_project_transactions_api_v1_transaction_project_admingestfin_get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/admingestfin',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAProjectTransactionsApiV1TransactionProjectAdmingestfinIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_project_transactions_api_v1_transaction_project_admingestfin__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/admingestfin/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProjectTransactionsClientApiV1TransactionProjectClientGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? projectIdList,
    String? projectTitre = '',
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final projectId = _serializeList(projectIdList);

    return ApiManager.instance.makeApiCall(
      callName:
          'get_project_transactions_client_api_v1_transaction_project_client_get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
        'project_id': projectId,
        'project_titre': projectTitre,
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAProjectTransactionClientApiV1TransactionProjectClientIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_project_transaction_client_api_v1_transaction_project_client__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/client/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateProjectTransactionApiV1TransactionProjectPostCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    int? projectId,
    int? montant,
    String? numero = '',
    FFUploadedFile? proofPath,
    String? projectTitre = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_project_transaction_api_v1_transaction_project__post',
      apiUrl: '${baseUrl}/api/v1/transaction/project/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'proof': proofPath,
        'project_id': projectId,
        'montant': montant,
        'numero': numero,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateProjectTransactionApiV1TransactionProjectValidateIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authtoken = '',
    FFUploadedFile? proof,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'validate_project_transaction_api_v1_transaction_project_validate__id__post',
      apiUrl: '${baseUrl}/api/v1/transaction/project/validate/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'id': id,
        'proof': proof,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageApiV1TransactionProjectAdmingestfinProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_api_v1_transaction_project_admingestfin_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/admingestfin/proof/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageApiV1TransactionProjectAdmingestfinValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_api_v1_transaction_project_admingestfin_validate__id__get',
      apiUrl:
          '${baseUrl}/api/v1/transaction/project/admingestfin/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageClientApiV1TransactionProjectClientProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_client_api_v1_transaction_project_client_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/client/proof/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageClientApiV1TransactionProjectClientValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_client_api_v1_transaction_project_client_validate__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/project/client/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetExchangeTransactionsApiV1TransactionExchangeAdmingestfinGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? userIdList,
    String? exchangeSource = '',
    String? exchangeDestination = '',
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final userId = _serializeList(userIdList);

    return ApiManager.instance.makeApiCall(
      callName:
          'get_exchange_transactions_api_v1_transaction_exchange_admingestfin_get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/admingestfin',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAExchangeTransactionsApiV1TransactionExchangeAdmingestfinIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_exchange_transactions_api_v1_transaction_exchange_admingestfin__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/admingestfin/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetExchangeTransactionsClientApiV1TransactionExchangeClientGetCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_exchange_transactions_client_api_v1_transaction_exchange_client_get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAExchangeTransactionClientApiV1TransactionExchangeClientIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_a_exchange_transaction_client_api_v1_transaction_exchange_client__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/client/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateExchangeTransactionApiV1TransactionExchangePostCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    FFUploadedFile? proofPath,
    int? exchangeId,
    int? montant,
    String? numero = '',
    String? wallet = '',
    String? source = '',
    String? destination = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_exchange_transaction_api_v1_transaction_exchange__post',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'proof': proofPath,
        'exchange_id': exchangeId,
        'montant': montant,
        'numero': numero,
        'wallet': wallet,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateExchangeTransactionApiV1TransactionExchangeValidateIdPostCall {
  Future<ApiCallResponse> call({
    int? id,
    String? authtoken = '',
    FFUploadedFile? proof,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'validate_exchange_transaction_api_v1_transaction_exchange_validate__id__post',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/validate/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'id': id,
        'proof': proof,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageApiV1TransactionExchangeAdmingestfinProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_api_v1_transaction_exchange_admingestfin_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/admingestfin/proof/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageApiV1TransactionExchangeAdmingestfinValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_api_v1_transaction_exchange_admingestfin_validate__id__get',
      apiUrl:
          '${baseUrl}/api/v1/transaction/exchange/admingestfin/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProofImageClientApiV1TransactionExchangeClientProofIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_proof_image_client_api_v1_transaction_exchange_client_proof__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/client/proof/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetValidateImageClientApiV1TransactionExchangeClientValidateIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName:
          'get_validate_image_client_api_v1_transaction_exchange_client_validate__id__get',
      apiUrl: '${baseUrl}/api/v1/transaction/exchange/client/validate/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'is_deleted': isDeleted,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPubApiV1PubIdGetCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_pub_api_v1_pub__id__get',
      apiUrl: '${baseUrl}/api/v1/pub/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyPubApiV1PubIdPatchCall {
  Future<ApiCallResponse> call({
    int? id,
    String? title = '',
    FFUploadedFile? content,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'modify_pub_api_v1_pub__id__patch',
      apiUrl: '${baseUrl}/api/v1/pub/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'title': title,
        'content': content,
        'id': id,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SuppressionPubApiV1PubIdDeleteCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'suppression_pub_api_v1_pub__id__delete',
      apiUrl: '${baseUrl}/api/v1/pub/${id}',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPubApiV1PubGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    String? title = '',
    bool? isDeleted,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_all_pub_api_v1_pub__get',
      apiUrl: '${baseUrl}/api/v1/pub/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPubApiV1PubPostCall {
  Future<ApiCallResponse> call({
    String? titre = '',
    FFUploadedFile? content,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'add_pub_api_v1_pub__post',
      apiUrl: '${baseUrl}/api/v1/pub/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'title': titre,
        'content': content,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAffilitedUserApiV1AffiliationGetCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_affilited_user_api_v1_affiliation__get',
      apiUrl: '${baseUrl}/api/v1/affiliation/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'user_id': userId,
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAffilitedUserClientApiV1AffiliationClientGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    String? authtoken = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_affilited_user_client_api_v1_affiliation_client_get',
      apiUrl: '${baseUrl}/api/v1/affiliation/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAffiliationCodeClientApiV1AffiliationClientPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_affiliation_code_client_api_v1_affiliation_client_post',
      apiUrl: '${baseUrl}/api/v1/affiliation/client',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UseAffiliationCodeApiV1AffiliationClientUsePostCall {
  Future<ApiCallResponse> call({
    String? authtoken = '',
    String? codeAffiliation = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'use_affiliation_code_api_v1_affiliation_client_use_post',
      apiUrl: '${baseUrl}/api/v1/affiliation/client/use',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {
        'code_affiliation': codeAffiliation,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAffiliationCodeApiV1AffiliationUserIdPostCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'create_affiliation_code_api_v1_affiliation__user_id__post',
      apiUrl: '${baseUrl}/api/v1/affiliation/${userId}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetContactApiV1ContactGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    bool? orderDescanding,
    List<int>? idList,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_contact_api_v1_contact__get',
      apiUrl: '${baseUrl}/api/v1/contact/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'order_descanding': orderDescanding,
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddContactApiV1ContactPostCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'add_contact_api_v1_contact__post',
      apiUrl: '${baseUrl}/api/v1/contact/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChatsApiV1ChatAgentsGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
    List<int>? idList,
    List<int>? userIdList,
    String? nom = '',
    String? prenoms = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();
    final id = _serializeList(idList);
    final userId = _serializeList(userIdList);

    return ApiManager.instance.makeApiCall(
      callName: 'get_chats_api_v1_chat_agents__get',
      apiUrl: '${baseUrl}/api/v1/chat/agents/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
        'id': id,
        'user_id': userId,
        'nom': nom,
        'prenoms': prenoms,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChatContentsApiV1ChatAgentsChatContentGetCall {
  Future<ApiCallResponse> call({
    int? chatId,
    int? page,
    int? nbPerPage,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get_chat_contents_api_v1_chat_agents_chat_content__get',
      apiUrl: '${baseUrl}/api/v1/chat/agents/chat/content/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'chat_id': chatId,
        'page': page,
        'nb_per_page': nbPerPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ClientChatContentsApiV1ChatClientsChatContentGetCall {
  Future<ApiCallResponse> call({
    int? page,
    int? nbPerPage,
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'client_chat_contents_api_v1_chat_clients_chat_content__get',
      apiUrl: '${baseUrl}/api/v1/chat/clients/chat/content/',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page': page,
        'nb_per_page': nbPerPage,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendchangepasswordcodeCall {
  Future<ApiCallResponse> call({
    String? userEmail = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Sendchangepasswordcode',
      apiUrl: '${baseUrl}/api/v1/user/password/send',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_email': userEmail,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckchangepasswordcodeCall {
  Future<ApiCallResponse> call({
    String? userEmail = '',
    String? secretCode = '',
    String? newpassword = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Checkchangepasswordcode',
      apiUrl: '${baseUrl}/api/v1/user/password/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_email': userEmail,
        'secret_code': secretCode,
        'new_password': newpassword,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckchangepasswordcodeCopyCall {
  Future<ApiCallResponse> call({
    String? userEmail = '',
    String? secretCode = '',
    String? newpassword = '',
  }) async {
    final baseUrl = PegdwendeExchangeApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Checkchangepasswordcode Copy',
      apiUrl: '${baseUrl}/api/v1/user/password/verify',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'user_email': userEmail,
        'secret_code': secretCode,
        'new_password': newpassword,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End PEGDWENDE EXCHANGE API Group Code

class GetaclientcryptotransactionCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getaclientcryptotransaction',
      apiUrl:
          'https://www.pegdwendeechange.com/api/v1/transaction/crypto/client/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetaclientprojettransactionCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getaclientprojettransaction',
      apiUrl:
          'https://www.pegdwendeechange.com/api/v1/transaction/project/client',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authtoken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
