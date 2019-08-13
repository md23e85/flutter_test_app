///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const EnumOrderBy$json = const {
  '1': 'EnumOrderBy',
  '2': const [
    const {'1': 'DESC', '2': 0},
    const {'1': 'ASC', '2': 1},
  ],
};

const ListUsersRequest$json = const {
  '1': 'ListUsersRequest',
  '2': const [
    const {'1': 'route_id', '3': 1, '4': 1, '5': 5, '10': 'routeId'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 14, '6': '.users.EnumOrderBy', '10': 'orderBy'},
    const {'1': 'page_size', '3': 3, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 4, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'since', '3': 5, '4': 1, '5': 5, '10': 'since'},
  ],
};

const CreateUserRequest$json = const {
  '1': 'CreateUserRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'route_id', '3': 3, '4': 1, '5': 5, '10': 'routeId'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
  ],
};

const GetUserRequest$json = const {
  '1': 'GetUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'route_id', '3': 4, '4': 1, '5': 5, '10': 'routeId'},
    const {'1': 'roles', '3': 5, '4': 3, '5': 9, '10': 'roles'},
  ],
};

const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'roles', '3': 3, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'route_id', '3': 4, '4': 1, '5': 5, '10': 'routeId'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

const ListUsersResponse$json = const {
  '1': 'ListUsersResponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.users.User', '10': 'users'},
    const {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
    const {'1': 'revision', '3': 3, '4': 1, '5': 5, '10': 'revision'},
  ],
};

const GetAuthTokenRequest$json = const {
  '1': 'GetAuthTokenRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'push_token', '3': 3, '4': 1, '5': 9, '10': 'pushToken'},
    const {'1': 'account_code', '3': 4, '4': 1, '5': 9, '10': 'accountCode'},
  ],
};

const GetAuthTokenResponse$json = const {
  '1': 'GetAuthTokenResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'roles', '3': 2, '4': 3, '5': 9, '10': 'roles'},
    const {'1': 'account_id', '3': 3, '4': 1, '5': 5, '10': 'accountId'},
    const {'1': 'refresh_token', '3': 4, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'user_id', '3': 5, '4': 1, '5': 5, '10': 'userId'},
    const {'1': 'default_email', '3': 6, '4': 1, '5': 9, '10': 'defaultEmail'},
  ],
};

const RefreshTokenRequest$json = const {
  '1': 'RefreshTokenRequest',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const RefreshTokenResponse$json = const {
  '1': 'RefreshTokenResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

