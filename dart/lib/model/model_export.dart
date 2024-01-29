//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ModelExport {
  /// Returns a new [ModelExport] instance.
  ModelExport({
    required this.contentType,
    this.createdAt,
    this.groupBy,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [ModelExport] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ModelExport? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return ModelExport(
      contentType: ModelExportContentTypeEnum.fromJson(json[r'contentType'])!,
      createdAt: createdAt,
      groupBy: ModelExportGroupByEnum.fromJson(json[r'groupBy']),
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ModelExportContentTypeEnum contentType;

  final DateTime? createdAt;

  ModelExportGroupByEnum? groupBy;

  final String? id;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ModelExport &&
        other.contentType == contentType &&
        other.createdAt == createdAt &&
        other.groupBy == groupBy &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      contentType.hashCode +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (groupBy == null ? 0 : groupBy.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ModelExport> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ModelExport>[];
    }

    return json.fold(<ModelExport>[],
        (List<ModelExport> previousValue, element) {
      final ModelExport? object = ModelExport.fromJson(element);
      if (object is ModelExport) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ModelExport> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ModelExport>{};
    }

    return json.entries.fold(<String, ModelExport>{},
        (Map<String, ModelExport> previousValue, element) {
      final ModelExport? object = ModelExport.fromJson(element.value);
      if (object is ModelExport) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ModelExport-objects as value to a dart map
  static Map<String, List<ModelExport>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ModelExport>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ModelExport>>(
          key, ModelExport.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ModelExport[contentType=$contentType, createdAt=$createdAt, groupBy=$groupBy, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'contentType': contentType,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'groupBy')) r'groupBy': groupBy,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

class ModelExportContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ModelExportContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = ModelExportContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      ModelExportContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      ModelExportContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg = ModelExportContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = ModelExportContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      ModelExportContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      ModelExportContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      ModelExportContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = ModelExportContentTypeEnum._(r'image/png');
  static const textSlashPlain = ModelExportContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      ModelExportContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      ModelExportContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      ModelExportContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][ModelExportContentTypeEnum].
  static const values = <ModelExportContentTypeEnum>[
    textSlashCsv,
    applicationSlashMsword,
    applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument,
    imageSlashJpeg,
    imageSlashJpg,
    applicationSlashJson,
    applicationSlashOctetStream,
    applicationSlashPdf,
    imageSlashPng,
    textSlashPlain,
    applicationSlashVndPeriodMsExcel,
    applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet,
    applicationSlashZip,
  ];

  static ModelExportContentTypeEnum? fromJson(dynamic value) =>
      ModelExportContentTypeEnumTypeTransformer().decode(value);

  static List<ModelExportContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ModelExportContentTypeEnum.fromJson(value);
        })
        .whereType<ModelExportContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ModelExportContentTypeEnum] to String,
/// and [decode] dynamic data back to [ModelExportContentTypeEnum].
class ModelExportContentTypeEnumTypeTransformer {
  const ModelExportContentTypeEnumTypeTransformer._();

  factory ModelExportContentTypeEnumTypeTransformer() =>
      _instance ??= ModelExportContentTypeEnumTypeTransformer._();

  String encode(ModelExportContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelExportContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelExportContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return ModelExportContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return ModelExportContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return ModelExportContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return ModelExportContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return ModelExportContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return ModelExportContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return ModelExportContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return ModelExportContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return ModelExportContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return ModelExportContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return ModelExportContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return ModelExportContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return ModelExportContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ModelExportContentTypeEnumTypeTransformer] instance.
  static ModelExportContentTypeEnumTypeTransformer? _instance;
}

class ModelExportGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const ModelExportGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const asset = ModelExportGroupByEnum._(r'asset');
  static const category = ModelExportGroupByEnum._(r'category');

  /// List of all possible values in this [enum][ModelExportGroupByEnum].
  static const values = <ModelExportGroupByEnum>[
    asset,
    category,
  ];

  static ModelExportGroupByEnum? fromJson(dynamic value) =>
      ModelExportGroupByEnumTypeTransformer().decode(value);

  static List<ModelExportGroupByEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ModelExportGroupByEnum.fromJson(value);
        })
        .whereType<ModelExportGroupByEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ModelExportGroupByEnum] to String,
/// and [decode] dynamic data back to [ModelExportGroupByEnum].
class ModelExportGroupByEnumTypeTransformer {
  const ModelExportGroupByEnumTypeTransformer._();

  factory ModelExportGroupByEnumTypeTransformer() =>
      _instance ??= ModelExportGroupByEnumTypeTransformer._();

  String encode(ModelExportGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ModelExportGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ModelExportGroupByEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'asset':
        return ModelExportGroupByEnum.asset;
      case r'category':
        return ModelExportGroupByEnum.category;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ModelExportGroupByEnumTypeTransformer] instance.
  static ModelExportGroupByEnumTypeTransformer? _instance;
}
