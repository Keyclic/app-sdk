//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ExportRead {
  /// Returns a new [ExportRead] instance.
  ExportRead({
    this.id,
    this.contentType =
        const ExportReadContentTypeEnum._('application/vnd.ms-excel'),
    this.downloadUrl,
    this.expiredAt,
    this.groupBy,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ExportRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExportRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExportRead(
      id: json[r'id'],
      contentType: ExportReadContentTypeEnum.fromJson(json[r'contentType'])!,
      downloadUrl: json[r'downloadUrl'],
      expiredAt: mapToDateTime(json[r'expiredAt']),
      groupBy: ExportReadGroupByEnum.fromJson(json[r'groupBy']),
      name: json[r'name'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  /// The resource identifier.
  final String? id;

  ExportReadContentTypeEnum contentType;

  String? downloadUrl;

  final DateTime? expiredAt;

  ExportReadGroupByEnum? groupBy;

  String? name;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExportRead &&
        other.id == id &&
        other.contentType == contentType &&
        other.downloadUrl == downloadUrl &&
        other.expiredAt == expiredAt &&
        other.groupBy == groupBy &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      contentType.hashCode +
      (downloadUrl == null ? 0 : downloadUrl.hashCode) +
      (expiredAt == null ? 0 : expiredAt.hashCode) +
      (groupBy == null ? 0 : groupBy.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ExportRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExportRead>[];
    }

    return json.fold(<ExportRead>[], (List<ExportRead> previousValue, element) {
      final ExportRead? object = ExportRead.fromJson(element);
      if (object is ExportRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExportRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExportRead>{};
    }

    return json.entries.fold(<String, ExportRead>{},
        (Map<String, ExportRead> previousValue, element) {
      final ExportRead? object = ExportRead.fromJson(element.value);
      if (object is ExportRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExportRead-objects as value to a dart map
  static Map<String, List<ExportRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExportRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExportRead>>(
          key, ExportRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExportRead[id=$id, contentType=$contentType, downloadUrl=$downloadUrl, expiredAt=$expiredAt, groupBy=$groupBy, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'contentType': contentType,
      if (keys == null || keys.contains(r'downloadUrl'))
        r'downloadUrl': downloadUrl,
      if (keys == null || keys.contains(r'expiredAt'))
        r'expiredAt': expiredAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'groupBy')) r'groupBy': groupBy,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

class ExportReadContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportReadContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = ExportReadContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      ExportReadContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      ExportReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg = ExportReadContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = ExportReadContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      ExportReadContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      ExportReadContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      ExportReadContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = ExportReadContentTypeEnum._(r'image/png');
  static const textSlashPlain = ExportReadContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      ExportReadContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      ExportReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      ExportReadContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][ExportReadContentTypeEnum].
  static const values = <ExportReadContentTypeEnum>[
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

  static ExportReadContentTypeEnum? fromJson(dynamic value) =>
      ExportReadContentTypeEnumTypeTransformer().decode(value);

  static List<ExportReadContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ExportReadContentTypeEnum.fromJson(value);
        })
        .whereType<ExportReadContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportReadContentTypeEnum] to String,
/// and [decode] dynamic data back to [ExportReadContentTypeEnum].
class ExportReadContentTypeEnumTypeTransformer {
  const ExportReadContentTypeEnumTypeTransformer._();

  factory ExportReadContentTypeEnumTypeTransformer() =>
      _instance ??= ExportReadContentTypeEnumTypeTransformer._();

  String encode(ExportReadContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportReadContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportReadContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return ExportReadContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return ExportReadContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return ExportReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return ExportReadContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return ExportReadContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return ExportReadContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return ExportReadContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return ExportReadContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return ExportReadContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return ExportReadContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return ExportReadContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return ExportReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return ExportReadContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportReadContentTypeEnumTypeTransformer] instance.
  static ExportReadContentTypeEnumTypeTransformer? _instance;
}

class ExportReadGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportReadGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const category = ExportReadGroupByEnum._(r'category');
  static const place = ExportReadGroupByEnum._(r'place');

  /// List of all possible values in this [enum][ExportReadGroupByEnum].
  static const values = <ExportReadGroupByEnum>[
    category,
    place,
  ];

  static ExportReadGroupByEnum? fromJson(dynamic value) =>
      ExportReadGroupByEnumTypeTransformer().decode(value);

  static List<ExportReadGroupByEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ExportReadGroupByEnum.fromJson(value);
        })
        .whereType<ExportReadGroupByEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportReadGroupByEnum] to String,
/// and [decode] dynamic data back to [ExportReadGroupByEnum].
class ExportReadGroupByEnumTypeTransformer {
  const ExportReadGroupByEnumTypeTransformer._();

  factory ExportReadGroupByEnumTypeTransformer() =>
      _instance ??= ExportReadGroupByEnumTypeTransformer._();

  String encode(ExportReadGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportReadGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportReadGroupByEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'category':
        return ExportReadGroupByEnum.category;
      case r'place':
        return ExportReadGroupByEnum.place;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportReadGroupByEnumTypeTransformer] instance.
  static ExportReadGroupByEnumTypeTransformer? _instance;
}
