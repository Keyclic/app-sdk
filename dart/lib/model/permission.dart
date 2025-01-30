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

  static const assetEquipmentColonRead = Permission._(r'asset-equipment:read');
  static const assetEquipmentColonWrite =
      Permission._(r'asset-equipment:write');
  static const assetPlaceColonWriteColonCreate =
      Permission._(r'asset-place:write:create');
  static const assetPlaceColonWriteColonEdit =
      Permission._(r'asset-place:write:edit');
  static const assetTypeColonRead = Permission._(r'asset-type:read');
  static const businessHoursColonRead = Permission._(r'business-hours:read');
  static const categoryColonRead = Permission._(r'category:read');
  static const categoryColonWrite = Permission._(r'category:write');
  static const connectorColonRead = Permission._(r'connector:read');
  static const contractColonBillingColonRead =
      Permission._(r'contract:billing:read');
  static const contractColonRead = Permission._(r'contract:read');
  static const contractTypeColonRead = Permission._(r'contract-type:read');
  static const contractColonWrite = Permission._(r'contract:write');
  static const dISPATCHERColonREAD = Permission._(r'DISPATCHER:READ');
  static const dISPATCHERColonWRITE = Permission._(r'DISPATCHER:WRITE');
  static const documentColonTagsColonRead = Permission._(r'document:tags:read');
  static const documentColonTagsColonWrite =
      Permission._(r'document:tags:write');
  static const fILTERColonALL = Permission._(r'FILTER:ALL');
  static const integrationLinkColonRead =
      Permission._(r'integration-link:read');
  static const integrationLinkColonWrite =
      Permission._(r'integration-link:write');
  static const integrationColonRead = Permission._(r'integration:read');
  static const oRGANIZATIONColonAGENT = Permission._(r'ORGANIZATION:AGENT');
  static const oRGANIZATIONColonMEMBER = Permission._(r'ORGANIZATION:MEMBER');
  static const oRGANIZATIONColonOPERATOR =
      Permission._(r'ORGANIZATION:OPERATOR');
  static const aNALYTICSColonALL = Permission._(r'ANALYTICS:ALL');
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
  static const quoteColonRead = Permission._(r'quote:read');
  static const quoteColonTagsColonRead = Permission._(r'quote:tags:read');
  static const quoteColonTagsColonWrite = Permission._(r'quote:tags:write');
  static const quoteColonWriteColonCreate = Permission._(r'quote:write:create');
  static const quoteColonWriteColonDelete = Permission._(r'quote:write:delete');
  static const quoteColonWriteColonEdit = Permission._(r'quote:write:edit');
  static const serviceOfferColonWrite = Permission._(r'service-offer:write');
  static const slaPolicyColonRead = Permission._(r'sla-policy:read');
  static const ticketColonArchivingColonWrite =
      Permission._(r'ticket:archiving:write');
  static const ticketTaskColonCompletedColonWrite =
      Permission._(r'ticket-task:completed:write');
  static const ticketColonRead = Permission._(r'ticket:read');
  static const ticketColonTagsColonRead = Permission._(r'ticket:tags:read');
  static const ticketColonTagsColonWrite = Permission._(r'ticket:tags:write');
  static const ticketColonWrite = Permission._(r'ticket:write');

  /// List of all possible values in this [enum][Permission].
  static const values = <Permission>[
    assetEquipmentColonRead,
    assetEquipmentColonWrite,
    assetPlaceColonWriteColonCreate,
    assetPlaceColonWriteColonEdit,
    assetTypeColonRead,
    businessHoursColonRead,
    categoryColonRead,
    categoryColonWrite,
    connectorColonRead,
    contractColonBillingColonRead,
    contractColonRead,
    contractTypeColonRead,
    contractColonWrite,
    dISPATCHERColonREAD,
    dISPATCHERColonWRITE,
    documentColonTagsColonRead,
    documentColonTagsColonWrite,
    fILTERColonALL,
    integrationLinkColonRead,
    integrationLinkColonWrite,
    integrationColonRead,
    oRGANIZATIONColonAGENT,
    oRGANIZATIONColonMEMBER,
    oRGANIZATIONColonOPERATOR,
    aNALYTICSColonALL,
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
    quoteColonRead,
    quoteColonTagsColonRead,
    quoteColonTagsColonWrite,
    quoteColonWriteColonCreate,
    quoteColonWriteColonDelete,
    quoteColonWriteColonEdit,
    serviceOfferColonWrite,
    slaPolicyColonRead,
    ticketColonArchivingColonWrite,
    ticketTaskColonCompletedColonWrite,
    ticketColonRead,
    ticketColonTagsColonRead,
    ticketColonTagsColonWrite,
    ticketColonWrite,
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
      case r'asset-equipment:read':
        return Permission.assetEquipmentColonRead;
      case r'asset-equipment:write':
        return Permission.assetEquipmentColonWrite;
      case r'asset-place:write:create':
        return Permission.assetPlaceColonWriteColonCreate;
      case r'asset-place:write:edit':
        return Permission.assetPlaceColonWriteColonEdit;
      case r'asset-type:read':
        return Permission.assetTypeColonRead;
      case r'business-hours:read':
        return Permission.businessHoursColonRead;
      case r'category:read':
        return Permission.categoryColonRead;
      case r'category:write':
        return Permission.categoryColonWrite;
      case r'connector:read':
        return Permission.connectorColonRead;
      case r'contract:billing:read':
        return Permission.contractColonBillingColonRead;
      case r'contract:read':
        return Permission.contractColonRead;
      case r'contract-type:read':
        return Permission.contractTypeColonRead;
      case r'contract:write':
        return Permission.contractColonWrite;
      case r'DISPATCHER:READ':
        return Permission.dISPATCHERColonREAD;
      case r'DISPATCHER:WRITE':
        return Permission.dISPATCHERColonWRITE;
      case r'document:tags:read':
        return Permission.documentColonTagsColonRead;
      case r'document:tags:write':
        return Permission.documentColonTagsColonWrite;
      case r'FILTER:ALL':
        return Permission.fILTERColonALL;
      case r'integration-link:read':
        return Permission.integrationLinkColonRead;
      case r'integration-link:write':
        return Permission.integrationLinkColonWrite;
      case r'integration:read':
        return Permission.integrationColonRead;
      case r'ORGANIZATION:AGENT':
        return Permission.oRGANIZATIONColonAGENT;
      case r'ORGANIZATION:MEMBER':
        return Permission.oRGANIZATIONColonMEMBER;
      case r'ORGANIZATION:OPERATOR':
        return Permission.oRGANIZATIONColonOPERATOR;
      case r'ANALYTICS:ALL':
        return Permission.aNALYTICSColonALL;
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
      case r'quote:read':
        return Permission.quoteColonRead;
      case r'quote:tags:read':
        return Permission.quoteColonTagsColonRead;
      case r'quote:tags:write':
        return Permission.quoteColonTagsColonWrite;
      case r'quote:write:create':
        return Permission.quoteColonWriteColonCreate;
      case r'quote:write:delete':
        return Permission.quoteColonWriteColonDelete;
      case r'quote:write:edit':
        return Permission.quoteColonWriteColonEdit;
      case r'service-offer:write':
        return Permission.serviceOfferColonWrite;
      case r'sla-policy:read':
        return Permission.slaPolicyColonRead;
      case r'ticket:archiving:write':
        return Permission.ticketColonArchivingColonWrite;
      case r'ticket-task:completed:write':
        return Permission.ticketTaskColonCompletedColonWrite;
      case r'ticket:read':
        return Permission.ticketColonRead;
      case r'ticket:tags:read':
        return Permission.ticketColonTagsColonRead;
      case r'ticket:tags:write':
        return Permission.ticketColonTagsColonWrite;
      case r'ticket:write':
        return Permission.ticketColonWrite;
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
