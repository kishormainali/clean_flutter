// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schema_schema.freezed.dart';
part 'schema_schema.g.dart';

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Token with _$Token {
  const Token._();

  const factory Token({
    String? accessToken,
    DateTime? accessTokenExpiresIn,
    String? refreshToken,
    DateTime? refreshTokenExpiresIn,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserRespInEmailLogin with _$UserRespInEmailLogin {
  const UserRespInEmailLogin._();

  const factory UserRespInEmailLogin({
    String? G_id,
    String? authProvider,
    String? authProviderId,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    bool? isTemporaryPassword,
    String? displayImage,
    bool? hasUnreadNotification,
  }) = _UserRespInEmailLogin;

  factory UserRespInEmailLogin.fromJson(Map<String, dynamic> json) =>
      _$UserRespInEmailLoginFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatAuthToken with _$CometChatAuthToken {
  const CometChatAuthToken._();

  const factory CometChatAuthToken({
    required String uid,
    required String authToken,
    required double createdAt,
  }) = _CometChatAuthToken;

  factory CometChatAuthToken.fromJson(Map<String, dynamic> json) =>
      _$CometChatAuthTokenFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginWithEmailResponse with _$LoginWithEmailResponse {
  const LoginWithEmailResponse._();

  const factory LoginWithEmailResponse({
    String? message,
    UserRespInEmailLogin? user,
    required Token token,
    required String userType,
    CometChatAuthToken? cometChatAuthToken,
  }) = _LoginWithEmailResponse;

  factory LoginWithEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginWithEmailResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentType with _$AgentType {
  const AgentType._();

  const factory AgentType({
    required String G_id,
    required String email,
    required String status,
    bool? isDeleted,
    bool? isTemporaryPassword,
    required String role,
    String? agencyId,
    String? hasUnreadNotification,
  }) = _AgentType;

  factory AgentType.fromJson(Map<String, dynamic> json) =>
      _$AgentTypeFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentLoginResponse with _$AgentLoginResponse {
  const AgentLoginResponse._();

  const factory AgentLoginResponse({
    String? message,
    required AgentType agent,
    required Token token,
    CometChatAuthToken? cometChatAuthToken,
    required String userType,
  }) = _AgentLoginResponse;

  factory AgentLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AgentLoginResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserRespInAppleLogin with _$UserRespInAppleLogin {
  const UserRespInAppleLogin._();

  const factory UserRespInAppleLogin({
    String? G_id,
    String? email,
    String? loginType,
    String? hasUnreadNotification,
  }) = _UserRespInAppleLogin;

  factory UserRespInAppleLogin.fromJson(Map<String, dynamic> json) =>
      _$UserRespInAppleLoginFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginWithAppleResponse with _$LoginWithAppleResponse {
  const LoginWithAppleResponse._();

  const factory LoginWithAppleResponse({
    String? message,
    UserRespInAppleLogin? user,
    required Token token,
    CometChatAuthToken? cometChatAuthToken,
  }) = _LoginWithAppleResponse;

  factory LoginWithAppleResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginWithAppleResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class MessageResponse with _$MessageResponse {
  const MessageResponse._();

  const factory MessageResponse({String? message}) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class VerificationCodeExpiry with _$VerificationCodeExpiry {
  const VerificationCodeExpiry._();

  const factory VerificationCodeExpiry({
    required double expiresByInMilliSec,
    required DateTime expiresAt,
  }) = _VerificationCodeExpiry;

  factory VerificationCodeExpiry.fromJson(Map<String, dynamic> json) =>
      _$VerificationCodeExpiryFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RegisterWithEmailResponse with _$RegisterWithEmailResponse {
  const RegisterWithEmailResponse._();

  const factory RegisterWithEmailResponse({
    required String message,
    VerificationCodeExpiry? expiry,
  }) = _RegisterWithEmailResponse;

  factory RegisterWithEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterWithEmailResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserRespInLogin with _$UserRespInLogin {
  const UserRespInLogin._();

  const factory UserRespInLogin({
    String? G_id,
    String? email,
    String? loginType,
    String? hasUnreadNotification,
  }) = _UserRespInLogin;

  factory UserRespInLogin.fromJson(Map<String, dynamic> json) =>
      _$UserRespInLoginFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginResponse with _$LoginResponse {
  const LoginResponse._();

  const factory LoginResponse({
    String? message,
    UserRespInLogin? user,
    required Token token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class VerifyEmailResponse with _$VerifyEmailResponse {
  const VerifyEmailResponse._();

  const factory VerifyEmailResponse({
    String? message,
    UserRespInLogin? user,
    required Token token,
    CometChatAuthToken? cometChatAuthToken,
  }) = _VerifyEmailResponse;

  factory VerifyEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ForgotPasswordVerificationExpiry
    with _$ForgotPasswordVerificationExpiry {
  const ForgotPasswordVerificationExpiry._();

  const factory ForgotPasswordVerificationExpiry({
    required double expiresByInMilliSec,
    required DateTime expiresAt,
  }) = _ForgotPasswordVerificationExpiry;

  factory ForgotPasswordVerificationExpiry.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPasswordVerificationExpiryFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const ForgotPasswordResponse._();

  const factory ForgotPasswordResponse({
    required String message,
    ForgotPasswordVerificationExpiry? expiry,
  }) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CoordinatesResponse with _$CoordinatesResponse {
  const CoordinatesResponse._();

  const factory CoordinatesResponse({
    required double lat,
    required double long,
  }) = _CoordinatesResponse;

  factory CoordinatesResponse.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddressResponse with _$AddressResponse {
  const AddressResponse._();

  const factory AddressResponse({
    required String displayAddress,
    required CoordinatesResponse coordinates,
  }) = _AddressResponse;

  factory AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$AddressResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserInProfileUpdate with _$UserInProfileUpdate {
  const UserInProfileUpdate._();

  const factory UserInProfileUpdate({
    required String G_id,
    String? authProvider,
    String? authProviderId,
    String? firstName,
    String? lastName,
    AddressResponse? address,
  }) = _UserInProfileUpdate;

  factory UserInProfileUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserInProfileUpdateFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ProfileUpdateResponse with _$ProfileUpdateResponse {
  const ProfileUpdateResponse._();

  const factory ProfileUpdateResponse({
    String? message,
    UserInProfileUpdate? user,
  }) = _ProfileUpdateResponse;

  factory ProfileUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class VerificationExpiry with _$VerificationExpiry {
  const VerificationExpiry._();

  const factory VerificationExpiry({
    required double expiresByInMilliSec,
    required DateTime expiresAt,
  }) = _VerificationExpiry;

  factory VerificationExpiry.fromJson(Map<String, dynamic> json) =>
      _$VerificationExpiryFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class OTPResponse with _$OTPResponse {
  const OTPResponse._();

  const factory OTPResponse({
    required String message,
    VerificationExpiry? expiry,
  }) = _OTPResponse;

  factory OTPResponse.fromJson(Map<String, dynamic> json) =>
      _$OTPResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserRespInFacebookLogin with _$UserRespInFacebookLogin {
  const UserRespInFacebookLogin._();

  const factory UserRespInFacebookLogin({
    String? G_id,
    String? email,
    String? loginType,
    String? hasUnreadNotification,
  }) = _UserRespInFacebookLogin;

  factory UserRespInFacebookLogin.fromJson(Map<String, dynamic> json) =>
      _$UserRespInFacebookLoginFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginWithFacebookResponse with _$LoginWithFacebookResponse {
  const LoginWithFacebookResponse._();

  const factory LoginWithFacebookResponse({
    String? message,
    UserRespInFacebookLogin? user,
    required Token token,
    CometChatAuthToken? cometChatAuthToken,
  }) = _LoginWithFacebookResponse;

  factory LoginWithFacebookResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginWithFacebookResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UserRespInGoogleLogin with _$UserRespInGoogleLogin {
  const UserRespInGoogleLogin._();

  const factory UserRespInGoogleLogin({
    String? G_id,
    String? email,
    String? loginType,
    String? hasUnreadNotification,
  }) = _UserRespInGoogleLogin;

  factory UserRespInGoogleLogin.fromJson(Map<String, dynamic> json) =>
      _$UserRespInGoogleLoginFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginWithGoogleResponse with _$LoginWithGoogleResponse {
  const LoginWithGoogleResponse._();

  const factory LoginWithGoogleResponse({
    String? message,
    UserRespInGoogleLogin? user,
    required Token token,
    CometChatAuthToken? cometChatAuthToken,
  }) = _LoginWithGoogleResponse;

  factory LoginWithGoogleResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginWithGoogleResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Word with _$Word {
  const Word._();

  const factory Word({
    required String G_id,
    required String name,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class WordResponse with _$WordResponse {
  const WordResponse._();

  const factory WordResponse({required List<Word> data}) = _WordResponse;

  factory WordResponse.fromJson(Map<String, dynamic> json) =>
      _$WordResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentDetails with _$AgentDetails {
  const AgentDetails._();

  const factory AgentDetails({
    String? agencyId,
    required String agentId,
    required String agentName,
    String? agentImage,
    String? agencyLogo,
    String? agentContactNumber,
  }) = _AgentDetails;

  factory AgentDetails.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailsFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Location with _$Location {
  const Location._();

  const factory Location({
    String? type,
    required List<double> coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Address with _$Address {
  const Address._();

  const factory Address({
    required String displayAddress,
    required String suburb,
    required String state,
    required String country,
    required String postalCode,
    required Location location,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Stats with _$Stats {
  const Stats._();

  const factory Stats({
    double? views,
    double? saves,
    double? inspection,
    double? reviews,
    double? enquiry,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyDetails with _$PropertyDetails {
  const PropertyDetails._();

  const factory PropertyDetails({
    double? bed,
    double? bath,
    double? car,
    double? pool,
  }) = _PropertyDetails;

  factory PropertyDetails.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailsFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AuctionDateResponse with _$AuctionDateResponse {
  const AuctionDateResponse._();

  const factory AuctionDateResponse({
    required DateTime date,
    required String startTime,
    String? endTime,
  }) = _AuctionDateResponse;

  factory AuctionDateResponse.fromJson(Map<String, dynamic> json) =>
      _$AuctionDateResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PaginationType with _$PaginationType {
  const PaginationType._();

  const factory PaginationType({
    required double total,
    required bool hasNextPage,
  }) = _PaginationType;

  factory PaginationType.fromJson(Map<String, dynamic> json) =>
      _$PaginationTypeFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class InspectionDateResponse with _$InspectionDateResponse {
  const InspectionDateResponse._();

  const factory InspectionDateResponse({
    String? G_id,
    required DateTime date,
    required String startTime,
    String? endTime,
  }) = _InspectionDateResponse;

  factory InspectionDateResponse.fromJson(Map<String, dynamic> json) =>
      _$InspectionDateResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Property with _$Property {
  const Property._();

  const factory Property({
    required String G_id,
    String? name,
    required String listingType,
    required String property,
    String? type,
    required String saleType,
    String? subSaleType,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    bool? showPrice,
    String? priceUnit,
    PropertyDetails? details,
    Stats? stats,
    AgentDetails? agentDetails,
    Address? address,
    String? status,
    double? landSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    List<String>? propertyType,
    AuctionDateResponse? auctionDate,
    bool? isSaved,
    double? soldPrice,
    bool? showSoldPrice,
    double? totalAverageRatings,
    String? locationImage,
    bool? isInspectionByAppointment,
    String? cometChatBuyerGroupId,
    List<String>? likedBy,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyListResponse with _$PropertyListResponse {
  const PropertyListResponse._();

  const factory PropertyListResponse({
    required List<Property> data,
    required PaginationType pagination,
  }) = _PropertyListResponse;

  factory PropertyListResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyListResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgencyPropertyListResponse with _$AgencyPropertyListResponse {
  const AgencyPropertyListResponse._();

  const factory AgencyPropertyListResponse({
    required List<Property> data,
    required PaginationType pagination,
    required String agencyName,
  }) = _AgencyPropertyListResponse;

  factory AgencyPropertyListResponse.fromJson(Map<String, dynamic> json) =>
      _$AgencyPropertyListResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EarlyBirdPropertyListResponse
    with _$EarlyBirdPropertyListResponse {
  const EarlyBirdPropertyListResponse._();

  const factory EarlyBirdPropertyListResponse({
    required List<Property> data,
    required PaginationType pagination,
  }) = _EarlyBirdPropertyListResponse;

  factory EarlyBirdPropertyListResponse.fromJson(Map<String, dynamic> json) =>
      _$EarlyBirdPropertyListResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyListMapResponse with _$PropertyListMapResponse {
  const PropertyListMapResponse._();

  const factory PropertyListMapResponse({required List<Property> data}) =
      _PropertyListMapResponse;

  factory PropertyListMapResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyListMapResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyDetail with _$PropertyDetail {
  const PropertyDetail._();

  const factory PropertyDetail({
    required String G_id,
    String? name,
    required String listingType,
    required String property,
    String? type,
    required String saleType,
    String? subSaleType,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    bool? showPrice,
    String? priceUnit,
    PropertyDetails? details,
    Stats? stats,
    AgentDetails? agentDetails,
    Address? address,
    String? status,
    double? landSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    List<String>? propertyType,
    AuctionDateResponse? auctionDate,
    bool? isSaved,
    double? soldPrice,
    bool? showSoldPrice,
    double? totalAverageRatings,
    String? locationImage,
    bool? isInspectionByAppointment,
    String? cometChatBuyerGroupId,
    List<String>? likedBy,
    String? description,
    List<InspectionDateResponse>? inspectionDates,
    DateTime? availableFrom,
    String? floorPlanUrl,
    String? agentPriceGuideUrl,
    String? videoUrl,
    double? buildingSize,
    bool? isVacant,
    bool? isTenated,
    bool? isPetAllowed,
    bool? isFurnished,
    String? councilZoning,
    String? straNumber,
  }) = _PropertyDetail;

  factory PropertyDetail.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyDetailResponse with _$PropertyDetailResponse {
  const PropertyDetailResponse._();

  const factory PropertyDetailResponse({required PropertyDetail data}) =
      _PropertyDetailResponse;

  factory PropertyDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertySetting with _$PropertySetting {
  const PropertySetting._();

  const factory PropertySetting({required String status}) = _PropertySetting;

  factory PropertySetting.fromJson(Map<String, dynamic> json) =>
      _$PropertySettingFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertySettingResponse with _$PropertySettingResponse {
  const PropertySettingResponse._();

  const factory PropertySettingResponse({required PropertySetting data}) =
      _PropertySettingResponse;

  factory PropertySettingResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertySettingResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddPropertyResponse with _$AddPropertyResponse {
  const AddPropertyResponse._();

  const factory AddPropertyResponse({
    String? message,
    required String propertyId,
  }) = _AddPropertyResponse;

  factory AddPropertyResponse.fromJson(Map<String, dynamic> json) =>
      _$AddPropertyResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyListCountResponse with _$PropertyListCountResponse {
  const PropertyListCountResponse._();

  const factory PropertyListCountResponse({
    double? totalCommercial,
    double? totalResidential,
    double? totalHolidayLetting,
  }) = _PropertyListCountResponse;

  factory PropertyListCountResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyListCountResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyTypeData with _$PropertyTypeData {
  const PropertyTypeData._();

  const factory PropertyTypeData({
    required String type,
    required List<Property> properties,
  }) = _PropertyTypeData;

  factory PropertyTypeData.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeDataFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyListWithTypeResponse with _$PropertyListWithTypeResponse {
  const PropertyListWithTypeResponse._();

  const factory PropertyListWithTypeResponse(
      {required List<PropertyTypeData> data}) = _PropertyListWithTypeResponse;

  factory PropertyListWithTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$PropertyListWithTypeResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class InspectionDetails with _$InspectionDetails {
  const InspectionDetails._();

  const factory InspectionDetails({
    DateTime? date,
    String? startTime,
    String? endTime,
  }) = _InspectionDetails;

  factory InspectionDetails.fromJson(Map<String, dynamic> json) =>
      _$InspectionDetailsFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddInspectionDetail with _$AddInspectionDetail {
  const AddInspectionDetail._();

  const factory AddInspectionDetail({
    DateTime? date,
    String? startTime,
    String? endTime,
    String? G_id,
  }) = _AddInspectionDetail;

  factory AddInspectionDetail.fromJson(Map<String, dynamic> json) =>
      _$AddInspectionDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class InspectionDetailsList with _$InspectionDetailsList {
  const InspectionDetailsList._();

  const factory InspectionDetailsList({List<InspectionDetails>? data}) =
      _InspectionDetailsList;

  factory InspectionDetailsList.fromJson(Map<String, dynamic> json) =>
      _$InspectionDetailsListFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddInspectionDetailsResponse with _$AddInspectionDetailsResponse {
  const AddInspectionDetailsResponse._();

  const factory AddInspectionDetailsResponse({
    String? message,
    List<AddInspectionDetail>? data,
  }) = _AddInspectionDetailsResponse;

  factory AddInspectionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$AddInspectionDetailsResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CheckInDetails with _$CheckInDetails {
  const CheckInDetails._();

  const factory CheckInDetails({
    String? buyerId,
    required String firstName,
    String? lastName,
    DateTime? checkInDateTime,
    String? displayImage,
  }) = _CheckInDetails;

  factory CheckInDetails.fromJson(Map<String, dynamic> json) =>
      _$CheckInDetailsFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CheckInDetailsList with _$CheckInDetailsList {
  const CheckInDetailsList._();

  const factory CheckInDetailsList({
    required List<CheckInDetails> data,
    required PaginationType pagination,
  }) = _CheckInDetailsList;

  factory CheckInDetailsList.fromJson(Map<String, dynamic> json) =>
      _$CheckInDetailsListFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewOption with _$ReviewOption {
  const ReviewOption._();

  const factory ReviewOption({
    required String G_id,
    required String title,
  }) = _ReviewOption;

  factory ReviewOption.fromJson(Map<String, dynamic> json) =>
      _$ReviewOptionFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PricingEstimation with _$PricingEstimation {
  const PricingEstimation._();

  const factory PricingEstimation({
    required double minimum,
    required double maximum,
  }) = _PricingEstimation;

  factory PricingEstimation.fromJson(Map<String, dynamic> json) =>
      _$PricingEstimationFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewSetting with _$ReviewSetting {
  const ReviewSetting._();

  const factory ReviewSetting({
    required String G_id,
    required List<ReviewOption> options,
    required String type,
    required double characterLimit,
    required PricingEstimation pricingEstimation,
  }) = _ReviewSetting;

  factory ReviewSetting.fromJson(Map<String, dynamic> json) =>
      _$ReviewSettingFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewSettingResponse with _$ReviewSettingResponse {
  const ReviewSettingResponse._();

  const factory ReviewSettingResponse({required ReviewSetting data}) =
      _ReviewSettingResponse;

  factory ReviewSettingResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewSettingResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Rating with _$Rating {
  const Rating._();

  const factory Rating({
    required String title,
    required double ratings,
    required String reviewOptionId,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewData with _$ReviewData {
  const ReviewData._();

  const factory ReviewData({
    required String G_id,
    required String description,
    required String reviewerFirstName,
    required DateTime createdAt,
    required double pricingEstimate,
    required List<Rating> reviews,
  }) = _ReviewData;

  factory ReviewData.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewResponse with _$ReviewResponse {
  const ReviewResponse._();

  const factory ReviewResponse({
    required List<ReviewData> data,
    required PaginationType pagination,
  }) = _ReviewResponse;

  factory ReviewResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryBuyer with _$EnquiryBuyer {
  const EnquiryBuyer._();

  const factory EnquiryBuyer({
    required String G_id,
    required String propertyId,
    required String propertyAddress,
    required String agentId,
    String? agentImage,
    required String agentName,
    String? lastSentMessage,
    String? lastMessageSentBy,
    String? buyerImage,
    String? buyerId,
    String? buyerName,
  }) = _EnquiryBuyer;

  factory EnquiryBuyer.fromJson(Map<String, dynamic> json) =>
      _$EnquiryBuyerFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryBuyerResponse with _$EnquiryBuyerResponse {
  const EnquiryBuyerResponse._();

  const factory EnquiryBuyerResponse({
    required List<EnquiryBuyer> data,
    required PaginationType pagination,
  }) = _EnquiryBuyerResponse;

  factory EnquiryBuyerResponse.fromJson(Map<String, dynamic> json) =>
      _$EnquiryBuyerResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GroupedEnquiry with _$GroupedEnquiry {
  const GroupedEnquiry._();

  const factory GroupedEnquiry({
    required String G_id,
    required String propertyName,
    String? propertyAddress,
    String? propertyImage,
    required double count,
  }) = _GroupedEnquiry;

  factory GroupedEnquiry.fromJson(Map<String, dynamic> json) =>
      _$GroupedEnquiryFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GroupedResponse with _$GroupedResponse {
  const GroupedResponse._();

  const factory GroupedResponse({
    required List<GroupedEnquiry> data,
    required PaginationType pagination,
  }) = _GroupedResponse;

  factory GroupedResponse.fromJson(Map<String, dynamic> json) =>
      _$GroupedResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryPropertyResponse with _$EnquiryPropertyResponse {
  const EnquiryPropertyResponse._();

  const factory EnquiryPropertyResponse({
    String? G_id,
    String? lastSentMessage,
    String? lastMessageSentBy,
    String? buyerImage,
    String? buyerId,
    String? buyerName,
    String? propertyAddress,
  }) = _EnquiryPropertyResponse;

  factory EnquiryPropertyResponse.fromJson(Map<String, dynamic> json) =>
      _$EnquiryPropertyResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiriesPropertyResponse with _$EnquiriesPropertyResponse {
  const EnquiriesPropertyResponse._();

  const factory EnquiriesPropertyResponse({
    required List<EnquiryPropertyResponse> data,
    required PaginationType pagination,
  }) = _EnquiriesPropertyResponse;

  factory EnquiriesPropertyResponse.fromJson(Map<String, dynamic> json) =>
      _$EnquiriesPropertyResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChat with _$CometChat {
  const CometChat._();

  const factory CometChat({
    required String agentId,
    required String buyerId,
    required String propertyId,
    required String cometGroupId,
  }) = _CometChat;

  factory CometChat.fromJson(Map<String, dynamic> json) =>
      _$CometChatFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatGroup with _$CometChatGroup {
  const CometChatGroup._();

  const factory CometChatGroup({
    required String agentId,
    required String propertyId,
    String? propertyName,
    required String propertyAddress,
    String? propertyImage,
    required double newEnquiryCount,
  }) = _CometChatGroup;

  factory CometChatGroup.fromJson(Map<String, dynamic> json) =>
      _$CometChatGroupFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatGroupResponse with _$CometChatGroupResponse {
  const CometChatGroupResponse._();

  const factory CometChatGroupResponse({
    List<CometChatGroup>? data,
    required PaginationType pagination,
  }) = _CometChatGroupResponse;

  factory CometChatGroupResponse.fromJson(Map<String, dynamic> json) =>
      _$CometChatGroupResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatResponse with _$CometChatResponse {
  const CometChatResponse._();

  const factory CometChatResponse({CometChat? data}) = _CometChatResponse;

  factory CometChatResponse.fromJson(Map<String, dynamic> json) =>
      _$CometChatResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddEnquiryResponse with _$AddEnquiryResponse {
  const AddEnquiryResponse._();

  const factory AddEnquiryResponse({
    String? message,
    required String cometChatGroupId,
  }) = _AddEnquiryResponse;

  factory AddEnquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddEnquiryResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Collection with _$Collection {
  const Collection._();

  const factory Collection({
    String? G_id,
    required String title,
    String? thumbnailUrl,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CollectionResponse with _$CollectionResponse {
  const CollectionResponse._();

  const factory CollectionResponse({
    required List<Collection> data,
    required String message,
  }) = _CollectionResponse;

  factory CollectionResponse.fromJson(Map<String, dynamic> json) =>
      _$CollectionResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavedSearchAddressResponse with _$SavedSearchAddressResponse {
  const SavedSearchAddressResponse._();

  const factory SavedSearchAddressResponse({
    required String displayAddress,
    required String suburb,
    required String stateFullName,
    required String stateShortName,
    required String country,
    required double postalCode,
    required double latitude,
    required double longitude,
  }) = _SavedSearchAddressResponse;

  factory SavedSearchAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchAddressResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavedSearchFilter with _$SavedSearchFilter {
  const SavedSearchFilter._();

  const factory SavedSearchFilter({
    required String G_id,
    required String title,
    String? property,
    String? saleType,
    String? subSaleType,
    bool? showOnlySold,
    bool? showOnlyLeased,
    double? minPrice,
    double? maxPrice,
    String? priceUnit,
    bool? includeUnderContract,
    double? bed,
    double? bath,
    double? car,
    double? minLandSize,
    double? maxLandSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    List<String>? propertyType,
    double? minBuildingSize,
    double? maxBuildingSize,
    bool? isPetAllowed,
    bool? isFurnished,
    bool? pool,
    List<SavedSearchAddressResponse>? address,
  }) = _SavedSearchFilter;

  factory SavedSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchFilterFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavedSearchFilterResponse with _$SavedSearchFilterResponse {
  const SavedSearchFilterResponse._();

  const factory SavedSearchFilterResponse({
    required List<SavedSearchFilter> data,
    required PaginationType pagination,
  }) = _SavedSearchFilterResponse;

  factory SavedSearchFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchFilterResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SignedUrlResponse with _$SignedUrlResponse {
  const SignedUrlResponse._();

  const factory SignedUrlResponse({required String link}) = _SignedUrlResponse;

  factory SignedUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$SignedUrlResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CmsPageResponse with _$CmsPageResponse {
  const CmsPageResponse._();

  const factory CmsPageResponse({
    required String G_id,
    required String title,
    required String slug,
    required String content,
  }) = _CmsPageResponse;

  factory CmsPageResponse.fromJson(Map<String, dynamic> json) =>
      _$CmsPageResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SubscriptionResponse with _$SubscriptionResponse {
  const SubscriptionResponse._();

  const factory SubscriptionResponse({
    String? subscriptionId,
    String? status,
    String? agencyId,
    String? collection_method,
    DateTime? billing_cycle_anchor,
    String? customer,
    String? default_payment_method,
    String? cancel_at_period_end,
    DateTime? current_period_end,
    DateTime? current_period_start,
    DateTime? cancel_at,
    DateTime? canceled_at,
    DateTime? start_date,
    DateTime? ended_at,
    String? latest_invoice,
    double? days_until_due,
    String? schedule,
  }) = _SubscriptionResponse;

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationSetting with _$NotificationSetting {
  const NotificationSetting._();

  const factory NotificationSetting({
    bool? message,
    bool? property,
  }) = _NotificationSetting;

  factory NotificationSetting.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SubscriptionError with _$SubscriptionError {
  const SubscriptionError._();

  const factory SubscriptionError({
    String? title,
    String? message,
  }) = _SubscriptionError;

  factory SubscriptionError.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionErrorFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentDetail with _$AgentDetail {
  const AgentDetail._();

  const factory AgentDetail({
    required String G_id,
    String? agentImage,
    String? agencyLogo,
    String? agencyName,
    String? firstName,
    String? lastName,
    required String phoneNumber,
    String? email,
    NotificationSetting? notificationSetting,
    bool? hasUnreadNotification,
    SubscriptionResponse? subscription,
    SubscriptionError? subscriptionError,
  }) = _AgentDetail;

  factory AgentDetail.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentDetailResponse with _$AgentDetailResponse {
  const AgentDetailResponse._();

  const factory AgentDetailResponse({
    required String message,
    required AgentDetail agent,
  }) = _AgentDetailResponse;

  factory AgentDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class DashboardInfo with _$DashboardInfo {
  const DashboardInfo._();

  const factory DashboardInfo({
    required double residential,
    required double commercial,
    required double other,
    required String agencyName,
    required String agencyLogo,
    required String agencyAddress,
    required String contactNumber,
    required double totalBuyers,
    required double totalSold,
    required double totalRentalEnquiries,
  }) = _DashboardInfo;

  factory DashboardInfo.fromJson(Map<String, dynamic> json) =>
      _$DashboardInfoFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class DashboardResponse with _$DashboardResponse {
  const DashboardResponse._();

  const factory DashboardResponse({required DashboardInfo data}) =
      _DashboardResponse;

  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PricingOption with _$PricingOption {
  const PricingOption._();

  const factory PricingOption({
    double? salePost,
    double? rentPost,
    double? holidayLettings,
  }) = _PricingOption;

  factory PricingOption.fromJson(Map<String, dynamic> json) =>
      _$PricingOptionFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentSubscriptionsettingsDetail
    with _$AgentSubscriptionsettingsDetail {
  const AgentSubscriptionsettingsDetail._();

  const factory AgentSubscriptionsettingsDetail({
    required String G_id,
    String? agencyId,
    DateTime? commencementDate,
    String? billingCycle,
    PricingOption? residentialPricing,
    PricingOption? commercialPricing,
    PricingOption? relistingPricing,
    bool? autoCharge,
    String? productId,
    String? priceId,
    double? fee,
  }) = _AgentSubscriptionsettingsDetail;

  factory AgentSubscriptionsettingsDetail.fromJson(Map<String, dynamic> json) =>
      _$AgentSubscriptionsettingsDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerProfile with _$BuyerProfile {
  const BuyerProfile._();

  const factory BuyerProfile({
    required String G_id,
    String? firstName,
    String? lastName,
    String? displayImage,
    String? phoneNumber,
    String? qrCode,
    String? authProvider,
    String? authProviderId,
  }) = _BuyerProfile;

  factory BuyerProfile.fromJson(Map<String, dynamic> json) =>
      _$BuyerProfileFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerProfileResponse with _$BuyerProfileResponse {
  const BuyerProfileResponse._();

  const factory BuyerProfileResponse({required BuyerProfile data}) =
      _BuyerProfileResponse;

  factory BuyerProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$BuyerProfileResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerDetailNotificationSetting
    with _$BuyerDetailNotificationSetting {
  const BuyerDetailNotificationSetting._();

  const factory BuyerDetailNotificationSetting({
    bool? message,
    bool? property,
  }) = _BuyerDetailNotificationSetting;

  factory BuyerDetailNotificationSetting.fromJson(Map<String, dynamic> json) =>
      _$BuyerDetailNotificationSettingFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerDetail with _$BuyerDetail {
  const BuyerDetail._();

  const factory BuyerDetail({
    required String G_id,
    String? firstName,
    String? lastName,
    String? displayImage,
    String? phoneNumber,
    String? qrCode,
    String? authProvider,
    String? authProviderId,
    BuyerDetailNotificationSetting? notificationSetting,
    bool? hasUnreadNotification,
  }) = _BuyerDetail;

  factory BuyerDetail.fromJson(Map<String, dynamic> json) =>
      _$BuyerDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatAuthTokenBuyer with _$CometChatAuthTokenBuyer {
  const CometChatAuthTokenBuyer._();

  const factory CometChatAuthTokenBuyer({
    required String uid,
    required String authToken,
    required double createdAt,
  }) = _CometChatAuthTokenBuyer;

  factory CometChatAuthTokenBuyer.fromJson(Map<String, dynamic> json) =>
      _$CometChatAuthTokenBuyerFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CometChatAuthResponse with _$CometChatAuthResponse {
  const CometChatAuthResponse._();

  const factory CometChatAuthResponse({CometChatAuthTokenBuyer? data}) =
      _CometChatAuthResponse;

  factory CometChatAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$CometChatAuthResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PreSignedUrl with _$PreSignedUrl {
  const PreSignedUrl._();

  const factory PreSignedUrl({
    required String key,
    required String url,
  }) = _PreSignedUrl;

  factory PreSignedUrl.fromJson(Map<String, dynamic> json) =>
      _$PreSignedUrlFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PreSignedUrlResponse with _$PreSignedUrlResponse {
  const PreSignedUrlResponse._();

  const factory PreSignedUrlResponse({required PreSignedUrl data}) =
      _PreSignedUrlResponse;

  factory PreSignedUrlResponse.fromJson(Map<String, dynamic> json) =>
      _$PreSignedUrlResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ImageResponse with _$ImageResponse {
  const ImageResponse._();

  const factory ImageResponse({required String url}) = _ImageResponse;

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Pagination with _$Pagination {
  const Pagination._();

  const factory Pagination({
    required double total,
    required bool hasNextPage,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Notification with _$Notification {
  const Notification._();

  const factory Notification({
    required String G_id,
    String? notificationTokenId,
    String? title,
    String? body,
    String? createdBy,
    String? status,
    bool? isRead,
    String? type,
    String? cometChatGroupId,
    Property? property,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationsResponse with _$NotificationsResponse {
  const NotificationsResponse._();

  const factory NotificationsResponse({
    String? message,
    required PaginationType pagination,
    Notification? notification,
    List<Notification>? notifications,
  }) = _NotificationsResponse;

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationsResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationTokenResponse with _$NotificationTokenResponse {
  const NotificationTokenResponse._();

  const factory NotificationTokenResponse({
    String? G_id,
    String? userId,
    String? deviceType,
    String? notificationToken,
    String? createdBy,
    String? status,
  }) = _NotificationTokenResponse;

  factory NotificationTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationTokenResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SettingsResponse with _$SettingsResponse {
  const SettingsResponse._();

  const factory SettingsResponse({
    required String G_id,
    required String dynamicLink,
  }) = _SettingsResponse;

  factory SettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$SettingsResponseFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationsFilter with _$NotificationsFilter {
  const NotificationsFilter._();

  const factory NotificationsFilter({
    required double skip,
    required double limit,
    bool? isread,
  }) = _NotificationsFilter;

  factory NotificationsFilter.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFilterFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PreSignedInput with _$PreSignedInput {
  const PreSignedInput._();

  const factory PreSignedInput({
    required String key,
    required String contentType,
  }) = _PreSignedInput;

  factory PreSignedInput.fromJson(Map<String, dynamic> json) =>
      _$PreSignedInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GetThumbnailInput with _$GetThumbnailInput {
  const GetThumbnailInput._();

  const factory GetThumbnailInput({
    required String key,
    required String size,
  }) = _GetThumbnailInput;

  factory GetThumbnailInput.fromJson(Map<String, dynamic> json) =>
      _$GetThumbnailInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GetCmsPage with _$GetCmsPage {
  const GetCmsPage._();

  const factory GetCmsPage({required String slug}) = _GetCmsPage;

  factory GetCmsPage.fromJson(Map<String, dynamic> json) =>
      _$GetCmsPageFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class WordInput with _$WordInput {
  const WordInput._();

  const factory WordInput({
    String? searchKey,
    required PropertyEnum type,
  }) = _WordInput;

  factory WordInput.fromJson(Map<String, dynamic> json) =>
      _$WordInputFromJson(json);
}

enum PropertyEnum {
  @JsonValue("commercial")
  commercial,
  @JsonValue("residential")
  residential,
  @JsonValue("holidayLetting")
  holidayLetting
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerPropertyListInput with _$BuyerPropertyListInput {
  const BuyerPropertyListInput._();

  const factory BuyerPropertyListInput({
    required PaginationInput pagination,
    FilterInput? filter,
    List<SearchPropertyInput>? searchOption,
    SortOptionInput? sortOption,
    required bool includeSurroundingSuburb,
  }) = _BuyerPropertyListInput;

  factory BuyerPropertyListInput.fromJson(Map<String, dynamic> json) =>
      _$BuyerPropertyListInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PaginationInput with _$PaginationInput {
  const PaginationInput._();

  const factory PaginationInput({
    required double skip,
    required double limit,
  }) = _PaginationInput;

  factory PaginationInput.fromJson(Map<String, dynamic> json) =>
      _$PaginationInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class FilterInput with _$FilterInput {
  const FilterInput._();

  const factory FilterInput({
    PropertyEnum? property,
    SaleTypeEnum? saleType,
    SubSaleTypeEnum? subSaleType,
    bool? showOnlySold,
    bool? showOnlyLeased,
    double? minPrice,
    double? maxPrice,
    PriceUnitEnum? priceUnit,
    bool? includeUnderContract,
    double? bed,
    double? bath,
    double? car,
    double? minLandSize,
    double? maxLandSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    List<String>? propertyType,
    double? minBuildingSize,
    double? maxBuildingSize,
    bool? isPetAllowed,
    bool? isFurnished,
    bool? pool,
  }) = _FilterInput;

  factory FilterInput.fromJson(Map<String, dynamic> json) =>
      _$FilterInputFromJson(json);
}

enum SaleTypeEnum {
  @JsonValue("sale")
  sale,
  @JsonValue("rent")
  rent
}

enum SubSaleTypeEnum {
  @JsonValue("offersInvited")
  offersInvited,
  @JsonValue("auction")
  auction,
  @JsonValue("expressionOfInterest")
  expressionOfInterest,
  @JsonValue("contactAgent")
  contactAgent,
  @JsonValue("tender")
  tender
}

enum PriceUnitEnum {
  @JsonValue("pw")
  pw,
  @JsonValue("pd")
  pd,
  @JsonValue("pm")
  pm,
  @JsonValue("pa")
  pa,
  @JsonValue("pn")
  pn
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SearchPropertyInput with _$SearchPropertyInput {
  const SearchPropertyInput._();

  const factory SearchPropertyInput({
    required double latitude,
    required double longitude,
    String? suburb,
    String? stateShortName,
    String? stateFullName,
  }) = _SearchPropertyInput;

  factory SearchPropertyInput.fromJson(Map<String, dynamic> json) =>
      _$SearchPropertyInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SortOptionInput with _$SortOptionInput {
  const SortOptionInput._();

  const factory SortOptionInput({
    required SortByEnum sortBy,
    required SortOrderEnum sortOrder,
  }) = _SortOptionInput;

  factory SortOptionInput.fromJson(Map<String, dynamic> json) =>
      _$SortOptionInputFromJson(json);
}

enum SortByEnum {
  @JsonValue("createdAt")
  createdAt,
  @JsonValue("price")
  price,
  @JsonValue("inspectionDates")
  inspectionDates,
  @JsonValue("auctionDate")
  auctionDate
}

enum SortOrderEnum {
  @JsonValue("asc")
  asc,
  @JsonValue("desc")
  desc
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SimilarPropertyInput with _$SimilarPropertyInput {
  const SimilarPropertyInput._();

  const factory SimilarPropertyInput({
    required PaginationInput pagination,
    required String propertyId,
    SimilarPropertyEnum? tabOption,
  }) = _SimilarPropertyInput;

  factory SimilarPropertyInput.fromJson(Map<String, dynamic> json) =>
      _$SimilarPropertyInputFromJson(json);
}

enum SimilarPropertyEnum {
  @JsonValue("sale")
  sale,
  @JsonValue("rent")
  rent,
  @JsonValue("sold")
  sold
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BoxCoordinatesInput with _$BoxCoordinatesInput {
  const BoxCoordinatesInput._();

  const factory BoxCoordinatesInput({
    required double bottomLeftLongitude,
    required double bottomLeftLatitude,
    required double topRightLongitude,
    required double topRightLatitude,
    FilterInput? filter,
  }) = _BoxCoordinatesInput;

  factory BoxCoordinatesInput.fromJson(Map<String, dynamic> json) =>
      _$BoxCoordinatesInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyDetailInput with _$PropertyDetailInput {
  const PropertyDetailInput._();

  const factory PropertyDetailInput({required String propertyId}) =
      _PropertyDetailInput;

  factory PropertyDetailInput.fromJson(Map<String, dynamic> json) =>
      _$PropertyDetailInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyListInput with _$PropertyListInput {
  const PropertyListInput._();

  const factory PropertyListInput({
    required PaginationInput pagination,
    FilterInput? filter,
  }) = _PropertyListInput;

  factory PropertyListInput.fromJson(Map<String, dynamic> json) =>
      _$PropertyListInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertySettingInput with _$PropertySettingInput {
  const PropertySettingInput._();

  const factory PropertySettingInput({required String propertyId}) =
      _PropertySettingInput;

  factory PropertySettingInput.fromJson(Map<String, dynamic> json) =>
      _$PropertySettingInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ViewInspectionInput with _$ViewInspectionInput {
  const ViewInspectionInput._();

  const factory ViewInspectionInput({required String propertyId}) =
      _ViewInspectionInput;

  factory ViewInspectionInput.fromJson(Map<String, dynamic> json) =>
      _$ViewInspectionInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CheckInListInputDTO with _$CheckInListInputDTO {
  const CheckInListInputDTO._();

  const factory CheckInListInputDTO({
    required double skip,
    required double limit,
    required String propertyId,
  }) = _CheckInListInputDTO;

  factory CheckInListInputDTO.fromJson(Map<String, dynamic> json) =>
      _$CheckInListInputDTOFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewSettingInput with _$ReviewSettingInput {
  const ReviewSettingInput._();

  const factory ReviewSettingInput({required PropertyEnum propertyType}) =
      _ReviewSettingInput;

  factory ReviewSettingInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewSettingInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewInput with _$ReviewInput {
  const ReviewInput._();

  const factory ReviewInput({
    required String propertyId,
    required PaginationInput paginationOption,
    SortOption? sortOption,
  }) = _ReviewInput;

  factory ReviewInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SortOption with _$SortOption {
  const SortOption._();

  const factory SortOption({
    required ReviewSortByEnum sortBy,
    required ReviewSortOrderEnum sortOrder,
  }) = _SortOption;

  factory SortOption.fromJson(Map<String, dynamic> json) =>
      _$SortOptionFromJson(json);
}

enum ReviewSortByEnum {
  @JsonValue("pricingEstimate")
  pricingEstimate,
  @JsonValue("ratings")
  ratings,
  @JsonValue("createdAt")
  createdAt
}

enum ReviewSortOrderEnum {
  @JsonValue("asc")
  asc,
  @JsonValue("desc")
  desc
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgenyEnquiryInput with _$AgenyEnquiryInput {
  const AgenyEnquiryInput._();

  const factory AgenyEnquiryInput({
    String? propertyId,
    required PaginationInput pagination,
  }) = _AgenyEnquiryInput;

  factory AgenyEnquiryInput.fromJson(Map<String, dynamic> json) =>
      _$AgenyEnquiryInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CheckEnquiryGroupInput with _$CheckEnquiryGroupInput {
  const CheckEnquiryGroupInput._();

  const factory CheckEnquiryGroupInput({required String propertyId}) =
      _CheckEnquiryGroupInput;

  factory CheckEnquiryGroupInput.fromJson(Map<String, dynamic> json) =>
      _$CheckEnquiryGroupInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryGroupedInput with _$EnquiryGroupedInput {
  const EnquiryGroupedInput._();

  const factory EnquiryGroupedInput({required PaginationInput pagination}) =
      _EnquiryGroupedInput;

  factory EnquiryGroupedInput.fromJson(Map<String, dynamic> json) =>
      _$EnquiryGroupedInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavedPropertyInput with _$SavedPropertyInput {
  const SavedPropertyInput._();

  const factory SavedPropertyInput({
    String? collectionId,
    required PaginationInput pagination,
  }) = _SavedPropertyInput;

  factory SavedPropertyInput.fromJson(Map<String, dynamic> json) =>
      _$SavedPropertyInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavedPropertyMapInput with _$SavedPropertyMapInput {
  const SavedPropertyMapInput._();

  const factory SavedPropertyMapInput({
    String? collectionId,
    required double bottomLeftLongitude,
    required double bottomLeftLatitude,
    required double topRightLongitude,
    required double topRightLatitude,
  }) = _SavedPropertyMapInput;

  factory SavedPropertyMapInput.fromJson(Map<String, dynamic> json) =>
      _$SavedPropertyMapInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GetAllCollectionInput with _$GetAllCollectionInput {
  const GetAllCollectionInput._();

  const factory GetAllCollectionInput({required bool includeAllSaved}) =
      _GetAllCollectionInput;

  factory GetAllCollectionInput.fromJson(Map<String, dynamic> json) =>
      _$GetAllCollectionInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class GetSignedUrlDTO with _$GetSignedUrlDTO {
  const GetSignedUrlDTO._();

  const factory GetSignedUrlDTO({
    String? size,
    required String key,
  }) = _GetSignedUrlDTO;

  factory GetSignedUrlDTO.fromJson(Map<String, dynamic> json) =>
      _$GetSignedUrlDTOFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationsTokenDto with _$NotificationsTokenDto {
  const NotificationsTokenDto._();

  const factory NotificationsTokenDto({
    required String deviceType,
    required String notificationToken,
    required String deviceId,
  }) = _NotificationsTokenDto;

  factory NotificationsTokenDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsTokenDtoFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class DisableNotificationsTokenDto with _$DisableNotificationsTokenDto {
  const DisableNotificationsTokenDto._();

  const factory DisableNotificationsTokenDto({required String deviceId}) =
      _DisableNotificationsTokenDto;

  factory DisableNotificationsTokenDto.fromJson(Map<String, dynamic> json) =>
      _$DisableNotificationsTokenDtoFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationsSettingDto with _$NotificationsSettingDto {
  const NotificationsSettingDto._();

  const factory NotificationsSettingDto({
    required UserTypeEnum userType,
    required NotificationTypeEnum notificationType,
    required bool notificationValue,
  }) = _NotificationsSettingDto;

  factory NotificationsSettingDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsSettingDtoFromJson(json);
}

enum UserTypeEnum {
  @JsonValue("agent")
  agent,
  @JsonValue("buyer")
  buyer
}

enum NotificationTypeEnum {
  @JsonValue("property")
  property,
  @JsonValue("message")
  message
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class NotificationsDto with _$NotificationsDto {
  const NotificationsDto._();

  const factory NotificationsDto({
    String? id,
    String? title,
    String? notificationTokenId,
    String? body,
    String? createdBy,
    String? status,
    bool? isRead,
  }) = _NotificationsDto;

  factory NotificationsDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationsDtoFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class BuyerProfileInput with _$BuyerProfileInput {
  const BuyerProfileInput._();

  const factory BuyerProfileInput({
    required String firstName,
    required String lastName,
    String? displayImage,
    required String phoneNumber,
  }) = _BuyerProfileInput;

  factory BuyerProfileInput.fromJson(Map<String, dynamic> json) =>
      _$BuyerProfileInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ContactUsInputDTO with _$ContactUsInputDTO {
  const ContactUsInputDTO._();

  const factory ContactUsInputDTO({required String message}) =
      _ContactUsInputDTO;

  factory ContactUsInputDTO.fromJson(Map<String, dynamic> json) =>
      _$ContactUsInputDTOFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReportInputDTO with _$ReportInputDTO {
  const ReportInputDTO._();

  const factory ReportInputDTO({
    required String subject,
    required String reason,
  }) = _ReportInputDTO;

  factory ReportInputDTO.fromJson(Map<String, dynamic> json) =>
      _$ReportInputDTOFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReportUserDTO with _$ReportUserDTO {
  const ReportUserDTO._();

  const factory ReportUserDTO({
    required String details,
    required String reason,
    required String reportedUserId,
    required ReportedUserType reportedUserType,
    required String propertyId,
  }) = _ReportUserDTO;

  factory ReportUserDTO.fromJson(Map<String, dynamic> json) =>
      _$ReportUserDTOFromJson(json);
}

enum ReportedUserType {
  @JsonValue("AGENT")
  AGENT,
  @JsonValue("BUYER")
  BUYER
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CreateCmsPageInput with _$CreateCmsPageInput {
  const CreateCmsPageInput._();

  const factory CreateCmsPageInput({
    required CmsTitle title,
    String? content,
  }) = _CreateCmsPageInput;

  factory CreateCmsPageInput.fromJson(Map<String, dynamic> json) =>
      _$CreateCmsPageInputFromJson(json);
}

enum CmsTitle {
  @JsonValue("TERMS_AND_CONDITION")
  TERMS_AND_CONDITION,
  @JsonValue("PRIVACY_POLICY")
  PRIVACY_POLICY,
  @JsonValue("TERMS_AND_CONDITION_AGENT")
  TERMS_AND_CONDITION_AGENT,
  @JsonValue("PRIVACY_POLICY_AGENT")
  PRIVACY_POLICY_AGENT
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddPropertyInput with _$AddPropertyInput {
  const AddPropertyInput._();

  const factory AddPropertyInput({
    String? name,
    required String description,
    required ListingTypeEnum listingType,
    required PropertyEnum property,
    required SaleTypeEnum saleType,
    SubSaleTypeEnum? subSaleType,
    required String type,
    required AddressType address,
    String? videoUrl,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    required bool showPrice,
    PriceUnitEnum? priceUnit,
    List<InspectionDate>? inspectionDates,
    bool? isInspectionByAppointment,
    AuctionDate? auctionDate,
    double? landSize,
    double? buildingSize,
    required List<String> featureWords,
    required List<String> lifeStyleWords,
    required List<String> propertyType,
    bool? isVacant,
    bool? isTenated,
    required bool isPetAllowed,
    required bool isFurnished,
    double? bed,
    double? bath,
    double? car,
    double? pool,
    String? agentPriceGuideUrl,
    required String councilZoning,
    DateTime? availableFrom,
    String? straNumber,
  }) = _AddPropertyInput;

  factory AddPropertyInput.fromJson(Map<String, dynamic> json) =>
      _$AddPropertyInputFromJson(json);
}

enum ListingTypeEnum {
  @JsonValue("earlyBird")
  earlyBird,
  @JsonValue("full")
  full
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddressType with _$AddressType {
  const AddressType._();

  const factory AddressType({
    required String displayAddress,
    required String suburb,
    required String state,
    required String country,
    required double postalCode,
    required double latitutde,
    required double longitude,
  }) = _AddressType;

  factory AddressType.fromJson(Map<String, dynamic> json) =>
      _$AddressTypeFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class InspectionDate with _$InspectionDate {
  const InspectionDate._();

  const factory InspectionDate({
    required DateTime date,
    required String startTime,
    required String endTime,
  }) = _InspectionDate;

  factory InspectionDate.fromJson(Map<String, dynamic> json) =>
      _$InspectionDateFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AuctionDate with _$AuctionDate {
  const AuctionDate._();

  const factory AuctionDate({
    required DateTime date,
    required String startTime,
    String? endTime,
  }) = _AuctionDate;

  factory AuctionDate.fromJson(Map<String, dynamic> json) =>
      _$AuctionDateFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddEarlyBirdInput with _$AddEarlyBirdInput {
  const AddEarlyBirdInput._();

  const factory AddEarlyBirdInput({
    String? name,
    String? description,
    required PropertyEnum property,
    required SaleTypeEnum saleType,
    SubSaleTypeEnum? subSaleType,
    required String type,
    AddressType? address,
    String? videoUrl,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    PriceUnitEnum? priceUnit,
    List<InspectionDate>? inspectionDates,
    AuctionDate? auctionDate,
    double? landSize,
    double? buildingSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    required List<String> propertyType,
    bool? showPrice,
    double? bed,
    double? bath,
    double? car,
    double? pool,
    bool? isVacant,
    bool? isTenated,
    bool? isPetAllowed,
    bool? isFurnished,
    String? agentPriceGuideUrl,
    String? councilZoning,
    DateTime? availableFrom,
    String? straNumber,
  }) = _AddEarlyBirdInput;

  factory AddEarlyBirdInput.fromJson(Map<String, dynamic> json) =>
      _$AddEarlyBirdInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdateEarlyBirdInput with _$UpdateEarlyBirdInput {
  const UpdateEarlyBirdInput._();

  const factory UpdateEarlyBirdInput({
    String? name,
    String? description,
    required PropertyEnum property,
    required SaleTypeEnum saleType,
    SubSaleTypeEnum? subSaleType,
    required String type,
    AddressType? address,
    String? videoUrl,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    PriceUnitEnum? priceUnit,
    List<InspectionDate>? inspectionDates,
    AuctionDate? auctionDate,
    double? landSize,
    double? buildingSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    required List<String> propertyType,
    bool? showPrice,
    double? bed,
    double? bath,
    double? car,
    double? pool,
    bool? isVacant,
    bool? isTenated,
    bool? isPetAllowed,
    bool? isFurnished,
    String? agentPriceGuideUrl,
    String? councilZoning,
    DateTime? availableFrom,
    String? straNumber,
    required String propertyId,
  }) = _UpdateEarlyBirdInput;

  factory UpdateEarlyBirdInput.fromJson(Map<String, dynamic> json) =>
      _$UpdateEarlyBirdInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdatePropertyInput with _$UpdatePropertyInput {
  const UpdatePropertyInput._();

  const factory UpdatePropertyInput({
    String? name,
    required String description,
    required ListingTypeEnum listingType,
    required PropertyEnum property,
    required SaleTypeEnum saleType,
    SubSaleTypeEnum? subSaleType,
    required String type,
    required AddressType address,
    String? videoUrl,
    List<String>? images,
    double? price,
    double? minPrice,
    double? maxPrice,
    required bool showPrice,
    PriceUnitEnum? priceUnit,
    List<UpdateInspectionDate>? inspectionDates,
    bool? isInspectionByAppointment,
    AuctionDate? auctionDate,
    double? landSize,
    double? buildingSize,
    required List<String> featureWords,
    required List<String> lifeStyleWords,
    required List<String> propertyType,
    bool? isVacant,
    bool? isTenated,
    required bool isPetAllowed,
    required bool isFurnished,
    double? bed,
    double? bath,
    double? car,
    double? pool,
    String? agentPriceGuideUrl,
    required String councilZoning,
    DateTime? availableFrom,
    String? straNumber,
    required String propertyId,
  }) = _UpdatePropertyInput;

  factory UpdatePropertyInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePropertyInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdateInspectionDate with _$UpdateInspectionDate {
  const UpdateInspectionDate._();

  const factory UpdateInspectionDate({
    required DateTime date,
    required String startTime,
    required String endTime,
  }) = _UpdateInspectionDate;

  factory UpdateInspectionDate.fromJson(Map<String, dynamic> json) =>
      _$UpdateInspectionDateFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdatePropertyDescriptionInput
    with _$UpdatePropertyDescriptionInput {
  const UpdatePropertyDescriptionInput._();

  const factory UpdatePropertyDescriptionInput({
    required String propertyId,
    required String description,
  }) = _UpdatePropertyDescriptionInput;

  factory UpdatePropertyDescriptionInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePropertyDescriptionInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdatePropertySettingInput with _$UpdatePropertySettingInput {
  const UpdatePropertySettingInput._();

  const factory UpdatePropertySettingInput({
    required String propertyId,
    required PropertySettingEnum status,
    double? soldPrice,
    bool? showSoldPrice,
    PriceUnitEnum? leasedPriceUnit,
  }) = _UpdatePropertySettingInput;

  factory UpdatePropertySettingInput.fromJson(Map<String, dynamic> json) =>
      _$UpdatePropertySettingInputFromJson(json);
}

enum PropertySettingEnum {
  @JsonValue("live")
  live,
  @JsonValue("leased")
  leased,
  @JsonValue("withdraw")
  withdraw,
  @JsonValue("sold")
  sold,
  @JsonValue("underOffer")
  underOffer,
  @JsonValue("underContract")
  underContract,
  @JsonValue("reactivate")
  reactivate
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class InspectionDateInput with _$InspectionDateInput {
  const InspectionDateInput._();

  const factory InspectionDateInput({
    required DateTime date,
    required String startTime,
    required String endTime,
    String? inspectionId,
    required String propertyId,
  }) = _InspectionDateInput;

  factory InspectionDateInput.fromJson(Map<String, dynamic> json) =>
      _$InspectionDateInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RemoveInspectionDateInput with _$RemoveInspectionDateInput {
  const RemoveInspectionDateInput._();

  const factory RemoveInspectionDateInput({
    required String inspectionId,
    required String propertyId,
  }) = _RemoveInspectionDateInput;

  factory RemoveInspectionDateInput.fromJson(Map<String, dynamic> json) =>
      _$RemoveInspectionDateInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddBuyerCheckInInput with _$AddBuyerCheckInInput {
  const AddBuyerCheckInInput._();

  const factory AddBuyerCheckInInput({
    required String propertyId,
    required String buyerId,
    required DateTime checkInDateTime,
  }) = _AddBuyerCheckInInput;

  factory AddBuyerCheckInInput.fromJson(Map<String, dynamic> json) =>
      _$AddBuyerCheckInInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PropertyReviewInput with _$PropertyReviewInput {
  const PropertyReviewInput._();

  const factory PropertyReviewInput({
    required String propertyId,
    required ReviewInputDetail review,
  }) = _PropertyReviewInput;

  factory PropertyReviewInput.fromJson(Map<String, dynamic> json) =>
      _$PropertyReviewInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ReviewInputDetail with _$ReviewInputDetail {
  const ReviewInputDetail._();

  const factory ReviewInputDetail({
    required String description,
    required double pricingEstimate,
    required List<Review> reviews,
  }) = _ReviewInputDetail;

  factory ReviewInputDetail.fromJson(Map<String, dynamic> json) =>
      _$ReviewInputDetailFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class Review with _$Review {
  const Review._();

  const factory Review({
    required String reviewOptionId,
    required double ratings,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryInput with _$EnquiryInput {
  const EnquiryInput._();

  const factory EnquiryInput({
    required String propertyId,
    required String enquiry,
    String? message,
  }) = _EnquiryInput;

  factory EnquiryInput.fromJson(Map<String, dynamic> json) =>
      _$EnquiryInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EnquiryGroupInput with _$EnquiryGroupInput {
  const EnquiryGroupInput._();

  const factory EnquiryGroupInput({
    required String propertyId,
    required String cometGroupId,
  }) = _EnquiryGroupInput;

  factory EnquiryGroupInput.fromJson(Map<String, dynamic> json) =>
      _$EnquiryGroupInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class IdInput with _$IdInput {
  const IdInput._();

  const factory IdInput({required String propertyId}) = _IdInput;

  factory IdInput.fromJson(Map<String, dynamic> json) =>
      _$IdInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SavePropertyInput with _$SavePropertyInput {
  const SavePropertyInput._();

  const factory SavePropertyInput({
    required String propertyId,
    String? collectionId,
  }) = _SavePropertyInput;

  factory SavePropertyInput.fromJson(Map<String, dynamic> json) =>
      _$SavePropertyInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RemoveSavedPropertyInput with _$RemoveSavedPropertyInput {
  const RemoveSavedPropertyInput._();

  const factory RemoveSavedPropertyInput({required String propertyId}) =
      _RemoveSavedPropertyInput;

  factory RemoveSavedPropertyInput.fromJson(Map<String, dynamic> json) =>
      _$RemoveSavedPropertyInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CollectionInput with _$CollectionInput {
  const CollectionInput._();

  const factory CollectionInput({
    required String title,
    String? collectionId,
  }) = _CollectionInput;

  factory CollectionInput.fromJson(Map<String, dynamic> json) =>
      _$CollectionInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RemoveCollectionInput with _$RemoveCollectionInput {
  const RemoveCollectionInput._();

  const factory RemoveCollectionInput({
    required String collectionId,
    required bool includeProperty,
  }) = _RemoveCollectionInput;

  factory RemoveCollectionInput.fromJson(Map<String, dynamic> json) =>
      _$RemoveCollectionInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class SaveSearchFilterInput with _$SaveSearchFilterInput {
  const SaveSearchFilterInput._();

  const factory SaveSearchFilterInput({
    PropertyEnum? property,
    SaleTypeEnum? saleType,
    SubSaleTypeEnum? subSaleType,
    bool? showOnlySold,
    bool? showOnlyLeased,
    double? minPrice,
    double? maxPrice,
    PriceUnitEnum? priceUnit,
    bool? includeUnderContract,
    double? bed,
    double? bath,
    double? car,
    double? minLandSize,
    double? maxLandSize,
    List<String>? featureWords,
    List<String>? lifeStyleWords,
    List<String>? propertyType,
    double? minBuildingSize,
    double? maxBuildingSize,
    bool? isPetAllowed,
    bool? isFurnished,
    bool? pool,
    required String title,
    List<AddressForSaveSearchFilter>? address,
  }) = _SaveSearchFilterInput;

  factory SaveSearchFilterInput.fromJson(Map<String, dynamic> json) =>
      _$SaveSearchFilterInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddressForSaveSearchFilter with _$AddressForSaveSearchFilter {
  const AddressForSaveSearchFilter._();

  const factory AddressForSaveSearchFilter({
    required String suburb,
    required String displayAddress,
    required String stateFullName,
    required String stateShortName,
    required String country,
    required double postalCode,
    required double latitude,
    required double longitude,
  }) = _AddressForSaveSearchFilter;

  factory AddressForSaveSearchFilter.fromJson(Map<String, dynamic> json) =>
      _$AddressForSaveSearchFilterFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class DeleteSavedSearchInput with _$DeleteSavedSearchInput {
  const DeleteSavedSearchInput._();

  const factory DeleteSavedSearchInput({required String savedSearchId}) =
      _DeleteSavedSearchInput;

  factory DeleteSavedSearchInput.fromJson(Map<String, dynamic> json) =>
      _$DeleteSavedSearchInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentChangePasswordInput with _$AgentChangePasswordInput {
  const AgentChangePasswordInput._();

  const factory AgentChangePasswordInput({
    required String oldPassword,
    required String newPassword,
  }) = _AgentChangePasswordInput;

  factory AgentChangePasswordInput.fromJson(Map<String, dynamic> json) =>
      _$AgentChangePasswordInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AgentUpdateInput with _$AgentUpdateInput {
  const AgentUpdateInput._();

  const factory AgentUpdateInput({
    String? agentImage,
    required String firstName,
    required String lastName,
    String? phoneNumber,
  }) = _AgentUpdateInput;

  factory AgentUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$AgentUpdateInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class DeviceInfoInput with _$DeviceInfoInput {
  const DeviceInfoInput._();

  const factory DeviceInfoInput({
    required double deviceType,
    required String deviceName,
    String? pushNotificationToken,
  }) = _DeviceInfoInput;

  factory DeviceInfoInput.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class EmailSignupOTPInput with _$EmailSignupOTPInput {
  const EmailSignupOTPInput._();

  const factory EmailSignupOTPInput({
    required String email,
    required String firstName,
    required String lastName,
    required String password,
    required String phoneNumber,
  }) = _EmailSignupOTPInput;

  factory EmailSignupOTPInput.fromJson(Map<String, dynamic> json) =>
      _$EmailSignupOTPInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class VerifyEmailInput with _$VerifyEmailInput {
  const VerifyEmailInput._();

  const factory VerifyEmailInput({
    required String email,
    required String verificationCode,
  }) = _VerifyEmailInput;

  factory VerifyEmailInput.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class LoginEmailPasswordInput with _$LoginEmailPasswordInput {
  const LoginEmailPasswordInput._();

  const factory LoginEmailPasswordInput({
    required String email,
    required String password,
    String? deviceType,
  }) = _LoginEmailPasswordInput;

  factory LoginEmailPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailPasswordInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ChangePasswordInput with _$ChangePasswordInput {
  const ChangePasswordInput._();

  const factory ChangePasswordInput({
    required String password,
    required String new_password,
  }) = _ChangePasswordInput;

  factory ChangePasswordInput.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class UpdateUserProfile with _$UpdateUserProfile {
  const UpdateUserProfile._();

  const factory UpdateUserProfile({
    String? firstName,
    String? lastName,
    AddressInput? address,
  }) = _UpdateUserProfile;

  factory UpdateUserProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProfileFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class AddressInput with _$AddressInput {
  const AddressInput._();

  const factory AddressInput({
    required String displayAddress,
    required CoordinatesInput coordinates,
  }) = _AddressInput;

  factory AddressInput.fromJson(Map<String, dynamic> json) =>
      _$AddressInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class CoordinatesInput with _$CoordinatesInput {
  const CoordinatesInput._();

  const factory CoordinatesInput({
    required double lat,
    required double long,
  }) = _CoordinatesInput;

  factory CoordinatesInput.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ForgotPasswordInput with _$ForgotPasswordInput {
  const ForgotPasswordInput._();

  const factory ForgotPasswordInput({
    required String email,
    required ForgotPasswordUserTypeEnum userType,
  }) = _ForgotPasswordInput;

  factory ForgotPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordInputFromJson(json);
}

enum ForgotPasswordUserTypeEnum {
  @JsonValue("agent")
  agent,
  @JsonValue("buyer")
  buyer
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class VerifyResetPasswordOtpInput with _$VerifyResetPasswordOtpInput {
  const VerifyResetPasswordOtpInput._();

  const factory VerifyResetPasswordOtpInput({
    required String verificationCode,
    required String email,
    required ForgotPasswordUserTypeEnum userType,
  }) = _VerifyResetPasswordOtpInput;

  factory VerifyResetPasswordOtpInput.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetPasswordOtpInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class ResetPasswordInput with _$ResetPasswordInput {
  const ResetPasswordInput._();

  const factory ResetPasswordInput({
    String? email,
    required String password,
    required ForgotPasswordUserTypeEnum userType,
    String? userId,
    String? token,
  }) = _ResetPasswordInput;

  factory ResetPasswordInput.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RequestLoginOTPInput with _$RequestLoginOTPInput {
  const RequestLoginOTPInput._();

  const factory RequestLoginOTPInput({
    required String email,
    String? firstName,
    String? lastName,
  }) = _RequestLoginOTPInput;

  factory RequestLoginOTPInput.fromJson(Map<String, dynamic> json) =>
      _$RequestLoginOTPInputFromJson(json);
}

enum AuthProviderType {
  @JsonValue("google")
  google,
  @JsonValue("facebook")
  facebook
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class RequestPhoneLoginOTPInput with _$RequestPhoneLoginOTPInput {
  const RequestPhoneLoginOTPInput._();

  const factory RequestPhoneLoginOTPInput({
    required String dialCode,
    required String number,
    required String deviceId,
  }) = _RequestPhoneLoginOTPInput;

  factory RequestPhoneLoginOTPInput.fromJson(Map<String, dynamic> json) =>
      _$RequestPhoneLoginOTPInputFromJson(json);
}

@Freezed(
  map: FreezedMapOptions.none,
  when: FreezedWhenOptions.none,
)
sealed class PhoneLoginWithOTPInput with _$PhoneLoginWithOTPInput {
  const PhoneLoginWithOTPInput._();

  const factory PhoneLoginWithOTPInput({
    required String dialCode,
    required String number,
    required String deviceId,
    required String verificationCode,
  }) = _PhoneLoginWithOTPInput;

  factory PhoneLoginWithOTPInput.fromJson(Map<String, dynamic> json) =>
      _$PhoneLoginWithOTPInputFromJson(json);
}

const Map<String, Set<String>> possibleTypesMap = {};
