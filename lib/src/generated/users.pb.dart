///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $1;

import 'users.pbenum.dart';

export 'users.pbenum.dart';

class ListUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListUsersRequest', package: const $pb.PackageName('users'))
    ..a<$core.int>(1, 'routeId', $pb.PbFieldType.O3)
    ..e<EnumOrderBy>(2, 'orderBy', $pb.PbFieldType.OE, EnumOrderBy.DESC, EnumOrderBy.valueOf, EnumOrderBy.values)
    ..a<$core.int>(3, 'pageSize', $pb.PbFieldType.O3)
    ..aOS(4, 'pageToken')
    ..a<$core.int>(5, 'since', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListUsersRequest._() : super();
  factory ListUsersRequest() => create();
  factory ListUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListUsersRequest clone() => ListUsersRequest()..mergeFromMessage(this);
  ListUsersRequest copyWith(void Function(ListUsersRequest) updates) => super.copyWith((message) => updates(message as ListUsersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUsersRequest create() => ListUsersRequest._();
  ListUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ListUsersRequest> createRepeated() => $pb.PbList<ListUsersRequest>();
  static ListUsersRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListUsersRequest _defaultInstance;

  $core.int get routeId => $_get(0, 0);
  set routeId($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasRouteId() => $_has(0);
  void clearRouteId() => clearField(1);

  EnumOrderBy get orderBy => $_getN(1);
  set orderBy(EnumOrderBy v) { setField(2, v); }
  $core.bool hasOrderBy() => $_has(1);
  void clearOrderBy() => clearField(2);

  $core.int get pageSize => $_get(2, 0);
  set pageSize($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasPageSize() => $_has(2);
  void clearPageSize() => clearField(3);

  $core.String get pageToken => $_getS(3, '');
  set pageToken($core.String v) { $_setString(3, v); }
  $core.bool hasPageToken() => $_has(3);
  void clearPageToken() => clearField(4);

  $core.int get since => $_get(4, 0);
  set since($core.int v) { $_setSignedInt32(4, v); }
  $core.bool hasSince() => $_has(4);
  void clearSince() => clearField(5);
}

class CreateUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CreateUserRequest', package: const $pb.PackageName('users'))
    ..aOS(1, 'name')
    ..pPS(2, 'roles')
    ..a<$core.int>(3, 'routeId', $pb.PbFieldType.O3)
    ..aOS(4, 'password')
    ..hasRequiredFields = false
  ;

  CreateUserRequest._() : super();
  factory CreateUserRequest() => create();
  factory CreateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  CreateUserRequest clone() => CreateUserRequest()..mergeFromMessage(this);
  CreateUserRequest copyWith(void Function(CreateUserRequest) updates) => super.copyWith((message) => updates(message as CreateUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateUserRequest create() => CreateUserRequest._();
  CreateUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateUserRequest> createRepeated() => $pb.PbList<CreateUserRequest>();
  static CreateUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateUserRequest _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.List<$core.String> get roles => $_getList(1);

  $core.int get routeId => $_get(2, 0);
  set routeId($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasRouteId() => $_has(2);
  void clearRouteId() => clearField(3);

  $core.String get password => $_getS(3, '');
  set password($core.String v) { $_setString(3, v); }
  $core.bool hasPassword() => $_has(3);
  void clearPassword() => clearField(4);
}

class GetUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetUserRequest', package: const $pb.PackageName('users'))
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetUserRequest._() : super();
  factory GetUserRequest() => create();
  factory GetUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetUserRequest clone() => GetUserRequest()..mergeFromMessage(this);
  GetUserRequest copyWith(void Function(GetUserRequest) updates) => super.copyWith((message) => updates(message as GetUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserRequest create() => GetUserRequest._();
  GetUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserRequest> createRepeated() => $pb.PbList<GetUserRequest>();
  static GetUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetUserRequest _defaultInstance;

  $core.int get id => $_get(0, 0);
  set id($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);
}

class UpdateUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UpdateUserRequest', package: const $pb.PackageName('users'))
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..aOS(3, 'password')
    ..a<$core.int>(4, 'routeId', $pb.PbFieldType.O3)
    ..pPS(5, 'roles')
    ..hasRequiredFields = false
  ;

  UpdateUserRequest._() : super();
  factory UpdateUserRequest() => create();
  factory UpdateUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UpdateUserRequest clone() => UpdateUserRequest()..mergeFromMessage(this);
  UpdateUserRequest copyWith(void Function(UpdateUserRequest) updates) => super.copyWith((message) => updates(message as UpdateUserRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateUserRequest create() => UpdateUserRequest._();
  UpdateUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserRequest> createRepeated() => $pb.PbList<UpdateUserRequest>();
  static UpdateUserRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UpdateUserRequest _defaultInstance;

  $core.int get id => $_get(0, 0);
  set id($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.String get password => $_getS(2, '');
  set password($core.String v) { $_setString(2, v); }
  $core.bool hasPassword() => $_has(2);
  void clearPassword() => clearField(3);

  $core.int get routeId => $_get(3, 0);
  set routeId($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasRouteId() => $_has(3);
  void clearRouteId() => clearField(4);

  $core.List<$core.String> get roles => $_getList(4);
}

class User extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('User', package: const $pb.PackageName('users'))
    ..a<$core.int>(1, 'id', $pb.PbFieldType.O3)
    ..aOS(2, 'name')
    ..pPS(3, 'roles')
    ..a<$core.int>(4, 'routeId', $pb.PbFieldType.O3)
    ..a<$1.Timestamp>(5, 'createdAt', $pb.PbFieldType.OM, $1.Timestamp.getDefault, $1.Timestamp.create)
    ..a<$1.Timestamp>(6, 'updatedAt', $pb.PbFieldType.OM, $1.Timestamp.getDefault, $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  User._() : super();
  factory User() => create();
  factory User.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory User.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  User clone() => User()..mergeFromMessage(this);
  User copyWith(void Function(User) updates) => super.copyWith((message) => updates(message as User));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  User createEmptyInstance() => create();
  static $pb.PbList<User> createRepeated() => $pb.PbList<User>();
  static User getDefault() => _defaultInstance ??= create()..freeze();
  static User _defaultInstance;

  $core.int get id => $_get(0, 0);
  set id($core.int v) { $_setSignedInt32(0, v); }
  $core.bool hasId() => $_has(0);
  void clearId() => clearField(1);

  $core.String get name => $_getS(1, '');
  set name($core.String v) { $_setString(1, v); }
  $core.bool hasName() => $_has(1);
  void clearName() => clearField(2);

  $core.List<$core.String> get roles => $_getList(2);

  $core.int get routeId => $_get(3, 0);
  set routeId($core.int v) { $_setSignedInt32(3, v); }
  $core.bool hasRouteId() => $_has(3);
  void clearRouteId() => clearField(4);

  $1.Timestamp get createdAt => $_getN(4);
  set createdAt($1.Timestamp v) { setField(5, v); }
  $core.bool hasCreatedAt() => $_has(4);
  void clearCreatedAt() => clearField(5);

  $1.Timestamp get updatedAt => $_getN(5);
  set updatedAt($1.Timestamp v) { setField(6, v); }
  $core.bool hasUpdatedAt() => $_has(5);
  void clearUpdatedAt() => clearField(6);
}

class ListUsersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListUsersResponse', package: const $pb.PackageName('users'))
    ..pc<User>(1, 'users', $pb.PbFieldType.PM,User.create)
    ..aOS(2, 'nextPageToken')
    ..a<$core.int>(3, 'revision', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListUsersResponse._() : super();
  factory ListUsersResponse() => create();
  factory ListUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ListUsersResponse clone() => ListUsersResponse()..mergeFromMessage(this);
  ListUsersResponse copyWith(void Function(ListUsersResponse) updates) => super.copyWith((message) => updates(message as ListUsersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUsersResponse create() => ListUsersResponse._();
  ListUsersResponse createEmptyInstance() => create();
  static $pb.PbList<ListUsersResponse> createRepeated() => $pb.PbList<ListUsersResponse>();
  static ListUsersResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListUsersResponse _defaultInstance;

  $core.List<User> get users => $_getList(0);

  $core.String get nextPageToken => $_getS(1, '');
  set nextPageToken($core.String v) { $_setString(1, v); }
  $core.bool hasNextPageToken() => $_has(1);
  void clearNextPageToken() => clearField(2);

  $core.int get revision => $_get(2, 0);
  set revision($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasRevision() => $_has(2);
  void clearRevision() => clearField(3);
}

class GetAuthTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthTokenRequest', package: const $pb.PackageName('users'))
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..aOS(3, 'pushToken')
    ..aOS(4, 'accountCode')
    ..hasRequiredFields = false
  ;

  GetAuthTokenRequest._() : super();
  factory GetAuthTokenRequest() => create();
  factory GetAuthTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAuthTokenRequest clone() => GetAuthTokenRequest()..mergeFromMessage(this);
  GetAuthTokenRequest copyWith(void Function(GetAuthTokenRequest) updates) => super.copyWith((message) => updates(message as GetAuthTokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthTokenRequest create() => GetAuthTokenRequest._();
  GetAuthTokenRequest createEmptyInstance() => create();
  static $pb.PbList<GetAuthTokenRequest> createRepeated() => $pb.PbList<GetAuthTokenRequest>();
  static GetAuthTokenRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetAuthTokenRequest _defaultInstance;

  $core.String get email => $_getS(0, '');
  set email($core.String v) { $_setString(0, v); }
  $core.bool hasEmail() => $_has(0);
  void clearEmail() => clearField(1);

  $core.String get password => $_getS(1, '');
  set password($core.String v) { $_setString(1, v); }
  $core.bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);

  $core.String get pushToken => $_getS(2, '');
  set pushToken($core.String v) { $_setString(2, v); }
  $core.bool hasPushToken() => $_has(2);
  void clearPushToken() => clearField(3);

  $core.String get accountCode => $_getS(3, '');
  set accountCode($core.String v) { $_setString(3, v); }
  $core.bool hasAccountCode() => $_has(3);
  void clearAccountCode() => clearField(4);
}

class GetAuthTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetAuthTokenResponse', package: const $pb.PackageName('users'))
    ..aOS(1, 'token')
    ..pPS(2, 'roles')
    ..a<$core.int>(3, 'accountId', $pb.PbFieldType.O3)
    ..aOS(4, 'refreshToken')
    ..a<$core.int>(5, 'userId', $pb.PbFieldType.O3)
    ..aOS(6, 'defaultEmail')
    ..hasRequiredFields = false
  ;

  GetAuthTokenResponse._() : super();
  factory GetAuthTokenResponse() => create();
  factory GetAuthTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAuthTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetAuthTokenResponse clone() => GetAuthTokenResponse()..mergeFromMessage(this);
  GetAuthTokenResponse copyWith(void Function(GetAuthTokenResponse) updates) => super.copyWith((message) => updates(message as GetAuthTokenResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAuthTokenResponse create() => GetAuthTokenResponse._();
  GetAuthTokenResponse createEmptyInstance() => create();
  static $pb.PbList<GetAuthTokenResponse> createRepeated() => $pb.PbList<GetAuthTokenResponse>();
  static GetAuthTokenResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetAuthTokenResponse _defaultInstance;

  $core.String get token => $_getS(0, '');
  set token($core.String v) { $_setString(0, v); }
  $core.bool hasToken() => $_has(0);
  void clearToken() => clearField(1);

  $core.List<$core.String> get roles => $_getList(1);

  $core.int get accountId => $_get(2, 0);
  set accountId($core.int v) { $_setSignedInt32(2, v); }
  $core.bool hasAccountId() => $_has(2);
  void clearAccountId() => clearField(3);

  $core.String get refreshToken => $_getS(3, '');
  set refreshToken($core.String v) { $_setString(3, v); }
  $core.bool hasRefreshToken() => $_has(3);
  void clearRefreshToken() => clearField(4);

  $core.int get userId => $_get(4, 0);
  set userId($core.int v) { $_setSignedInt32(4, v); }
  $core.bool hasUserId() => $_has(4);
  void clearUserId() => clearField(5);

  $core.String get defaultEmail => $_getS(5, '');
  set defaultEmail($core.String v) { $_setString(5, v); }
  $core.bool hasDefaultEmail() => $_has(5);
  void clearDefaultEmail() => clearField(6);
}

class RefreshTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RefreshTokenRequest', package: const $pb.PackageName('users'))
    ..aOS(1, 'refreshToken')
    ..hasRequiredFields = false
  ;

  RefreshTokenRequest._() : super();
  factory RefreshTokenRequest() => create();
  factory RefreshTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RefreshTokenRequest clone() => RefreshTokenRequest()..mergeFromMessage(this);
  RefreshTokenRequest copyWith(void Function(RefreshTokenRequest) updates) => super.copyWith((message) => updates(message as RefreshTokenRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest create() => RefreshTokenRequest._();
  RefreshTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenRequest> createRepeated() => $pb.PbList<RefreshTokenRequest>();
  static RefreshTokenRequest getDefault() => _defaultInstance ??= create()..freeze();
  static RefreshTokenRequest _defaultInstance;

  $core.String get refreshToken => $_getS(0, '');
  set refreshToken($core.String v) { $_setString(0, v); }
  $core.bool hasRefreshToken() => $_has(0);
  void clearRefreshToken() => clearField(1);
}

class RefreshTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RefreshTokenResponse', package: const $pb.PackageName('users'))
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  RefreshTokenResponse._() : super();
  factory RefreshTokenResponse() => create();
  factory RefreshTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RefreshTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RefreshTokenResponse clone() => RefreshTokenResponse()..mergeFromMessage(this);
  RefreshTokenResponse copyWith(void Function(RefreshTokenResponse) updates) => super.copyWith((message) => updates(message as RefreshTokenResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RefreshTokenResponse create() => RefreshTokenResponse._();
  RefreshTokenResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenResponse> createRepeated() => $pb.PbList<RefreshTokenResponse>();
  static RefreshTokenResponse getDefault() => _defaultInstance ??= create()..freeze();
  static RefreshTokenResponse _defaultInstance;

  $core.String get token => $_getS(0, '');
  set token($core.String v) { $_setString(0, v); }
  $core.bool hasToken() => $_has(0);
  void clearToken() => clearField(1);
}

