// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      accessToken: json['accessToken'] as String?,
      accessTokenExpiresIn: json['accessTokenExpiresIn'] == null
          ? null
          : DateTime.parse(json['accessTokenExpiresIn'] as String),
      refreshToken: json['refreshToken'] as String?,
      refreshTokenExpiresIn: json['refreshTokenExpiresIn'] == null
          ? null
          : DateTime.parse(json['refreshTokenExpiresIn'] as String),
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'accessTokenExpiresIn': instance.accessTokenExpiresIn?.toIso8601String(),
      'refreshToken': instance.refreshToken,
      'refreshTokenExpiresIn':
          instance.refreshTokenExpiresIn?.toIso8601String(),
    };

_$UserRespInEmailLoginImpl _$$UserRespInEmailLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRespInEmailLoginImpl(
      G_id: json['G_id'] as String?,
      authProvider: json['authProvider'] as String?,
      authProviderId: json['authProviderId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      isTemporaryPassword: json['isTemporaryPassword'] as bool?,
      displayImage: json['displayImage'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as bool?,
    );

Map<String, dynamic> _$$UserRespInEmailLoginImplToJson(
        _$UserRespInEmailLoginImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'authProvider': instance.authProvider,
      'authProviderId': instance.authProviderId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'isTemporaryPassword': instance.isTemporaryPassword,
      'displayImage': instance.displayImage,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$CometChatAuthTokenImpl _$$CometChatAuthTokenImplFromJson(
        Map<String, dynamic> json) =>
    _$CometChatAuthTokenImpl(
      uid: json['uid'] as String,
      authToken: json['authToken'] as String,
      createdAt: (json['createdAt'] as num).toDouble(),
    );

Map<String, dynamic> _$$CometChatAuthTokenImplToJson(
        _$CometChatAuthTokenImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'authToken': instance.authToken,
      'createdAt': instance.createdAt,
    };

_$LoginWithEmailResponseImpl _$$LoginWithEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginWithEmailResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInEmailLogin.fromJson(json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      userType: json['userType'] as String,
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginWithEmailResponseImplToJson(
        _$LoginWithEmailResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'userType': instance.userType,
      'cometChatAuthToken': instance.cometChatAuthToken,
    };

_$AgentTypeImpl _$$AgentTypeImplFromJson(Map<String, dynamic> json) =>
    _$AgentTypeImpl(
      G_id: json['G_id'] as String,
      email: json['email'] as String,
      status: json['status'] as String,
      isDeleted: json['isDeleted'] as bool?,
      isTemporaryPassword: json['isTemporaryPassword'] as bool?,
      role: json['role'] as String,
      agencyId: json['agencyId'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as String?,
    );

Map<String, dynamic> _$$AgentTypeImplToJson(_$AgentTypeImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'email': instance.email,
      'status': instance.status,
      'isDeleted': instance.isDeleted,
      'isTemporaryPassword': instance.isTemporaryPassword,
      'role': instance.role,
      'agencyId': instance.agencyId,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$AgentLoginResponseImpl _$$AgentLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentLoginResponseImpl(
      message: json['message'] as String?,
      agent: AgentType.fromJson(json['agent'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
      userType: json['userType'] as String,
    );

Map<String, dynamic> _$$AgentLoginResponseImplToJson(
        _$AgentLoginResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'agent': instance.agent,
      'token': instance.token,
      'cometChatAuthToken': instance.cometChatAuthToken,
      'userType': instance.userType,
    };

_$UserRespInAppleLoginImpl _$$UserRespInAppleLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRespInAppleLoginImpl(
      G_id: json['G_id'] as String?,
      email: json['email'] as String?,
      loginType: json['loginType'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as String?,
    );

Map<String, dynamic> _$$UserRespInAppleLoginImplToJson(
        _$UserRespInAppleLoginImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'email': instance.email,
      'loginType': instance.loginType,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$LoginWithAppleResponseImpl _$$LoginWithAppleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginWithAppleResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInAppleLogin.fromJson(json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginWithAppleResponseImplToJson(
        _$LoginWithAppleResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'cometChatAuthToken': instance.cometChatAuthToken,
    };

_$MessageResponseImpl _$$MessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageResponseImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$MessageResponseImplToJson(
        _$MessageResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$VerificationCodeExpiryImpl _$$VerificationCodeExpiryImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationCodeExpiryImpl(
      expiresByInMilliSec: (json['expiresByInMilliSec'] as num).toDouble(),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$VerificationCodeExpiryImplToJson(
        _$VerificationCodeExpiryImpl instance) =>
    <String, dynamic>{
      'expiresByInMilliSec': instance.expiresByInMilliSec,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };

_$RegisterWithEmailResponseImpl _$$RegisterWithEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterWithEmailResponseImpl(
      message: json['message'] as String,
      expiry: json['expiry'] == null
          ? null
          : VerificationCodeExpiry.fromJson(
              json['expiry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterWithEmailResponseImplToJson(
        _$RegisterWithEmailResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'expiry': instance.expiry,
    };

_$UserRespInLoginImpl _$$UserRespInLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRespInLoginImpl(
      G_id: json['G_id'] as String?,
      email: json['email'] as String?,
      loginType: json['loginType'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as String?,
    );

Map<String, dynamic> _$$UserRespInLoginImplToJson(
        _$UserRespInLoginImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'email': instance.email,
      'loginType': instance.loginType,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInLogin.fromJson(json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
    };

_$VerifyEmailResponseImpl _$$VerifyEmailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInLogin.fromJson(json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VerifyEmailResponseImplToJson(
        _$VerifyEmailResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'cometChatAuthToken': instance.cometChatAuthToken,
    };

_$ForgotPasswordVerificationExpiryImpl
    _$$ForgotPasswordVerificationExpiryImplFromJson(
            Map<String, dynamic> json) =>
        _$ForgotPasswordVerificationExpiryImpl(
          expiresByInMilliSec: (json['expiresByInMilliSec'] as num).toDouble(),
          expiresAt: DateTime.parse(json['expiresAt'] as String),
        );

Map<String, dynamic> _$$ForgotPasswordVerificationExpiryImplToJson(
        _$ForgotPasswordVerificationExpiryImpl instance) =>
    <String, dynamic>{
      'expiresByInMilliSec': instance.expiresByInMilliSec,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };

_$ForgotPasswordResponseImpl _$$ForgotPasswordResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordResponseImpl(
      message: json['message'] as String,
      expiry: json['expiry'] == null
          ? null
          : ForgotPasswordVerificationExpiry.fromJson(
              json['expiry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForgotPasswordResponseImplToJson(
        _$ForgotPasswordResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'expiry': instance.expiry,
    };

_$CoordinatesResponseImpl _$$CoordinatesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordinatesResponseImpl(
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesResponseImplToJson(
        _$CoordinatesResponseImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

_$AddressResponseImpl _$$AddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressResponseImpl(
      displayAddress: json['displayAddress'] as String,
      coordinates: CoordinatesResponse.fromJson(
          json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressResponseImplToJson(
        _$AddressResponseImpl instance) =>
    <String, dynamic>{
      'displayAddress': instance.displayAddress,
      'coordinates': instance.coordinates,
    };

_$UserInProfileUpdateImpl _$$UserInProfileUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInProfileUpdateImpl(
      G_id: json['G_id'] as String,
      authProvider: json['authProvider'] as String?,
      authProviderId: json['authProviderId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] == null
          ? null
          : AddressResponse.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInProfileUpdateImplToJson(
        _$UserInProfileUpdateImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'authProvider': instance.authProvider,
      'authProviderId': instance.authProviderId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
    };

_$ProfileUpdateResponseImpl _$$ProfileUpdateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileUpdateResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserInProfileUpdate.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileUpdateResponseImplToJson(
        _$ProfileUpdateResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

_$VerificationExpiryImpl _$$VerificationExpiryImplFromJson(
        Map<String, dynamic> json) =>
    _$VerificationExpiryImpl(
      expiresByInMilliSec: (json['expiresByInMilliSec'] as num).toDouble(),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$VerificationExpiryImplToJson(
        _$VerificationExpiryImpl instance) =>
    <String, dynamic>{
      'expiresByInMilliSec': instance.expiresByInMilliSec,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };

_$OTPResponseImpl _$$OTPResponseImplFromJson(Map<String, dynamic> json) =>
    _$OTPResponseImpl(
      message: json['message'] as String,
      expiry: json['expiry'] == null
          ? null
          : VerificationExpiry.fromJson(json['expiry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OTPResponseImplToJson(_$OTPResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'expiry': instance.expiry,
    };

_$UserRespInFacebookLoginImpl _$$UserRespInFacebookLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRespInFacebookLoginImpl(
      G_id: json['G_id'] as String?,
      email: json['email'] as String?,
      loginType: json['loginType'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as String?,
    );

Map<String, dynamic> _$$UserRespInFacebookLoginImplToJson(
        _$UserRespInFacebookLoginImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'email': instance.email,
      'loginType': instance.loginType,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$LoginWithFacebookResponseImpl _$$LoginWithFacebookResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginWithFacebookResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInFacebookLogin.fromJson(
              json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginWithFacebookResponseImplToJson(
        _$LoginWithFacebookResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'cometChatAuthToken': instance.cometChatAuthToken,
    };

_$UserRespInGoogleLoginImpl _$$UserRespInGoogleLoginImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRespInGoogleLoginImpl(
      G_id: json['G_id'] as String?,
      email: json['email'] as String?,
      loginType: json['loginType'] as String?,
      hasUnreadNotification: json['hasUnreadNotification'] as String?,
    );

Map<String, dynamic> _$$UserRespInGoogleLoginImplToJson(
        _$UserRespInGoogleLoginImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'email': instance.email,
      'loginType': instance.loginType,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$LoginWithGoogleResponseImpl _$$LoginWithGoogleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginWithGoogleResponseImpl(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : UserRespInGoogleLogin.fromJson(
              json['user'] as Map<String, dynamic>),
      token: Token.fromJson(json['token'] as Map<String, dynamic>),
      cometChatAuthToken: json['cometChatAuthToken'] == null
          ? null
          : CometChatAuthToken.fromJson(
              json['cometChatAuthToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginWithGoogleResponseImplToJson(
        _$LoginWithGoogleResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'token': instance.token,
      'cometChatAuthToken': instance.cometChatAuthToken,
    };

_$WordImpl _$$WordImplFromJson(Map<String, dynamic> json) => _$WordImpl(
      G_id: json['G_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$WordImplToJson(_$WordImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'name': instance.name,
    };

_$WordResponseImpl _$$WordResponseImplFromJson(Map<String, dynamic> json) =>
    _$WordResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Word.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WordResponseImplToJson(_$WordResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AgentDetailsImpl _$$AgentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AgentDetailsImpl(
      agencyId: json['agencyId'] as String?,
      agentId: json['agentId'] as String,
      agentName: json['agentName'] as String,
      agentImage: json['agentImage'] as String?,
      agencyLogo: json['agencyLogo'] as String?,
      agentContactNumber: json['agentContactNumber'] as String?,
    );

Map<String, dynamic> _$$AgentDetailsImplToJson(_$AgentDetailsImpl instance) =>
    <String, dynamic>{
      'agencyId': instance.agencyId,
      'agentId': instance.agentId,
      'agentName': instance.agentName,
      'agentImage': instance.agentImage,
      'agencyLogo': instance.agencyLogo,
      'agentContactNumber': instance.agentContactNumber,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      displayAddress: json['displayAddress'] as String,
      suburb: json['suburb'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postalCode: json['postalCode'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'displayAddress': instance.displayAddress,
      'suburb': instance.suburb,
      'state': instance.state,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'location': instance.location,
    };

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      views: (json['views'] as num?)?.toDouble(),
      saves: (json['saves'] as num?)?.toDouble(),
      inspection: (json['inspection'] as num?)?.toDouble(),
      reviews: (json['reviews'] as num?)?.toDouble(),
      enquiry: (json['enquiry'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'views': instance.views,
      'saves': instance.saves,
      'inspection': instance.inspection,
      'reviews': instance.reviews,
      'enquiry': instance.enquiry,
    };

_$PropertyDetailsImpl _$$PropertyDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyDetailsImpl(
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      pool: (json['pool'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PropertyDetailsImplToJson(
        _$PropertyDetailsImpl instance) =>
    <String, dynamic>{
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'pool': instance.pool,
    };

_$AuctionDateResponseImpl _$$AuctionDateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuctionDateResponseImpl(
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$AuctionDateResponseImplToJson(
        _$AuctionDateResponseImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$PaginationTypeImpl _$$PaginationTypeImplFromJson(Map<String, dynamic> json) =>
    _$PaginationTypeImpl(
      total: (json['total'] as num).toDouble(),
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$PaginationTypeImplToJson(
        _$PaginationTypeImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'hasNextPage': instance.hasNextPage,
    };

_$InspectionDateResponseImpl _$$InspectionDateResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionDateResponseImpl(
      G_id: json['G_id'] as String?,
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$InspectionDateResponseImplToJson(
        _$InspectionDateResponseImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$PropertyImpl _$$PropertyImplFromJson(Map<String, dynamic> json) =>
    _$PropertyImpl(
      G_id: json['G_id'] as String,
      name: json['name'] as String?,
      listingType: json['listingType'] as String,
      property: json['property'] as String,
      type: json['type'] as String?,
      saleType: json['saleType'] as String,
      subSaleType: json['subSaleType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      showPrice: json['showPrice'] as bool?,
      priceUnit: json['priceUnit'] as String?,
      details: json['details'] == null
          ? null
          : PropertyDetails.fromJson(json['details'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      agentDetails: json['agentDetails'] == null
          ? null
          : AgentDetails.fromJson(json['agentDetails'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as String?,
      landSize: (json['landSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDateResponse.fromJson(
              json['auctionDate'] as Map<String, dynamic>),
      isSaved: json['isSaved'] as bool?,
      soldPrice: (json['soldPrice'] as num?)?.toDouble(),
      showSoldPrice: json['showSoldPrice'] as bool?,
      totalAverageRatings: (json['totalAverageRatings'] as num?)?.toDouble(),
      locationImage: json['locationImage'] as String?,
      isInspectionByAppointment: json['isInspectionByAppointment'] as bool?,
      cometChatBuyerGroupId: json['cometChatBuyerGroupId'] as String?,
      likedBy:
          (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PropertyImplToJson(_$PropertyImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'name': instance.name,
      'listingType': instance.listingType,
      'property': instance.property,
      'type': instance.type,
      'saleType': instance.saleType,
      'subSaleType': instance.subSaleType,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'showPrice': instance.showPrice,
      'priceUnit': instance.priceUnit,
      'details': instance.details,
      'stats': instance.stats,
      'agentDetails': instance.agentDetails,
      'address': instance.address,
      'status': instance.status,
      'landSize': instance.landSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'auctionDate': instance.auctionDate,
      'isSaved': instance.isSaved,
      'soldPrice': instance.soldPrice,
      'showSoldPrice': instance.showSoldPrice,
      'totalAverageRatings': instance.totalAverageRatings,
      'locationImage': instance.locationImage,
      'isInspectionByAppointment': instance.isInspectionByAppointment,
      'cometChatBuyerGroupId': instance.cometChatBuyerGroupId,
      'likedBy': instance.likedBy,
    };

_$PropertyListResponseImpl _$$PropertyListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyListResponseImplToJson(
        _$PropertyListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$AgencyPropertyListResponseImpl _$$AgencyPropertyListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AgencyPropertyListResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
      agencyName: json['agencyName'] as String,
    );

Map<String, dynamic> _$$AgencyPropertyListResponseImplToJson(
        _$AgencyPropertyListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
      'agencyName': instance.agencyName,
    };

_$EarlyBirdPropertyListResponseImpl
    _$$EarlyBirdPropertyListResponseImplFromJson(Map<String, dynamic> json) =>
        _$EarlyBirdPropertyListResponseImpl(
          data: (json['data'] as List<dynamic>)
              .map((e) => Property.fromJson(e as Map<String, dynamic>))
              .toList(),
          pagination: PaginationType.fromJson(
              json['pagination'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$EarlyBirdPropertyListResponseImplToJson(
        _$EarlyBirdPropertyListResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$PropertyListMapResponseImpl _$$PropertyListMapResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListMapResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyListMapResponseImplToJson(
        _$PropertyListMapResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PropertyDetailImpl _$$PropertyDetailImplFromJson(Map<String, dynamic> json) =>
    _$PropertyDetailImpl(
      G_id: json['G_id'] as String,
      name: json['name'] as String?,
      listingType: json['listingType'] as String,
      property: json['property'] as String,
      type: json['type'] as String?,
      saleType: json['saleType'] as String,
      subSaleType: json['subSaleType'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      showPrice: json['showPrice'] as bool?,
      priceUnit: json['priceUnit'] as String?,
      details: json['details'] == null
          ? null
          : PropertyDetails.fromJson(json['details'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      agentDetails: json['agentDetails'] == null
          ? null
          : AgentDetails.fromJson(json['agentDetails'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      status: json['status'] as String?,
      landSize: (json['landSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDateResponse.fromJson(
              json['auctionDate'] as Map<String, dynamic>),
      isSaved: json['isSaved'] as bool?,
      soldPrice: (json['soldPrice'] as num?)?.toDouble(),
      showSoldPrice: json['showSoldPrice'] as bool?,
      totalAverageRatings: (json['totalAverageRatings'] as num?)?.toDouble(),
      locationImage: json['locationImage'] as String?,
      isInspectionByAppointment: json['isInspectionByAppointment'] as bool?,
      cometChatBuyerGroupId: json['cometChatBuyerGroupId'] as String?,
      likedBy:
          (json['likedBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      description: json['description'] as String?,
      inspectionDates: (json['inspectionDates'] as List<dynamic>?)
          ?.map(
              (e) => InspectionDateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      floorPlanUrl: json['floorPlanUrl'] as String?,
      agentPriceGuideUrl: json['agentPriceGuideUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      buildingSize: (json['buildingSize'] as num?)?.toDouble(),
      isVacant: json['isVacant'] as bool?,
      isTenated: json['isTenated'] as bool?,
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      councilZoning: json['councilZoning'] as String?,
      straNumber: json['straNumber'] as String?,
    );

Map<String, dynamic> _$$PropertyDetailImplToJson(
        _$PropertyDetailImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'name': instance.name,
      'listingType': instance.listingType,
      'property': instance.property,
      'type': instance.type,
      'saleType': instance.saleType,
      'subSaleType': instance.subSaleType,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'showPrice': instance.showPrice,
      'priceUnit': instance.priceUnit,
      'details': instance.details,
      'stats': instance.stats,
      'agentDetails': instance.agentDetails,
      'address': instance.address,
      'status': instance.status,
      'landSize': instance.landSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'auctionDate': instance.auctionDate,
      'isSaved': instance.isSaved,
      'soldPrice': instance.soldPrice,
      'showSoldPrice': instance.showSoldPrice,
      'totalAverageRatings': instance.totalAverageRatings,
      'locationImage': instance.locationImage,
      'isInspectionByAppointment': instance.isInspectionByAppointment,
      'cometChatBuyerGroupId': instance.cometChatBuyerGroupId,
      'likedBy': instance.likedBy,
      'description': instance.description,
      'inspectionDates': instance.inspectionDates,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'floorPlanUrl': instance.floorPlanUrl,
      'agentPriceGuideUrl': instance.agentPriceGuideUrl,
      'videoUrl': instance.videoUrl,
      'buildingSize': instance.buildingSize,
      'isVacant': instance.isVacant,
      'isTenated': instance.isTenated,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'councilZoning': instance.councilZoning,
      'straNumber': instance.straNumber,
    };

_$PropertyDetailResponseImpl _$$PropertyDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyDetailResponseImpl(
      data: PropertyDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyDetailResponseImplToJson(
        _$PropertyDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PropertySettingImpl _$$PropertySettingImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertySettingImpl(
      status: json['status'] as String,
    );

Map<String, dynamic> _$$PropertySettingImplToJson(
        _$PropertySettingImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$PropertySettingResponseImpl _$$PropertySettingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertySettingResponseImpl(
      data: PropertySetting.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertySettingResponseImplToJson(
        _$PropertySettingResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AddPropertyResponseImpl _$$AddPropertyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPropertyResponseImpl(
      message: json['message'] as String?,
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$AddPropertyResponseImplToJson(
        _$AddPropertyResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'propertyId': instance.propertyId,
    };

_$PropertyListCountResponseImpl _$$PropertyListCountResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListCountResponseImpl(
      totalCommercial: (json['totalCommercial'] as num?)?.toDouble(),
      totalResidential: (json['totalResidential'] as num?)?.toDouble(),
      totalHolidayLetting: (json['totalHolidayLetting'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PropertyListCountResponseImplToJson(
        _$PropertyListCountResponseImpl instance) =>
    <String, dynamic>{
      'totalCommercial': instance.totalCommercial,
      'totalResidential': instance.totalResidential,
      'totalHolidayLetting': instance.totalHolidayLetting,
    };

_$PropertyTypeDataImpl _$$PropertyTypeDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyTypeDataImpl(
      type: json['type'] as String,
      properties: (json['properties'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyTypeDataImplToJson(
        _$PropertyTypeDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'properties': instance.properties,
    };

_$PropertyListWithTypeResponseImpl _$$PropertyListWithTypeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListWithTypeResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => PropertyTypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PropertyListWithTypeResponseImplToJson(
        _$PropertyListWithTypeResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$InspectionDetailsImpl _$$InspectionDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionDetailsImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$InspectionDetailsImplToJson(
        _$InspectionDetailsImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$AddInspectionDetailImpl _$$AddInspectionDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$AddInspectionDetailImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
      G_id: json['G_id'] as String?,
    );

Map<String, dynamic> _$$AddInspectionDetailImplToJson(
        _$AddInspectionDetailImpl instance) =>
    <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'G_id': instance.G_id,
    };

_$InspectionDetailsListImpl _$$InspectionDetailsListImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionDetailsListImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InspectionDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InspectionDetailsListImplToJson(
        _$InspectionDetailsListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AddInspectionDetailsResponseImpl _$$AddInspectionDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddInspectionDetailsResponseImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AddInspectionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddInspectionDetailsResponseImplToJson(
        _$AddInspectionDetailsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$CheckInDetailsImpl _$$CheckInDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CheckInDetailsImpl(
      buyerId: json['buyerId'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      checkInDateTime: json['checkInDateTime'] == null
          ? null
          : DateTime.parse(json['checkInDateTime'] as String),
      displayImage: json['displayImage'] as String?,
    );

Map<String, dynamic> _$$CheckInDetailsImplToJson(
        _$CheckInDetailsImpl instance) =>
    <String, dynamic>{
      'buyerId': instance.buyerId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'checkInDateTime': instance.checkInDateTime?.toIso8601String(),
      'displayImage': instance.displayImage,
    };

_$CheckInDetailsListImpl _$$CheckInDetailsListImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckInDetailsListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => CheckInDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckInDetailsListImplToJson(
        _$CheckInDetailsListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$ReviewOptionImpl _$$ReviewOptionImplFromJson(Map<String, dynamic> json) =>
    _$ReviewOptionImpl(
      G_id: json['G_id'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$ReviewOptionImplToJson(_$ReviewOptionImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'title': instance.title,
    };

_$PricingEstimationImpl _$$PricingEstimationImplFromJson(
        Map<String, dynamic> json) =>
    _$PricingEstimationImpl(
      minimum: (json['minimum'] as num).toDouble(),
      maximum: (json['maximum'] as num).toDouble(),
    );

Map<String, dynamic> _$$PricingEstimationImplToJson(
        _$PricingEstimationImpl instance) =>
    <String, dynamic>{
      'minimum': instance.minimum,
      'maximum': instance.maximum,
    };

_$ReviewSettingImpl _$$ReviewSettingImplFromJson(Map<String, dynamic> json) =>
    _$ReviewSettingImpl(
      G_id: json['G_id'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => ReviewOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String,
      characterLimit: (json['characterLimit'] as num).toDouble(),
      pricingEstimation: PricingEstimation.fromJson(
          json['pricingEstimation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewSettingImplToJson(_$ReviewSettingImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'options': instance.options,
      'type': instance.type,
      'characterLimit': instance.characterLimit,
      'pricingEstimation': instance.pricingEstimation,
    };

_$ReviewSettingResponseImpl _$$ReviewSettingResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewSettingResponseImpl(
      data: ReviewSetting.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewSettingResponseImplToJson(
        _$ReviewSettingResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$RatingImpl _$$RatingImplFromJson(Map<String, dynamic> json) => _$RatingImpl(
      title: json['title'] as String,
      ratings: (json['ratings'] as num).toDouble(),
      reviewOptionId: json['reviewOptionId'] as String,
    );

Map<String, dynamic> _$$RatingImplToJson(_$RatingImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ratings': instance.ratings,
      'reviewOptionId': instance.reviewOptionId,
    };

_$ReviewDataImpl _$$ReviewDataImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDataImpl(
      G_id: json['G_id'] as String,
      description: json['description'] as String,
      reviewerFirstName: json['reviewerFirstName'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      pricingEstimate: (json['pricingEstimate'] as num).toDouble(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewDataImplToJson(_$ReviewDataImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'description': instance.description,
      'reviewerFirstName': instance.reviewerFirstName,
      'createdAt': instance.createdAt.toIso8601String(),
      'pricingEstimate': instance.pricingEstimate,
      'reviews': instance.reviews,
    };

_$ReviewResponseImpl _$$ReviewResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReviewResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ReviewData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewResponseImplToJson(
        _$ReviewResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$EnquiryBuyerImpl _$$EnquiryBuyerImplFromJson(Map<String, dynamic> json) =>
    _$EnquiryBuyerImpl(
      G_id: json['G_id'] as String,
      propertyId: json['propertyId'] as String,
      propertyAddress: json['propertyAddress'] as String,
      agentId: json['agentId'] as String,
      agentImage: json['agentImage'] as String?,
      agentName: json['agentName'] as String,
      lastSentMessage: json['lastSentMessage'] as String?,
      lastMessageSentBy: json['lastMessageSentBy'] as String?,
      buyerImage: json['buyerImage'] as String?,
      buyerId: json['buyerId'] as String?,
      buyerName: json['buyerName'] as String?,
    );

Map<String, dynamic> _$$EnquiryBuyerImplToJson(_$EnquiryBuyerImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'propertyId': instance.propertyId,
      'propertyAddress': instance.propertyAddress,
      'agentId': instance.agentId,
      'agentImage': instance.agentImage,
      'agentName': instance.agentName,
      'lastSentMessage': instance.lastSentMessage,
      'lastMessageSentBy': instance.lastMessageSentBy,
      'buyerImage': instance.buyerImage,
      'buyerId': instance.buyerId,
      'buyerName': instance.buyerName,
    };

_$EnquiryBuyerResponseImpl _$$EnquiryBuyerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquiryBuyerResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => EnquiryBuyer.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquiryBuyerResponseImplToJson(
        _$EnquiryBuyerResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$GroupedEnquiryImpl _$$GroupedEnquiryImplFromJson(Map<String, dynamic> json) =>
    _$GroupedEnquiryImpl(
      G_id: json['G_id'] as String,
      propertyName: json['propertyName'] as String,
      propertyAddress: json['propertyAddress'] as String?,
      propertyImage: json['propertyImage'] as String?,
      count: (json['count'] as num).toDouble(),
    );

Map<String, dynamic> _$$GroupedEnquiryImplToJson(
        _$GroupedEnquiryImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'propertyName': instance.propertyName,
      'propertyAddress': instance.propertyAddress,
      'propertyImage': instance.propertyImage,
      'count': instance.count,
    };

_$GroupedResponseImpl _$$GroupedResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GroupedResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => GroupedEnquiry.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GroupedResponseImplToJson(
        _$GroupedResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$EnquiryPropertyResponseImpl _$$EnquiryPropertyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquiryPropertyResponseImpl(
      G_id: json['G_id'] as String?,
      lastSentMessage: json['lastSentMessage'] as String?,
      lastMessageSentBy: json['lastMessageSentBy'] as String?,
      buyerImage: json['buyerImage'] as String?,
      buyerId: json['buyerId'] as String?,
      buyerName: json['buyerName'] as String?,
      propertyAddress: json['propertyAddress'] as String?,
    );

Map<String, dynamic> _$$EnquiryPropertyResponseImplToJson(
        _$EnquiryPropertyResponseImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'lastSentMessage': instance.lastSentMessage,
      'lastMessageSentBy': instance.lastMessageSentBy,
      'buyerImage': instance.buyerImage,
      'buyerId': instance.buyerId,
      'buyerName': instance.buyerName,
      'propertyAddress': instance.propertyAddress,
    };

_$EnquiriesPropertyResponseImpl _$$EnquiriesPropertyResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquiriesPropertyResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              EnquiryPropertyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquiriesPropertyResponseImplToJson(
        _$EnquiriesPropertyResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$CometChatImpl _$$CometChatImplFromJson(Map<String, dynamic> json) =>
    _$CometChatImpl(
      agentId: json['agentId'] as String,
      buyerId: json['buyerId'] as String,
      propertyId: json['propertyId'] as String,
      cometGroupId: json['cometGroupId'] as String,
    );

Map<String, dynamic> _$$CometChatImplToJson(_$CometChatImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'buyerId': instance.buyerId,
      'propertyId': instance.propertyId,
      'cometGroupId': instance.cometGroupId,
    };

_$CometChatGroupImpl _$$CometChatGroupImplFromJson(Map<String, dynamic> json) =>
    _$CometChatGroupImpl(
      agentId: json['agentId'] as String,
      propertyId: json['propertyId'] as String,
      propertyName: json['propertyName'] as String?,
      propertyAddress: json['propertyAddress'] as String,
      propertyImage: json['propertyImage'] as String?,
      newEnquiryCount: (json['newEnquiryCount'] as num).toDouble(),
    );

Map<String, dynamic> _$$CometChatGroupImplToJson(
        _$CometChatGroupImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'propertyId': instance.propertyId,
      'propertyName': instance.propertyName,
      'propertyAddress': instance.propertyAddress,
      'propertyImage': instance.propertyImage,
      'newEnquiryCount': instance.newEnquiryCount,
    };

_$CometChatGroupResponseImpl _$$CometChatGroupResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CometChatGroupResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CometChatGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CometChatGroupResponseImplToJson(
        _$CometChatGroupResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$CometChatResponseImpl _$$CometChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CometChatResponseImpl(
      data: json['data'] == null
          ? null
          : CometChat.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CometChatResponseImplToJson(
        _$CometChatResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$AddEnquiryResponseImpl _$$AddEnquiryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEnquiryResponseImpl(
      message: json['message'] as String?,
      cometChatGroupId: json['cometChatGroupId'] as String,
    );

Map<String, dynamic> _$$AddEnquiryResponseImplToJson(
        _$AddEnquiryResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'cometChatGroupId': instance.cometChatGroupId,
    };

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      G_id: json['G_id'] as String?,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
    };

_$CollectionResponseImpl _$$CollectionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CollectionResponseImplToJson(
        _$CollectionResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

_$SavedSearchAddressResponseImpl _$$SavedSearchAddressResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedSearchAddressResponseImpl(
      displayAddress: json['displayAddress'] as String,
      suburb: json['suburb'] as String,
      stateFullName: json['stateFullName'] as String,
      stateShortName: json['stateShortName'] as String,
      country: json['country'] as String,
      postalCode: (json['postalCode'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$SavedSearchAddressResponseImplToJson(
        _$SavedSearchAddressResponseImpl instance) =>
    <String, dynamic>{
      'displayAddress': instance.displayAddress,
      'suburb': instance.suburb,
      'stateFullName': instance.stateFullName,
      'stateShortName': instance.stateShortName,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$SavedSearchFilterImpl _$$SavedSearchFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedSearchFilterImpl(
      G_id: json['G_id'] as String,
      title: json['title'] as String,
      property: json['property'] as String?,
      saleType: json['saleType'] as String?,
      subSaleType: json['subSaleType'] as String?,
      showOnlySold: json['showOnlySold'] as bool?,
      showOnlyLeased: json['showOnlyLeased'] as bool?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      priceUnit: json['priceUnit'] as String?,
      includeUnderContract: json['includeUnderContract'] as bool?,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      minLandSize: (json['minLandSize'] as num?)?.toDouble(),
      maxLandSize: (json['maxLandSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minBuildingSize: (json['minBuildingSize'] as num?)?.toDouble(),
      maxBuildingSize: (json['maxBuildingSize'] as num?)?.toDouble(),
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      pool: json['pool'] as bool?,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) =>
              SavedSearchAddressResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SavedSearchFilterImplToJson(
        _$SavedSearchFilterImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'title': instance.title,
      'property': instance.property,
      'saleType': instance.saleType,
      'subSaleType': instance.subSaleType,
      'showOnlySold': instance.showOnlySold,
      'showOnlyLeased': instance.showOnlyLeased,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'priceUnit': instance.priceUnit,
      'includeUnderContract': instance.includeUnderContract,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'minLandSize': instance.minLandSize,
      'maxLandSize': instance.maxLandSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'minBuildingSize': instance.minBuildingSize,
      'maxBuildingSize': instance.maxBuildingSize,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'pool': instance.pool,
      'address': instance.address,
    };

_$SavedSearchFilterResponseImpl _$$SavedSearchFilterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedSearchFilterResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => SavedSearchFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SavedSearchFilterResponseImplToJson(
        _$SavedSearchFilterResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };

_$SignedUrlResponseImpl _$$SignedUrlResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignedUrlResponseImpl(
      link: json['link'] as String,
    );

Map<String, dynamic> _$$SignedUrlResponseImplToJson(
        _$SignedUrlResponseImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
    };

_$CmsPageResponseImpl _$$CmsPageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CmsPageResponseImpl(
      G_id: json['G_id'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CmsPageResponseImplToJson(
        _$CmsPageResponseImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'title': instance.title,
      'slug': instance.slug,
      'content': instance.content,
    };

_$SubscriptionResponseImpl _$$SubscriptionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionResponseImpl(
      subscriptionId: json['subscriptionId'] as String?,
      status: json['status'] as String?,
      agencyId: json['agencyId'] as String?,
      collection_method: json['collection_method'] as String?,
      billing_cycle_anchor: json['billing_cycle_anchor'] == null
          ? null
          : DateTime.parse(json['billing_cycle_anchor'] as String),
      customer: json['customer'] as String?,
      default_payment_method: json['default_payment_method'] as String?,
      cancel_at_period_end: json['cancel_at_period_end'] as String?,
      current_period_end: json['current_period_end'] == null
          ? null
          : DateTime.parse(json['current_period_end'] as String),
      current_period_start: json['current_period_start'] == null
          ? null
          : DateTime.parse(json['current_period_start'] as String),
      cancel_at: json['cancel_at'] == null
          ? null
          : DateTime.parse(json['cancel_at'] as String),
      canceled_at: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      start_date: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      ended_at: json['ended_at'] == null
          ? null
          : DateTime.parse(json['ended_at'] as String),
      latest_invoice: json['latest_invoice'] as String?,
      days_until_due: (json['days_until_due'] as num?)?.toDouble(),
      schedule: json['schedule'] as String?,
    );

Map<String, dynamic> _$$SubscriptionResponseImplToJson(
        _$SubscriptionResponseImpl instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'status': instance.status,
      'agencyId': instance.agencyId,
      'collection_method': instance.collection_method,
      'billing_cycle_anchor': instance.billing_cycle_anchor?.toIso8601String(),
      'customer': instance.customer,
      'default_payment_method': instance.default_payment_method,
      'cancel_at_period_end': instance.cancel_at_period_end,
      'current_period_end': instance.current_period_end?.toIso8601String(),
      'current_period_start': instance.current_period_start?.toIso8601String(),
      'cancel_at': instance.cancel_at?.toIso8601String(),
      'canceled_at': instance.canceled_at?.toIso8601String(),
      'start_date': instance.start_date?.toIso8601String(),
      'ended_at': instance.ended_at?.toIso8601String(),
      'latest_invoice': instance.latest_invoice,
      'days_until_due': instance.days_until_due,
      'schedule': instance.schedule,
    };

_$NotificationSettingImpl _$$NotificationSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSettingImpl(
      message: json['message'] as bool?,
      property: json['property'] as bool?,
    );

Map<String, dynamic> _$$NotificationSettingImplToJson(
        _$NotificationSettingImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'property': instance.property,
    };

_$SubscriptionErrorImpl _$$SubscriptionErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionErrorImpl(
      title: json['title'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$SubscriptionErrorImplToJson(
        _$SubscriptionErrorImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
    };

_$AgentDetailImpl _$$AgentDetailImplFromJson(Map<String, dynamic> json) =>
    _$AgentDetailImpl(
      G_id: json['G_id'] as String,
      agentImage: json['agentImage'] as String?,
      agencyLogo: json['agencyLogo'] as String?,
      agencyName: json['agencyName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String?,
      notificationSetting: json['notificationSetting'] == null
          ? null
          : NotificationSetting.fromJson(
              json['notificationSetting'] as Map<String, dynamic>),
      hasUnreadNotification: json['hasUnreadNotification'] as bool?,
      subscription: json['subscription'] == null
          ? null
          : SubscriptionResponse.fromJson(
              json['subscription'] as Map<String, dynamic>),
      subscriptionError: json['subscriptionError'] == null
          ? null
          : SubscriptionError.fromJson(
              json['subscriptionError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgentDetailImplToJson(_$AgentDetailImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'agentImage': instance.agentImage,
      'agencyLogo': instance.agencyLogo,
      'agencyName': instance.agencyName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'notificationSetting': instance.notificationSetting,
      'hasUnreadNotification': instance.hasUnreadNotification,
      'subscription': instance.subscription,
      'subscriptionError': instance.subscriptionError,
    };

_$AgentDetailResponseImpl _$$AgentDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentDetailResponseImpl(
      message: json['message'] as String,
      agent: AgentDetail.fromJson(json['agent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgentDetailResponseImplToJson(
        _$AgentDetailResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'agent': instance.agent,
    };

_$DashboardInfoImpl _$$DashboardInfoImplFromJson(Map<String, dynamic> json) =>
    _$DashboardInfoImpl(
      residential: (json['residential'] as num).toDouble(),
      commercial: (json['commercial'] as num).toDouble(),
      other: (json['other'] as num).toDouble(),
      agencyName: json['agencyName'] as String,
      agencyLogo: json['agencyLogo'] as String,
      agencyAddress: json['agencyAddress'] as String,
      contactNumber: json['contactNumber'] as String,
      totalBuyers: (json['totalBuyers'] as num).toDouble(),
      totalSold: (json['totalSold'] as num).toDouble(),
      totalRentalEnquiries: (json['totalRentalEnquiries'] as num).toDouble(),
    );

Map<String, dynamic> _$$DashboardInfoImplToJson(_$DashboardInfoImpl instance) =>
    <String, dynamic>{
      'residential': instance.residential,
      'commercial': instance.commercial,
      'other': instance.other,
      'agencyName': instance.agencyName,
      'agencyLogo': instance.agencyLogo,
      'agencyAddress': instance.agencyAddress,
      'contactNumber': instance.contactNumber,
      'totalBuyers': instance.totalBuyers,
      'totalSold': instance.totalSold,
      'totalRentalEnquiries': instance.totalRentalEnquiries,
    };

_$DashboardResponseImpl _$$DashboardResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DashboardResponseImpl(
      data: DashboardInfo.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DashboardResponseImplToJson(
        _$DashboardResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PricingOptionImpl _$$PricingOptionImplFromJson(Map<String, dynamic> json) =>
    _$PricingOptionImpl(
      salePost: (json['salePost'] as num?)?.toDouble(),
      rentPost: (json['rentPost'] as num?)?.toDouble(),
      holidayLettings: (json['holidayLettings'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PricingOptionImplToJson(_$PricingOptionImpl instance) =>
    <String, dynamic>{
      'salePost': instance.salePost,
      'rentPost': instance.rentPost,
      'holidayLettings': instance.holidayLettings,
    };

_$AgentSubscriptionsettingsDetailImpl
    _$$AgentSubscriptionsettingsDetailImplFromJson(Map<String, dynamic> json) =>
        _$AgentSubscriptionsettingsDetailImpl(
          G_id: json['G_id'] as String,
          agencyId: json['agencyId'] as String?,
          commencementDate: json['commencementDate'] == null
              ? null
              : DateTime.parse(json['commencementDate'] as String),
          billingCycle: json['billingCycle'] as String?,
          residentialPricing: json['residentialPricing'] == null
              ? null
              : PricingOption.fromJson(
                  json['residentialPricing'] as Map<String, dynamic>),
          commercialPricing: json['commercialPricing'] == null
              ? null
              : PricingOption.fromJson(
                  json['commercialPricing'] as Map<String, dynamic>),
          relistingPricing: json['relistingPricing'] == null
              ? null
              : PricingOption.fromJson(
                  json['relistingPricing'] as Map<String, dynamic>),
          autoCharge: json['autoCharge'] as bool?,
          productId: json['productId'] as String?,
          priceId: json['priceId'] as String?,
          fee: (json['fee'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$AgentSubscriptionsettingsDetailImplToJson(
        _$AgentSubscriptionsettingsDetailImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'agencyId': instance.agencyId,
      'commencementDate': instance.commencementDate?.toIso8601String(),
      'billingCycle': instance.billingCycle,
      'residentialPricing': instance.residentialPricing,
      'commercialPricing': instance.commercialPricing,
      'relistingPricing': instance.relistingPricing,
      'autoCharge': instance.autoCharge,
      'productId': instance.productId,
      'priceId': instance.priceId,
      'fee': instance.fee,
    };

_$BuyerProfileImpl _$$BuyerProfileImplFromJson(Map<String, dynamic> json) =>
    _$BuyerProfileImpl(
      G_id: json['G_id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayImage: json['displayImage'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      qrCode: json['qrCode'] as String?,
      authProvider: json['authProvider'] as String?,
      authProviderId: json['authProviderId'] as String?,
    );

Map<String, dynamic> _$$BuyerProfileImplToJson(_$BuyerProfileImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayImage': instance.displayImage,
      'phoneNumber': instance.phoneNumber,
      'qrCode': instance.qrCode,
      'authProvider': instance.authProvider,
      'authProviderId': instance.authProviderId,
    };

_$BuyerProfileResponseImpl _$$BuyerProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BuyerProfileResponseImpl(
      data: BuyerProfile.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BuyerProfileResponseImplToJson(
        _$BuyerProfileResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$BuyerDetailNotificationSettingImpl
    _$$BuyerDetailNotificationSettingImplFromJson(Map<String, dynamic> json) =>
        _$BuyerDetailNotificationSettingImpl(
          message: json['message'] as bool?,
          property: json['property'] as bool?,
        );

Map<String, dynamic> _$$BuyerDetailNotificationSettingImplToJson(
        _$BuyerDetailNotificationSettingImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'property': instance.property,
    };

_$BuyerDetailImpl _$$BuyerDetailImplFromJson(Map<String, dynamic> json) =>
    _$BuyerDetailImpl(
      G_id: json['G_id'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      displayImage: json['displayImage'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      qrCode: json['qrCode'] as String?,
      authProvider: json['authProvider'] as String?,
      authProviderId: json['authProviderId'] as String?,
      notificationSetting: json['notificationSetting'] == null
          ? null
          : BuyerDetailNotificationSetting.fromJson(
              json['notificationSetting'] as Map<String, dynamic>),
      hasUnreadNotification: json['hasUnreadNotification'] as bool?,
    );

Map<String, dynamic> _$$BuyerDetailImplToJson(_$BuyerDetailImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayImage': instance.displayImage,
      'phoneNumber': instance.phoneNumber,
      'qrCode': instance.qrCode,
      'authProvider': instance.authProvider,
      'authProviderId': instance.authProviderId,
      'notificationSetting': instance.notificationSetting,
      'hasUnreadNotification': instance.hasUnreadNotification,
    };

_$CometChatAuthTokenBuyerImpl _$$CometChatAuthTokenBuyerImplFromJson(
        Map<String, dynamic> json) =>
    _$CometChatAuthTokenBuyerImpl(
      uid: json['uid'] as String,
      authToken: json['authToken'] as String,
      createdAt: (json['createdAt'] as num).toDouble(),
    );

Map<String, dynamic> _$$CometChatAuthTokenBuyerImplToJson(
        _$CometChatAuthTokenBuyerImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'authToken': instance.authToken,
      'createdAt': instance.createdAt,
    };

_$CometChatAuthResponseImpl _$$CometChatAuthResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CometChatAuthResponseImpl(
      data: json['data'] == null
          ? null
          : CometChatAuthTokenBuyer.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CometChatAuthResponseImplToJson(
        _$CometChatAuthResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PreSignedUrlImpl _$$PreSignedUrlImplFromJson(Map<String, dynamic> json) =>
    _$PreSignedUrlImpl(
      key: json['key'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PreSignedUrlImplToJson(_$PreSignedUrlImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'url': instance.url,
    };

_$PreSignedUrlResponseImpl _$$PreSignedUrlResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PreSignedUrlResponseImpl(
      data: PreSignedUrl.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreSignedUrlResponseImplToJson(
        _$PreSignedUrlResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ImageResponseImpl _$$ImageResponseImplFromJson(Map<String, dynamic> json) =>
    _$ImageResponseImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ImageResponseImplToJson(_$ImageResponseImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      total: (json['total'] as num).toDouble(),
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'hasNextPage': instance.hasNextPage,
    };

_$NotificationImpl _$$NotificationImplFromJson(Map<String, dynamic> json) =>
    _$NotificationImpl(
      G_id: json['G_id'] as String,
      notificationTokenId: json['notificationTokenId'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      createdBy: json['createdBy'] as String?,
      status: json['status'] as String?,
      isRead: json['isRead'] as bool?,
      type: json['type'] as String?,
      cometChatGroupId: json['cometChatGroupId'] as String?,
      property: json['property'] == null
          ? null
          : Property.fromJson(json['property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NotificationImplToJson(_$NotificationImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'notificationTokenId': instance.notificationTokenId,
      'title': instance.title,
      'body': instance.body,
      'createdBy': instance.createdBy,
      'status': instance.status,
      'isRead': instance.isRead,
      'type': instance.type,
      'cometChatGroupId': instance.cometChatGroupId,
      'property': instance.property,
    };

_$NotificationsResponseImpl _$$NotificationsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsResponseImpl(
      message: json['message'] as String?,
      pagination:
          PaginationType.fromJson(json['pagination'] as Map<String, dynamic>),
      notification: json['notification'] == null
          ? null
          : Notification.fromJson(json['notification'] as Map<String, dynamic>),
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => Notification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NotificationsResponseImplToJson(
        _$NotificationsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'pagination': instance.pagination,
      'notification': instance.notification,
      'notifications': instance.notifications,
    };

_$NotificationTokenResponseImpl _$$NotificationTokenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationTokenResponseImpl(
      G_id: json['G_id'] as String?,
      userId: json['userId'] as String?,
      deviceType: json['deviceType'] as String?,
      notificationToken: json['notificationToken'] as String?,
      createdBy: json['createdBy'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$NotificationTokenResponseImplToJson(
        _$NotificationTokenResponseImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'userId': instance.userId,
      'deviceType': instance.deviceType,
      'notificationToken': instance.notificationToken,
      'createdBy': instance.createdBy,
      'status': instance.status,
    };

_$SettingsResponseImpl _$$SettingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsResponseImpl(
      G_id: json['G_id'] as String,
      dynamicLink: json['dynamicLink'] as String,
    );

Map<String, dynamic> _$$SettingsResponseImplToJson(
        _$SettingsResponseImpl instance) =>
    <String, dynamic>{
      'G_id': instance.G_id,
      'dynamicLink': instance.dynamicLink,
    };

_$NotificationsFilterImpl _$$NotificationsFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsFilterImpl(
      skip: (json['skip'] as num).toDouble(),
      limit: (json['limit'] as num).toDouble(),
      isread: json['isread'] as bool?,
    );

Map<String, dynamic> _$$NotificationsFilterImplToJson(
        _$NotificationsFilterImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'isread': instance.isread,
    };

_$PreSignedInputImpl _$$PreSignedInputImplFromJson(Map<String, dynamic> json) =>
    _$PreSignedInputImpl(
      key: json['key'] as String,
      contentType: json['contentType'] as String,
    );

Map<String, dynamic> _$$PreSignedInputImplToJson(
        _$PreSignedInputImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'contentType': instance.contentType,
    };

_$GetThumbnailInputImpl _$$GetThumbnailInputImplFromJson(
        Map<String, dynamic> json) =>
    _$GetThumbnailInputImpl(
      key: json['key'] as String,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$GetThumbnailInputImplToJson(
        _$GetThumbnailInputImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'size': instance.size,
    };

_$GetCmsPageImpl _$$GetCmsPageImplFromJson(Map<String, dynamic> json) =>
    _$GetCmsPageImpl(
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$$GetCmsPageImplToJson(_$GetCmsPageImpl instance) =>
    <String, dynamic>{
      'slug': instance.slug,
    };

_$WordInputImpl _$$WordInputImplFromJson(Map<String, dynamic> json) =>
    _$WordInputImpl(
      searchKey: json['searchKey'] as String?,
      type: $enumDecode(_$PropertyEnumEnumMap, json['type']),
    );

Map<String, dynamic> _$$WordInputImplToJson(_$WordInputImpl instance) =>
    <String, dynamic>{
      'searchKey': instance.searchKey,
      'type': _$PropertyEnumEnumMap[instance.type]!,
    };

const _$PropertyEnumEnumMap = {
  PropertyEnum.commercial: 'commercial',
  PropertyEnum.residential: 'residential',
  PropertyEnum.holidayLetting: 'holidayLetting',
};

_$BuyerPropertyListInputImpl _$$BuyerPropertyListInputImplFromJson(
        Map<String, dynamic> json) =>
    _$BuyerPropertyListInputImpl(
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : FilterInput.fromJson(json['filter'] as Map<String, dynamic>),
      searchOption: (json['searchOption'] as List<dynamic>?)
          ?.map((e) => SearchPropertyInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortOption: json['sortOption'] == null
          ? null
          : SortOptionInput.fromJson(
              json['sortOption'] as Map<String, dynamic>),
      includeSurroundingSuburb: json['includeSurroundingSuburb'] as bool,
    );

Map<String, dynamic> _$$BuyerPropertyListInputImplToJson(
        _$BuyerPropertyListInputImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'filter': instance.filter,
      'searchOption': instance.searchOption,
      'sortOption': instance.sortOption,
      'includeSurroundingSuburb': instance.includeSurroundingSuburb,
    };

_$PaginationInputImpl _$$PaginationInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationInputImpl(
      skip: (json['skip'] as num).toDouble(),
      limit: (json['limit'] as num).toDouble(),
    );

Map<String, dynamic> _$$PaginationInputImplToJson(
        _$PaginationInputImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$FilterInputImpl _$$FilterInputImplFromJson(Map<String, dynamic> json) =>
    _$FilterInputImpl(
      property: $enumDecodeNullable(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecodeNullable(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      showOnlySold: json['showOnlySold'] as bool?,
      showOnlyLeased: json['showOnlyLeased'] as bool?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      includeUnderContract: json['includeUnderContract'] as bool?,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      minLandSize: (json['minLandSize'] as num?)?.toDouble(),
      maxLandSize: (json['maxLandSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minBuildingSize: (json['minBuildingSize'] as num?)?.toDouble(),
      maxBuildingSize: (json['maxBuildingSize'] as num?)?.toDouble(),
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      pool: json['pool'] as bool?,
    );

Map<String, dynamic> _$$FilterInputImplToJson(_$FilterInputImpl instance) =>
    <String, dynamic>{
      'property': _$PropertyEnumEnumMap[instance.property],
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType],
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'showOnlySold': instance.showOnlySold,
      'showOnlyLeased': instance.showOnlyLeased,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'includeUnderContract': instance.includeUnderContract,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'minLandSize': instance.minLandSize,
      'maxLandSize': instance.maxLandSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'minBuildingSize': instance.minBuildingSize,
      'maxBuildingSize': instance.maxBuildingSize,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'pool': instance.pool,
    };

const _$SaleTypeEnumEnumMap = {
  SaleTypeEnum.sale: 'sale',
  SaleTypeEnum.rent: 'rent',
};

const _$SubSaleTypeEnumEnumMap = {
  SubSaleTypeEnum.offersInvited: 'offersInvited',
  SubSaleTypeEnum.auction: 'auction',
  SubSaleTypeEnum.expressionOfInterest: 'expressionOfInterest',
  SubSaleTypeEnum.contactAgent: 'contactAgent',
  SubSaleTypeEnum.tender: 'tender',
};

const _$PriceUnitEnumEnumMap = {
  PriceUnitEnum.pw: 'pw',
  PriceUnitEnum.pd: 'pd',
  PriceUnitEnum.pm: 'pm',
  PriceUnitEnum.pa: 'pa',
  PriceUnitEnum.pn: 'pn',
};

_$SearchPropertyInputImpl _$$SearchPropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchPropertyInputImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      suburb: json['suburb'] as String?,
      stateShortName: json['stateShortName'] as String?,
      stateFullName: json['stateFullName'] as String?,
    );

Map<String, dynamic> _$$SearchPropertyInputImplToJson(
        _$SearchPropertyInputImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'suburb': instance.suburb,
      'stateShortName': instance.stateShortName,
      'stateFullName': instance.stateFullName,
    };

_$SortOptionInputImpl _$$SortOptionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SortOptionInputImpl(
      sortBy: $enumDecode(_$SortByEnumEnumMap, json['sortBy']),
      sortOrder: $enumDecode(_$SortOrderEnumEnumMap, json['sortOrder']),
    );

Map<String, dynamic> _$$SortOptionInputImplToJson(
        _$SortOptionInputImpl instance) =>
    <String, dynamic>{
      'sortBy': _$SortByEnumEnumMap[instance.sortBy]!,
      'sortOrder': _$SortOrderEnumEnumMap[instance.sortOrder]!,
    };

const _$SortByEnumEnumMap = {
  SortByEnum.createdAt: 'createdAt',
  SortByEnum.price: 'price',
  SortByEnum.inspectionDates: 'inspectionDates',
  SortByEnum.auctionDate: 'auctionDate',
};

const _$SortOrderEnumEnumMap = {
  SortOrderEnum.asc: 'asc',
  SortOrderEnum.desc: 'desc',
};

_$SimilarPropertyInputImpl _$$SimilarPropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SimilarPropertyInputImpl(
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
      propertyId: json['propertyId'] as String,
      tabOption:
          $enumDecodeNullable(_$SimilarPropertyEnumEnumMap, json['tabOption']),
    );

Map<String, dynamic> _$$SimilarPropertyInputImplToJson(
        _$SimilarPropertyInputImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'propertyId': instance.propertyId,
      'tabOption': _$SimilarPropertyEnumEnumMap[instance.tabOption],
    };

const _$SimilarPropertyEnumEnumMap = {
  SimilarPropertyEnum.sale: 'sale',
  SimilarPropertyEnum.rent: 'rent',
  SimilarPropertyEnum.sold: 'sold',
};

_$BoxCoordinatesInputImpl _$$BoxCoordinatesInputImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxCoordinatesInputImpl(
      bottomLeftLongitude: (json['bottomLeftLongitude'] as num).toDouble(),
      bottomLeftLatitude: (json['bottomLeftLatitude'] as num).toDouble(),
      topRightLongitude: (json['topRightLongitude'] as num).toDouble(),
      topRightLatitude: (json['topRightLatitude'] as num).toDouble(),
      filter: json['filter'] == null
          ? null
          : FilterInput.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoxCoordinatesInputImplToJson(
        _$BoxCoordinatesInputImpl instance) =>
    <String, dynamic>{
      'bottomLeftLongitude': instance.bottomLeftLongitude,
      'bottomLeftLatitude': instance.bottomLeftLatitude,
      'topRightLongitude': instance.topRightLongitude,
      'topRightLatitude': instance.topRightLatitude,
      'filter': instance.filter,
    };

_$PropertyDetailInputImpl _$$PropertyDetailInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyDetailInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$PropertyDetailInputImplToJson(
        _$PropertyDetailInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$PropertyListInputImpl _$$PropertyListInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListInputImpl(
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? null
          : FilterInput.fromJson(json['filter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyListInputImplToJson(
        _$PropertyListInputImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'filter': instance.filter,
    };

_$PropertySettingInputImpl _$$PropertySettingInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertySettingInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$PropertySettingInputImplToJson(
        _$PropertySettingInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$ViewInspectionInputImpl _$$ViewInspectionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ViewInspectionInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$ViewInspectionInputImplToJson(
        _$ViewInspectionInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$CheckInListInputDTOImpl _$$CheckInListInputDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckInListInputDTOImpl(
      skip: (json['skip'] as num).toDouble(),
      limit: (json['limit'] as num).toDouble(),
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$CheckInListInputDTOImplToJson(
        _$CheckInListInputDTOImpl instance) =>
    <String, dynamic>{
      'skip': instance.skip,
      'limit': instance.limit,
      'propertyId': instance.propertyId,
    };

_$ReviewSettingInputImpl _$$ReviewSettingInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewSettingInputImpl(
      propertyType: $enumDecode(_$PropertyEnumEnumMap, json['propertyType']),
    );

Map<String, dynamic> _$$ReviewSettingInputImplToJson(
        _$ReviewSettingInputImpl instance) =>
    <String, dynamic>{
      'propertyType': _$PropertyEnumEnumMap[instance.propertyType]!,
    };

_$ReviewInputImpl _$$ReviewInputImplFromJson(Map<String, dynamic> json) =>
    _$ReviewInputImpl(
      propertyId: json['propertyId'] as String,
      paginationOption: PaginationInput.fromJson(
          json['paginationOption'] as Map<String, dynamic>),
      sortOption: json['sortOption'] == null
          ? null
          : SortOption.fromJson(json['sortOption'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewInputImplToJson(_$ReviewInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'paginationOption': instance.paginationOption,
      'sortOption': instance.sortOption,
    };

_$SortOptionImpl _$$SortOptionImplFromJson(Map<String, dynamic> json) =>
    _$SortOptionImpl(
      sortBy: $enumDecode(_$ReviewSortByEnumEnumMap, json['sortBy']),
      sortOrder: $enumDecode(_$ReviewSortOrderEnumEnumMap, json['sortOrder']),
    );

Map<String, dynamic> _$$SortOptionImplToJson(_$SortOptionImpl instance) =>
    <String, dynamic>{
      'sortBy': _$ReviewSortByEnumEnumMap[instance.sortBy]!,
      'sortOrder': _$ReviewSortOrderEnumEnumMap[instance.sortOrder]!,
    };

const _$ReviewSortByEnumEnumMap = {
  ReviewSortByEnum.pricingEstimate: 'pricingEstimate',
  ReviewSortByEnum.ratings: 'ratings',
  ReviewSortByEnum.createdAt: 'createdAt',
};

const _$ReviewSortOrderEnumEnumMap = {
  ReviewSortOrderEnum.asc: 'asc',
  ReviewSortOrderEnum.desc: 'desc',
};

_$AgenyEnquiryInputImpl _$$AgenyEnquiryInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AgenyEnquiryInputImpl(
      propertyId: json['propertyId'] as String?,
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AgenyEnquiryInputImplToJson(
        _$AgenyEnquiryInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'pagination': instance.pagination,
    };

_$CheckEnquiryGroupInputImpl _$$CheckEnquiryGroupInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckEnquiryGroupInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$CheckEnquiryGroupInputImplToJson(
        _$CheckEnquiryGroupInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$EnquiryGroupedInputImpl _$$EnquiryGroupedInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquiryGroupedInputImpl(
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnquiryGroupedInputImplToJson(
        _$EnquiryGroupedInputImpl instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
    };

_$SavedPropertyInputImpl _$$SavedPropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPropertyInputImpl(
      collectionId: json['collectionId'] as String?,
      pagination:
          PaginationInput.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SavedPropertyInputImplToJson(
        _$SavedPropertyInputImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'pagination': instance.pagination,
    };

_$SavedPropertyMapInputImpl _$$SavedPropertyMapInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SavedPropertyMapInputImpl(
      collectionId: json['collectionId'] as String?,
      bottomLeftLongitude: (json['bottomLeftLongitude'] as num).toDouble(),
      bottomLeftLatitude: (json['bottomLeftLatitude'] as num).toDouble(),
      topRightLongitude: (json['topRightLongitude'] as num).toDouble(),
      topRightLatitude: (json['topRightLatitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$SavedPropertyMapInputImplToJson(
        _$SavedPropertyMapInputImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'bottomLeftLongitude': instance.bottomLeftLongitude,
      'bottomLeftLatitude': instance.bottomLeftLatitude,
      'topRightLongitude': instance.topRightLongitude,
      'topRightLatitude': instance.topRightLatitude,
    };

_$GetAllCollectionInputImpl _$$GetAllCollectionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$GetAllCollectionInputImpl(
      includeAllSaved: json['includeAllSaved'] as bool,
    );

Map<String, dynamic> _$$GetAllCollectionInputImplToJson(
        _$GetAllCollectionInputImpl instance) =>
    <String, dynamic>{
      'includeAllSaved': instance.includeAllSaved,
    };

_$GetSignedUrlDTOImpl _$$GetSignedUrlDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetSignedUrlDTOImpl(
      size: json['size'] as String?,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$GetSignedUrlDTOImplToJson(
        _$GetSignedUrlDTOImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'key': instance.key,
    };

_$NotificationsTokenDtoImpl _$$NotificationsTokenDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsTokenDtoImpl(
      deviceType: json['deviceType'] as String,
      notificationToken: json['notificationToken'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$NotificationsTokenDtoImplToJson(
        _$NotificationsTokenDtoImpl instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'notificationToken': instance.notificationToken,
      'deviceId': instance.deviceId,
    };

_$DisableNotificationsTokenDtoImpl _$$DisableNotificationsTokenDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DisableNotificationsTokenDtoImpl(
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$DisableNotificationsTokenDtoImplToJson(
        _$DisableNotificationsTokenDtoImpl instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
    };

_$NotificationsSettingDtoImpl _$$NotificationsSettingDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsSettingDtoImpl(
      userType: $enumDecode(_$UserTypeEnumEnumMap, json['userType']),
      notificationType:
          $enumDecode(_$NotificationTypeEnumEnumMap, json['notificationType']),
      notificationValue: json['notificationValue'] as bool,
    );

Map<String, dynamic> _$$NotificationsSettingDtoImplToJson(
        _$NotificationsSettingDtoImpl instance) =>
    <String, dynamic>{
      'userType': _$UserTypeEnumEnumMap[instance.userType]!,
      'notificationType':
          _$NotificationTypeEnumEnumMap[instance.notificationType]!,
      'notificationValue': instance.notificationValue,
    };

const _$UserTypeEnumEnumMap = {
  UserTypeEnum.agent: 'agent',
  UserTypeEnum.buyer: 'buyer',
};

const _$NotificationTypeEnumEnumMap = {
  NotificationTypeEnum.property: 'property',
  NotificationTypeEnum.message: 'message',
};

_$NotificationsDtoImpl _$$NotificationsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsDtoImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      notificationTokenId: json['notificationTokenId'] as String?,
      body: json['body'] as String?,
      createdBy: json['createdBy'] as String?,
      status: json['status'] as String?,
      isRead: json['isRead'] as bool?,
    );

Map<String, dynamic> _$$NotificationsDtoImplToJson(
        _$NotificationsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'notificationTokenId': instance.notificationTokenId,
      'body': instance.body,
      'createdBy': instance.createdBy,
      'status': instance.status,
      'isRead': instance.isRead,
    };

_$BuyerProfileInputImpl _$$BuyerProfileInputImplFromJson(
        Map<String, dynamic> json) =>
    _$BuyerProfileInputImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      displayImage: json['displayImage'] as String?,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$BuyerProfileInputImplToJson(
        _$BuyerProfileInputImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'displayImage': instance.displayImage,
      'phoneNumber': instance.phoneNumber,
    };

_$ContactUsInputDTOImpl _$$ContactUsInputDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ContactUsInputDTOImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ContactUsInputDTOImplToJson(
        _$ContactUsInputDTOImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$ReportInputDTOImpl _$$ReportInputDTOImplFromJson(Map<String, dynamic> json) =>
    _$ReportInputDTOImpl(
      subject: json['subject'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$ReportInputDTOImplToJson(
        _$ReportInputDTOImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'reason': instance.reason,
    };

_$ReportUserDTOImpl _$$ReportUserDTOImplFromJson(Map<String, dynamic> json) =>
    _$ReportUserDTOImpl(
      details: json['details'] as String,
      reason: json['reason'] as String,
      reportedUserId: json['reportedUserId'] as String,
      reportedUserType:
          $enumDecode(_$ReportedUserTypeEnumMap, json['reportedUserType']),
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$ReportUserDTOImplToJson(_$ReportUserDTOImpl instance) =>
    <String, dynamic>{
      'details': instance.details,
      'reason': instance.reason,
      'reportedUserId': instance.reportedUserId,
      'reportedUserType': _$ReportedUserTypeEnumMap[instance.reportedUserType]!,
      'propertyId': instance.propertyId,
    };

const _$ReportedUserTypeEnumMap = {
  ReportedUserType.AGENT: 'AGENT',
  ReportedUserType.BUYER: 'BUYER',
};

_$CreateCmsPageInputImpl _$$CreateCmsPageInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCmsPageInputImpl(
      title: $enumDecode(_$CmsTitleEnumMap, json['title']),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$CreateCmsPageInputImplToJson(
        _$CreateCmsPageInputImpl instance) =>
    <String, dynamic>{
      'title': _$CmsTitleEnumMap[instance.title]!,
      'content': instance.content,
    };

const _$CmsTitleEnumMap = {
  CmsTitle.TERMS_AND_CONDITION: 'TERMS_AND_CONDITION',
  CmsTitle.PRIVACY_POLICY: 'PRIVACY_POLICY',
  CmsTitle.TERMS_AND_CONDITION_AGENT: 'TERMS_AND_CONDITION_AGENT',
  CmsTitle.PRIVACY_POLICY_AGENT: 'PRIVACY_POLICY_AGENT',
};

_$AddPropertyInputImpl _$$AddPropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPropertyInputImpl(
      name: json['name'] as String?,
      description: json['description'] as String,
      listingType: $enumDecode(_$ListingTypeEnumEnumMap, json['listingType']),
      property: $enumDecode(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecode(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      type: json['type'] as String,
      address: AddressType.fromJson(json['address'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      showPrice: json['showPrice'] as bool,
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      inspectionDates: (json['inspectionDates'] as List<dynamic>?)
          ?.map((e) => InspectionDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      isInspectionByAppointment: json['isInspectionByAppointment'] as bool?,
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDate.fromJson(json['auctionDate'] as Map<String, dynamic>),
      landSize: (json['landSize'] as num?)?.toDouble(),
      buildingSize: (json['buildingSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isVacant: json['isVacant'] as bool?,
      isTenated: json['isTenated'] as bool?,
      isPetAllowed: json['isPetAllowed'] as bool,
      isFurnished: json['isFurnished'] as bool,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      pool: (json['pool'] as num?)?.toDouble(),
      agentPriceGuideUrl: json['agentPriceGuideUrl'] as String?,
      councilZoning: json['councilZoning'] as String,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      straNumber: json['straNumber'] as String?,
    );

Map<String, dynamic> _$$AddPropertyInputImplToJson(
        _$AddPropertyInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'listingType': _$ListingTypeEnumEnumMap[instance.listingType]!,
      'property': _$PropertyEnumEnumMap[instance.property]!,
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType]!,
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'type': instance.type,
      'address': instance.address,
      'videoUrl': instance.videoUrl,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'showPrice': instance.showPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'inspectionDates': instance.inspectionDates,
      'isInspectionByAppointment': instance.isInspectionByAppointment,
      'auctionDate': instance.auctionDate,
      'landSize': instance.landSize,
      'buildingSize': instance.buildingSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'isVacant': instance.isVacant,
      'isTenated': instance.isTenated,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'pool': instance.pool,
      'agentPriceGuideUrl': instance.agentPriceGuideUrl,
      'councilZoning': instance.councilZoning,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'straNumber': instance.straNumber,
    };

const _$ListingTypeEnumEnumMap = {
  ListingTypeEnum.earlyBird: 'earlyBird',
  ListingTypeEnum.full: 'full',
};

_$AddressTypeImpl _$$AddressTypeImplFromJson(Map<String, dynamic> json) =>
    _$AddressTypeImpl(
      displayAddress: json['displayAddress'] as String,
      suburb: json['suburb'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postalCode: (json['postalCode'] as num).toDouble(),
      latitutde: (json['latitutde'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$AddressTypeImplToJson(_$AddressTypeImpl instance) =>
    <String, dynamic>{
      'displayAddress': instance.displayAddress,
      'suburb': instance.suburb,
      'state': instance.state,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'latitutde': instance.latitutde,
      'longitude': instance.longitude,
    };

_$InspectionDateImpl _$$InspectionDateImplFromJson(Map<String, dynamic> json) =>
    _$InspectionDateImpl(
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$$InspectionDateImplToJson(
        _$InspectionDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$AuctionDateImpl _$$AuctionDateImplFromJson(Map<String, dynamic> json) =>
    _$AuctionDateImpl(
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String?,
    );

Map<String, dynamic> _$$AuctionDateImplToJson(_$AuctionDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$AddEarlyBirdInputImpl _$$AddEarlyBirdInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AddEarlyBirdInputImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      property: $enumDecode(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecode(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      type: json['type'] as String,
      address: json['address'] == null
          ? null
          : AddressType.fromJson(json['address'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      inspectionDates: (json['inspectionDates'] as List<dynamic>?)
          ?.map((e) => InspectionDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDate.fromJson(json['auctionDate'] as Map<String, dynamic>),
      landSize: (json['landSize'] as num?)?.toDouble(),
      buildingSize: (json['buildingSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      showPrice: json['showPrice'] as bool?,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      pool: (json['pool'] as num?)?.toDouble(),
      isVacant: json['isVacant'] as bool?,
      isTenated: json['isTenated'] as bool?,
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      agentPriceGuideUrl: json['agentPriceGuideUrl'] as String?,
      councilZoning: json['councilZoning'] as String?,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      straNumber: json['straNumber'] as String?,
    );

Map<String, dynamic> _$$AddEarlyBirdInputImplToJson(
        _$AddEarlyBirdInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'property': _$PropertyEnumEnumMap[instance.property]!,
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType]!,
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'type': instance.type,
      'address': instance.address,
      'videoUrl': instance.videoUrl,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'inspectionDates': instance.inspectionDates,
      'auctionDate': instance.auctionDate,
      'landSize': instance.landSize,
      'buildingSize': instance.buildingSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'showPrice': instance.showPrice,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'pool': instance.pool,
      'isVacant': instance.isVacant,
      'isTenated': instance.isTenated,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'agentPriceGuideUrl': instance.agentPriceGuideUrl,
      'councilZoning': instance.councilZoning,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'straNumber': instance.straNumber,
    };

_$UpdateEarlyBirdInputImpl _$$UpdateEarlyBirdInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateEarlyBirdInputImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      property: $enumDecode(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecode(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      type: json['type'] as String,
      address: json['address'] == null
          ? null
          : AddressType.fromJson(json['address'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      inspectionDates: (json['inspectionDates'] as List<dynamic>?)
          ?.map((e) => InspectionDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDate.fromJson(json['auctionDate'] as Map<String, dynamic>),
      landSize: (json['landSize'] as num?)?.toDouble(),
      buildingSize: (json['buildingSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      showPrice: json['showPrice'] as bool?,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      pool: (json['pool'] as num?)?.toDouble(),
      isVacant: json['isVacant'] as bool?,
      isTenated: json['isTenated'] as bool?,
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      agentPriceGuideUrl: json['agentPriceGuideUrl'] as String?,
      councilZoning: json['councilZoning'] as String?,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      straNumber: json['straNumber'] as String?,
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$UpdateEarlyBirdInputImplToJson(
        _$UpdateEarlyBirdInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'property': _$PropertyEnumEnumMap[instance.property]!,
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType]!,
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'type': instance.type,
      'address': instance.address,
      'videoUrl': instance.videoUrl,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'inspectionDates': instance.inspectionDates,
      'auctionDate': instance.auctionDate,
      'landSize': instance.landSize,
      'buildingSize': instance.buildingSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'showPrice': instance.showPrice,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'pool': instance.pool,
      'isVacant': instance.isVacant,
      'isTenated': instance.isTenated,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'agentPriceGuideUrl': instance.agentPriceGuideUrl,
      'councilZoning': instance.councilZoning,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'straNumber': instance.straNumber,
      'propertyId': instance.propertyId,
    };

_$UpdatePropertyInputImpl _$$UpdatePropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePropertyInputImpl(
      name: json['name'] as String?,
      description: json['description'] as String,
      listingType: $enumDecode(_$ListingTypeEnumEnumMap, json['listingType']),
      property: $enumDecode(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecode(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      type: json['type'] as String,
      address: AddressType.fromJson(json['address'] as Map<String, dynamic>),
      videoUrl: json['videoUrl'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      showPrice: json['showPrice'] as bool,
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      inspectionDates: (json['inspectionDates'] as List<dynamic>?)
          ?.map((e) => UpdateInspectionDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      isInspectionByAppointment: json['isInspectionByAppointment'] as bool?,
      auctionDate: json['auctionDate'] == null
          ? null
          : AuctionDate.fromJson(json['auctionDate'] as Map<String, dynamic>),
      landSize: (json['landSize'] as num?)?.toDouble(),
      buildingSize: (json['buildingSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isVacant: json['isVacant'] as bool?,
      isTenated: json['isTenated'] as bool?,
      isPetAllowed: json['isPetAllowed'] as bool,
      isFurnished: json['isFurnished'] as bool,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      pool: (json['pool'] as num?)?.toDouble(),
      agentPriceGuideUrl: json['agentPriceGuideUrl'] as String?,
      councilZoning: json['councilZoning'] as String,
      availableFrom: json['availableFrom'] == null
          ? null
          : DateTime.parse(json['availableFrom'] as String),
      straNumber: json['straNumber'] as String?,
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$UpdatePropertyInputImplToJson(
        _$UpdatePropertyInputImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'listingType': _$ListingTypeEnumEnumMap[instance.listingType]!,
      'property': _$PropertyEnumEnumMap[instance.property]!,
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType]!,
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'type': instance.type,
      'address': instance.address,
      'videoUrl': instance.videoUrl,
      'images': instance.images,
      'price': instance.price,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'showPrice': instance.showPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'inspectionDates': instance.inspectionDates,
      'isInspectionByAppointment': instance.isInspectionByAppointment,
      'auctionDate': instance.auctionDate,
      'landSize': instance.landSize,
      'buildingSize': instance.buildingSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'isVacant': instance.isVacant,
      'isTenated': instance.isTenated,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'pool': instance.pool,
      'agentPriceGuideUrl': instance.agentPriceGuideUrl,
      'councilZoning': instance.councilZoning,
      'availableFrom': instance.availableFrom?.toIso8601String(),
      'straNumber': instance.straNumber,
      'propertyId': instance.propertyId,
    };

_$UpdateInspectionDateImpl _$$UpdateInspectionDateImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateInspectionDateImpl(
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$$UpdateInspectionDateImplToJson(
        _$UpdateInspectionDateImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$UpdatePropertyDescriptionInputImpl
    _$$UpdatePropertyDescriptionInputImplFromJson(Map<String, dynamic> json) =>
        _$UpdatePropertyDescriptionInputImpl(
          propertyId: json['propertyId'] as String,
          description: json['description'] as String,
        );

Map<String, dynamic> _$$UpdatePropertyDescriptionInputImplToJson(
        _$UpdatePropertyDescriptionInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'description': instance.description,
    };

_$UpdatePropertySettingInputImpl _$$UpdatePropertySettingInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdatePropertySettingInputImpl(
      propertyId: json['propertyId'] as String,
      status: $enumDecode(_$PropertySettingEnumEnumMap, json['status']),
      soldPrice: (json['soldPrice'] as num?)?.toDouble(),
      showSoldPrice: json['showSoldPrice'] as bool?,
      leasedPriceUnit:
          $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['leasedPriceUnit']),
    );

Map<String, dynamic> _$$UpdatePropertySettingInputImplToJson(
        _$UpdatePropertySettingInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'status': _$PropertySettingEnumEnumMap[instance.status]!,
      'soldPrice': instance.soldPrice,
      'showSoldPrice': instance.showSoldPrice,
      'leasedPriceUnit': _$PriceUnitEnumEnumMap[instance.leasedPriceUnit],
    };

const _$PropertySettingEnumEnumMap = {
  PropertySettingEnum.live: 'live',
  PropertySettingEnum.leased: 'leased',
  PropertySettingEnum.withdraw: 'withdraw',
  PropertySettingEnum.sold: 'sold',
  PropertySettingEnum.underOffer: 'underOffer',
  PropertySettingEnum.underContract: 'underContract',
  PropertySettingEnum.reactivate: 'reactivate',
};

_$InspectionDateInputImpl _$$InspectionDateInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InspectionDateInputImpl(
      date: DateTime.parse(json['date'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      inspectionId: json['inspectionId'] as String?,
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$InspectionDateInputImplToJson(
        _$InspectionDateInputImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'inspectionId': instance.inspectionId,
      'propertyId': instance.propertyId,
    };

_$RemoveInspectionDateInputImpl _$$RemoveInspectionDateInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveInspectionDateInputImpl(
      inspectionId: json['inspectionId'] as String,
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$RemoveInspectionDateInputImplToJson(
        _$RemoveInspectionDateInputImpl instance) =>
    <String, dynamic>{
      'inspectionId': instance.inspectionId,
      'propertyId': instance.propertyId,
    };

_$AddBuyerCheckInInputImpl _$$AddBuyerCheckInInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AddBuyerCheckInInputImpl(
      propertyId: json['propertyId'] as String,
      buyerId: json['buyerId'] as String,
      checkInDateTime: DateTime.parse(json['checkInDateTime'] as String),
    );

Map<String, dynamic> _$$AddBuyerCheckInInputImplToJson(
        _$AddBuyerCheckInInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'buyerId': instance.buyerId,
      'checkInDateTime': instance.checkInDateTime.toIso8601String(),
    };

_$PropertyReviewInputImpl _$$PropertyReviewInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyReviewInputImpl(
      propertyId: json['propertyId'] as String,
      review:
          ReviewInputDetail.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PropertyReviewInputImplToJson(
        _$PropertyReviewInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'review': instance.review,
    };

_$ReviewInputDetailImpl _$$ReviewInputDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewInputDetailImpl(
      description: json['description'] as String,
      pricingEstimate: (json['pricingEstimate'] as num).toDouble(),
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewInputDetailImplToJson(
        _$ReviewInputDetailImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'pricingEstimate': instance.pricingEstimate,
      'reviews': instance.reviews,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      reviewOptionId: json['reviewOptionId'] as String,
      ratings: (json['ratings'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'reviewOptionId': instance.reviewOptionId,
      'ratings': instance.ratings,
    };

_$EnquiryInputImpl _$$EnquiryInputImplFromJson(Map<String, dynamic> json) =>
    _$EnquiryInputImpl(
      propertyId: json['propertyId'] as String,
      enquiry: json['enquiry'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$EnquiryInputImplToJson(_$EnquiryInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'enquiry': instance.enquiry,
      'message': instance.message,
    };

_$EnquiryGroupInputImpl _$$EnquiryGroupInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EnquiryGroupInputImpl(
      propertyId: json['propertyId'] as String,
      cometGroupId: json['cometGroupId'] as String,
    );

Map<String, dynamic> _$$EnquiryGroupInputImplToJson(
        _$EnquiryGroupInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'cometGroupId': instance.cometGroupId,
    };

_$IdInputImpl _$$IdInputImplFromJson(Map<String, dynamic> json) =>
    _$IdInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$IdInputImplToJson(_$IdInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$SavePropertyInputImpl _$$SavePropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePropertyInputImpl(
      propertyId: json['propertyId'] as String,
      collectionId: json['collectionId'] as String?,
    );

Map<String, dynamic> _$$SavePropertyInputImplToJson(
        _$SavePropertyInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
      'collectionId': instance.collectionId,
    };

_$RemoveSavedPropertyInputImpl _$$RemoveSavedPropertyInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveSavedPropertyInputImpl(
      propertyId: json['propertyId'] as String,
    );

Map<String, dynamic> _$$RemoveSavedPropertyInputImplToJson(
        _$RemoveSavedPropertyInputImpl instance) =>
    <String, dynamic>{
      'propertyId': instance.propertyId,
    };

_$CollectionInputImpl _$$CollectionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionInputImpl(
      title: json['title'] as String,
      collectionId: json['collectionId'] as String?,
    );

Map<String, dynamic> _$$CollectionInputImplToJson(
        _$CollectionInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'collectionId': instance.collectionId,
    };

_$RemoveCollectionInputImpl _$$RemoveCollectionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RemoveCollectionInputImpl(
      collectionId: json['collectionId'] as String,
      includeProperty: json['includeProperty'] as bool,
    );

Map<String, dynamic> _$$RemoveCollectionInputImplToJson(
        _$RemoveCollectionInputImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'includeProperty': instance.includeProperty,
    };

_$SaveSearchFilterInputImpl _$$SaveSearchFilterInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveSearchFilterInputImpl(
      property: $enumDecodeNullable(_$PropertyEnumEnumMap, json['property']),
      saleType: $enumDecodeNullable(_$SaleTypeEnumEnumMap, json['saleType']),
      subSaleType:
          $enumDecodeNullable(_$SubSaleTypeEnumEnumMap, json['subSaleType']),
      showOnlySold: json['showOnlySold'] as bool?,
      showOnlyLeased: json['showOnlyLeased'] as bool?,
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      priceUnit: $enumDecodeNullable(_$PriceUnitEnumEnumMap, json['priceUnit']),
      includeUnderContract: json['includeUnderContract'] as bool?,
      bed: (json['bed'] as num?)?.toDouble(),
      bath: (json['bath'] as num?)?.toDouble(),
      car: (json['car'] as num?)?.toDouble(),
      minLandSize: (json['minLandSize'] as num?)?.toDouble(),
      maxLandSize: (json['maxLandSize'] as num?)?.toDouble(),
      featureWords: (json['featureWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lifeStyleWords: (json['lifeStyleWords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      minBuildingSize: (json['minBuildingSize'] as num?)?.toDouble(),
      maxBuildingSize: (json['maxBuildingSize'] as num?)?.toDouble(),
      isPetAllowed: json['isPetAllowed'] as bool?,
      isFurnished: json['isFurnished'] as bool?,
      pool: json['pool'] as bool?,
      title: json['title'] as String,
      address: (json['address'] as List<dynamic>?)
          ?.map((e) =>
              AddressForSaveSearchFilter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaveSearchFilterInputImplToJson(
        _$SaveSearchFilterInputImpl instance) =>
    <String, dynamic>{
      'property': _$PropertyEnumEnumMap[instance.property],
      'saleType': _$SaleTypeEnumEnumMap[instance.saleType],
      'subSaleType': _$SubSaleTypeEnumEnumMap[instance.subSaleType],
      'showOnlySold': instance.showOnlySold,
      'showOnlyLeased': instance.showOnlyLeased,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'priceUnit': _$PriceUnitEnumEnumMap[instance.priceUnit],
      'includeUnderContract': instance.includeUnderContract,
      'bed': instance.bed,
      'bath': instance.bath,
      'car': instance.car,
      'minLandSize': instance.minLandSize,
      'maxLandSize': instance.maxLandSize,
      'featureWords': instance.featureWords,
      'lifeStyleWords': instance.lifeStyleWords,
      'propertyType': instance.propertyType,
      'minBuildingSize': instance.minBuildingSize,
      'maxBuildingSize': instance.maxBuildingSize,
      'isPetAllowed': instance.isPetAllowed,
      'isFurnished': instance.isFurnished,
      'pool': instance.pool,
      'title': instance.title,
      'address': instance.address,
    };

_$AddressForSaveSearchFilterImpl _$$AddressForSaveSearchFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressForSaveSearchFilterImpl(
      suburb: json['suburb'] as String,
      displayAddress: json['displayAddress'] as String,
      stateFullName: json['stateFullName'] as String,
      stateShortName: json['stateShortName'] as String,
      country: json['country'] as String,
      postalCode: (json['postalCode'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$$AddressForSaveSearchFilterImplToJson(
        _$AddressForSaveSearchFilterImpl instance) =>
    <String, dynamic>{
      'suburb': instance.suburb,
      'displayAddress': instance.displayAddress,
      'stateFullName': instance.stateFullName,
      'stateShortName': instance.stateShortName,
      'country': instance.country,
      'postalCode': instance.postalCode,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$DeleteSavedSearchInputImpl _$$DeleteSavedSearchInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DeleteSavedSearchInputImpl(
      savedSearchId: json['savedSearchId'] as String,
    );

Map<String, dynamic> _$$DeleteSavedSearchInputImplToJson(
        _$DeleteSavedSearchInputImpl instance) =>
    <String, dynamic>{
      'savedSearchId': instance.savedSearchId,
    };

_$AgentChangePasswordInputImpl _$$AgentChangePasswordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentChangePasswordInputImpl(
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
    );

Map<String, dynamic> _$$AgentChangePasswordInputImplToJson(
        _$AgentChangePasswordInputImpl instance) =>
    <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

_$AgentUpdateInputImpl _$$AgentUpdateInputImplFromJson(
        Map<String, dynamic> json) =>
    _$AgentUpdateInputImpl(
      agentImage: json['agentImage'] as String?,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$AgentUpdateInputImplToJson(
        _$AgentUpdateInputImpl instance) =>
    <String, dynamic>{
      'agentImage': instance.agentImage,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phoneNumber': instance.phoneNumber,
    };

_$DeviceInfoInputImpl _$$DeviceInfoInputImplFromJson(
        Map<String, dynamic> json) =>
    _$DeviceInfoInputImpl(
      deviceType: (json['deviceType'] as num).toDouble(),
      deviceName: json['deviceName'] as String,
      pushNotificationToken: json['pushNotificationToken'] as String?,
    );

Map<String, dynamic> _$$DeviceInfoInputImplToJson(
        _$DeviceInfoInputImpl instance) =>
    <String, dynamic>{
      'deviceType': instance.deviceType,
      'deviceName': instance.deviceName,
      'pushNotificationToken': instance.pushNotificationToken,
    };

_$EmailSignupOTPInputImpl _$$EmailSignupOTPInputImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailSignupOTPInputImpl(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      password: json['password'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$EmailSignupOTPInputImplToJson(
        _$EmailSignupOTPInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
    };

_$VerifyEmailInputImpl _$$VerifyEmailInputImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailInputImpl(
      email: json['email'] as String,
      verificationCode: json['verificationCode'] as String,
    );

Map<String, dynamic> _$$VerifyEmailInputImplToJson(
        _$VerifyEmailInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'verificationCode': instance.verificationCode,
    };

_$LoginEmailPasswordInputImpl _$$LoginEmailPasswordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginEmailPasswordInputImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      deviceType: json['deviceType'] as String?,
    );

Map<String, dynamic> _$$LoginEmailPasswordInputImplToJson(
        _$LoginEmailPasswordInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'deviceType': instance.deviceType,
    };

_$ChangePasswordInputImpl _$$ChangePasswordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordInputImpl(
      password: json['password'] as String,
      new_password: json['new_password'] as String,
    );

Map<String, dynamic> _$$ChangePasswordInputImplToJson(
        _$ChangePasswordInputImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'new_password': instance.new_password,
    };

_$UpdateUserProfileImpl _$$UpdateUserProfileImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserProfileImpl(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      address: json['address'] == null
          ? null
          : AddressInput.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserProfileImplToJson(
        _$UpdateUserProfileImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'address': instance.address,
    };

_$AddressInputImpl _$$AddressInputImplFromJson(Map<String, dynamic> json) =>
    _$AddressInputImpl(
      displayAddress: json['displayAddress'] as String,
      coordinates: CoordinatesInput.fromJson(
          json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddressInputImplToJson(_$AddressInputImpl instance) =>
    <String, dynamic>{
      'displayAddress': instance.displayAddress,
      'coordinates': instance.coordinates,
    };

_$CoordinatesInputImpl _$$CoordinatesInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CoordinatesInputImpl(
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$CoordinatesInputImplToJson(
        _$CoordinatesInputImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

_$ForgotPasswordInputImpl _$$ForgotPasswordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ForgotPasswordInputImpl(
      email: json['email'] as String,
      userType:
          $enumDecode(_$ForgotPasswordUserTypeEnumEnumMap, json['userType']),
    );

Map<String, dynamic> _$$ForgotPasswordInputImplToJson(
        _$ForgotPasswordInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'userType': _$ForgotPasswordUserTypeEnumEnumMap[instance.userType]!,
    };

const _$ForgotPasswordUserTypeEnumEnumMap = {
  ForgotPasswordUserTypeEnum.agent: 'agent',
  ForgotPasswordUserTypeEnum.buyer: 'buyer',
};

_$VerifyResetPasswordOtpInputImpl _$$VerifyResetPasswordOtpInputImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyResetPasswordOtpInputImpl(
      verificationCode: json['verificationCode'] as String,
      email: json['email'] as String,
      userType:
          $enumDecode(_$ForgotPasswordUserTypeEnumEnumMap, json['userType']),
    );

Map<String, dynamic> _$$VerifyResetPasswordOtpInputImplToJson(
        _$VerifyResetPasswordOtpInputImpl instance) =>
    <String, dynamic>{
      'verificationCode': instance.verificationCode,
      'email': instance.email,
      'userType': _$ForgotPasswordUserTypeEnumEnumMap[instance.userType]!,
    };

_$ResetPasswordInputImpl _$$ResetPasswordInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordInputImpl(
      email: json['email'] as String?,
      password: json['password'] as String,
      userType:
          $enumDecode(_$ForgotPasswordUserTypeEnumEnumMap, json['userType']),
      userId: json['userId'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordInputImplToJson(
        _$ResetPasswordInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'userType': _$ForgotPasswordUserTypeEnumEnumMap[instance.userType]!,
      'userId': instance.userId,
      'token': instance.token,
    };

_$RequestLoginOTPInputImpl _$$RequestLoginOTPInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestLoginOTPInputImpl(
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$RequestLoginOTPInputImplToJson(
        _$RequestLoginOTPInputImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

_$RequestPhoneLoginOTPInputImpl _$$RequestPhoneLoginOTPInputImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestPhoneLoginOTPInputImpl(
      dialCode: json['dialCode'] as String,
      number: json['number'] as String,
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$RequestPhoneLoginOTPInputImplToJson(
        _$RequestPhoneLoginOTPInputImpl instance) =>
    <String, dynamic>{
      'dialCode': instance.dialCode,
      'number': instance.number,
      'deviceId': instance.deviceId,
    };

_$PhoneLoginWithOTPInputImpl _$$PhoneLoginWithOTPInputImplFromJson(
        Map<String, dynamic> json) =>
    _$PhoneLoginWithOTPInputImpl(
      dialCode: json['dialCode'] as String,
      number: json['number'] as String,
      deviceId: json['deviceId'] as String,
      verificationCode: json['verificationCode'] as String,
    );

Map<String, dynamic> _$$PhoneLoginWithOTPInputImplToJson(
        _$PhoneLoginWithOTPInputImpl instance) =>
    <String, dynamic>{
      'dialCode': instance.dialCode,
      'number': instance.number,
      'deviceId': instance.deviceId,
      'verificationCode': instance.verificationCode,
    };
