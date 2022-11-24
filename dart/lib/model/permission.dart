//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Permission {
  /// Instantiate a new enum with the provided [value].
  const Permission._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const fILTERColonALL = Permission._(r'FILTER:ALL');
  static const oRGANIZATIONColonAGENT = Permission._(r'ORGANIZATION:AGENT');
  static const oRGANIZATIONColonMEMBER = Permission._(r'ORGANIZATION:MEMBER');
  static const oRGANIZATIONColonOPERATOR =
      Permission._(r'ORGANIZATION:OPERATOR');
  static const ALL = Permission._(r'ALL');
  static const aNALYTICSColonALL = Permission._(r'ANALYTICS:ALL');
  static const cATEGORYColonALL = Permission._(r'CATEGORY:ALL');
  static const dOCUMENTColonALL = Permission._(r'DOCUMENT:ALL');
  static const eXPORTColonALL = Permission._(r'EXPORT:ALL');
  static const mEMBERCOLLABORATORColonALL =
      Permission._(r'MEMBER_COLLABORATOR:ALL');
  static const mEMBERCONTACTColonALL = Permission._(r'MEMBER_CONTACT:ALL');
  static const oCCUPANTColonALL = Permission._(r'OCCUPANT:ALL');
  static const oPERATIONColonALL = Permission._(r'OPERATION:ALL');
  static const oRGANIZATIONColonALL = Permission._(r'ORGANIZATION:ALL');
  static const pLACEColonALL = Permission._(r'PLACE:ALL');
  static const pUBLICATIONColonALL = Permission._(r'PUBLICATION:ALL');
  static const rEPORTColonALL = Permission._(r'REPORT:ALL');
  static const rEPORTINGColonALL = Permission._(r'REPORTING:ALL');
  static const sERVICEColonALL = Permission._(r'SERVICE:ALL');
  static const NOTE_READ = Permission._(r'NOTE_READ');
  static const NOTE_WRITE = Permission._(r'NOTE_WRITE');

  /// List of all possible values in this [enum][Permission].
  static const values = <Permission>[
    fILTERColonALL,
    oRGANIZATIONColonAGENT,
    oRGANIZATIONColonMEMBER,
    oRGANIZATIONColonOPERATOR,
    ALL,
    aNALYTICSColonALL,
    cATEGORYColonALL,
    dOCUMENTColonALL,
    eXPORTColonALL,
    mEMBERCOLLABORATORColonALL,
    mEMBERCONTACTColonALL,
    oCCUPANTColonALL,
    oPERATIONColonALL,
    oRGANIZATIONColonALL,
    pLACEColonALL,
    pUBLICATIONColonALL,
    rEPORTColonALL,
    rEPORTINGColonALL,
    sERVICEColonALL,
    NOTE_READ,
    NOTE_WRITE,
  ];

  static Permission? fromJson(dynamic value) =>
      PermissionTypeTransformer().decode(value);

  static List<Permission> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return Permission.fromJson(value);
        })
        .whereType<Permission>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [Permission] to String,
/// and [decode] dynamic data back to [Permission].
class PermissionTypeTransformer {
  const PermissionTypeTransformer._();

  factory PermissionTypeTransformer() =>
      _instance ??= PermissionTypeTransformer._();

  String encode(Permission data) => data.value;

  /// Decodes a [dynamic value][data] to a Permission.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  Permission? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'FILTER:ALL':
        return Permission.fILTERColonALL;
      case r'ORGANIZATION:AGENT':
        return Permission.oRGANIZATIONColonAGENT;
      case r'ORGANIZATION:MEMBER':
        return Permission.oRGANIZATIONColonMEMBER;
      case r'ORGANIZATION:OPERATOR':
        return Permission.oRGANIZATIONColonOPERATOR;
      case r'ALL':
        return Permission.ALL;
      case r'ANALYTICS:ALL':
        return Permission.aNALYTICSColonALL;
      case r'CATEGORY:ALL':
        return Permission.cATEGORYColonALL;
      case r'DOCUMENT:ALL':
        return Permission.dOCUMENTColonALL;
      case r'EXPORT:ALL':
        return Permission.eXPORTColonALL;
      case r'MEMBER_COLLABORATOR:ALL':
        return Permission.mEMBERCOLLABORATORColonALL;
      case r'MEMBER_CONTACT:ALL':
        return Permission.mEMBERCONTACTColonALL;
      case r'OCCUPANT:ALL':
        return Permission.oCCUPANTColonALL;
      case r'OPERATION:ALL':
        return Permission.oPERATIONColonALL;
      case r'ORGANIZATION:ALL':
        return Permission.oRGANIZATIONColonALL;
      case r'PLACE:ALL':
        return Permission.pLACEColonALL;
      case r'PUBLICATION:ALL':
        return Permission.pUBLICATIONColonALL;
      case r'REPORT:ALL':
        return Permission.rEPORTColonALL;
      case r'REPORTING:ALL':
        return Permission.rEPORTINGColonALL;
      case r'SERVICE:ALL':
        return Permission.sERVICEColonALL;
      case r'NOTE_READ':
        return Permission.NOTE_READ;
      case r'NOTE_WRITE':
        return Permission.NOTE_WRITE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [PermissionTypeTransformer] instance.
  static PermissionTypeTransformer? _instance;
}
