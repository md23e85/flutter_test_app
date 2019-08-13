///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class EnumOrderBy extends $pb.ProtobufEnum {
  static const EnumOrderBy DESC = EnumOrderBy._(0, 'DESC');
  static const EnumOrderBy ASC = EnumOrderBy._(1, 'ASC');

  static const $core.List<EnumOrderBy> values = <EnumOrderBy> [
    DESC,
    ASC,
  ];

  static final $core.Map<$core.int, EnumOrderBy> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EnumOrderBy valueOf($core.int value) => _byValue[value];

  const EnumOrderBy._($core.int v, $core.String n) : super(v, n);
}

