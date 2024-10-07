//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ExportJsonhalRead {
  /// Returns a new [ExportJsonhalRead] instance.
  ExportJsonhalRead({
    this.links,
    this.id,
    this.contentType =
        const ExportJsonhalReadContentTypeEnum._('application/vnd.ms-excel'),
    this.downloadUrl,
    this.expiredAt,
    this.groupBy,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ExportJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExportJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExportJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      id: json[r'id'],
      contentType:
          ExportJsonhalReadContentTypeEnum.fromJson(json[r'contentType'])!,
      downloadUrl: json[r'downloadUrl'],
      expiredAt: mapToDateTime(json[r'expiredAt']),
      groupBy: ExportJsonhalReadGroupByEnum.fromJson(json[r'groupBy']),
      name: json[r'name'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  /// The resource identifier.
  final String? id;

  ExportJsonhalReadContentTypeEnum contentType;

  String? downloadUrl;

  final DateTime? expiredAt;

  ExportJsonhalReadGroupByEnum? groupBy;

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

    return other is ExportJsonhalRead &&
        other.links == links &&
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
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      contentType.hashCode +
      (downloadUrl == null ? 0 : downloadUrl.hashCode) +
      (expiredAt == null ? 0 : expiredAt.hashCode) +
      (groupBy == null ? 0 : groupBy.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ExportJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExportJsonhalRead>[];
    }

    return json.fold(<ExportJsonhalRead>[],
        (List<ExportJsonhalRead> previousValue, element) {
      final ExportJsonhalRead? object = ExportJsonhalRead.fromJson(element);
      if (object is ExportJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExportJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExportJsonhalRead>{};
    }

    return json.entries.fold(<String, ExportJsonhalRead>{},
        (Map<String, ExportJsonhalRead> previousValue, element) {
      final ExportJsonhalRead? object =
          ExportJsonhalRead.fromJson(element.value);
      if (object is ExportJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExportJsonhalRead-objects as value to a dart map
  static Map<String, List<ExportJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExportJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExportJsonhalRead>>(
          key, ExportJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExportJsonhalRead[links=$links, id=$id, contentType=$contentType, downloadUrl=$downloadUrl, expiredAt=$expiredAt, groupBy=$groupBy, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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

class ExportJsonhalReadContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportJsonhalReadContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = ExportJsonhalReadContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      ExportJsonhalReadContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      ExportJsonhalReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg =
      ExportJsonhalReadContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = ExportJsonhalReadContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      ExportJsonhalReadContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      ExportJsonhalReadContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      ExportJsonhalReadContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = ExportJsonhalReadContentTypeEnum._(r'image/png');
  static const textSlashPlain =
      ExportJsonhalReadContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      ExportJsonhalReadContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      ExportJsonhalReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      ExportJsonhalReadContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][ExportJsonhalReadContentTypeEnum].
  static const values = <ExportJsonhalReadContentTypeEnum>[
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

  static ExportJsonhalReadContentTypeEnum? fromJson(dynamic value) =>
      ExportJsonhalReadContentTypeEnumTypeTransformer().decode(value);

  static List<ExportJsonhalReadContentTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ExportJsonhalReadContentTypeEnum.fromJson(value);
        })
        .whereType<ExportJsonhalReadContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportJsonhalReadContentTypeEnum] to String,
/// and [decode] dynamic data back to [ExportJsonhalReadContentTypeEnum].
class ExportJsonhalReadContentTypeEnumTypeTransformer {
  const ExportJsonhalReadContentTypeEnumTypeTransformer._();

  factory ExportJsonhalReadContentTypeEnumTypeTransformer() =>
      _instance ??= ExportJsonhalReadContentTypeEnumTypeTransformer._();

  String encode(ExportJsonhalReadContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportJsonhalReadContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportJsonhalReadContentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return ExportJsonhalReadContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return ExportJsonhalReadContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return ExportJsonhalReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return ExportJsonhalReadContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return ExportJsonhalReadContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return ExportJsonhalReadContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return ExportJsonhalReadContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return ExportJsonhalReadContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return ExportJsonhalReadContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return ExportJsonhalReadContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return ExportJsonhalReadContentTypeEnum
            .applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return ExportJsonhalReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return ExportJsonhalReadContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportJsonhalReadContentTypeEnumTypeTransformer] instance.
  static ExportJsonhalReadContentTypeEnumTypeTransformer? _instance;
}

class ExportJsonhalReadGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportJsonhalReadGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const category = ExportJsonhalReadGroupByEnum._(r'category');
  static const place = ExportJsonhalReadGroupByEnum._(r'place');

  /// List of all possible values in this [enum][ExportJsonhalReadGroupByEnum].
  static const values = <ExportJsonhalReadGroupByEnum>[
    category,
    place,
  ];

  static ExportJsonhalReadGroupByEnum? fromJson(dynamic value) =>
      ExportJsonhalReadGroupByEnumTypeTransformer().decode(value);

  static List<ExportJsonhalReadGroupByEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ExportJsonhalReadGroupByEnum.fromJson(value);
        })
        .whereType<ExportJsonhalReadGroupByEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportJsonhalReadGroupByEnum] to String,
/// and [decode] dynamic data back to [ExportJsonhalReadGroupByEnum].
class ExportJsonhalReadGroupByEnumTypeTransformer {
  const ExportJsonhalReadGroupByEnumTypeTransformer._();

  factory ExportJsonhalReadGroupByEnumTypeTransformer() =>
      _instance ??= ExportJsonhalReadGroupByEnumTypeTransformer._();

  String encode(ExportJsonhalReadGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportJsonhalReadGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportJsonhalReadGroupByEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'category':
        return ExportJsonhalReadGroupByEnum.category;
      case r'place':
        return ExportJsonhalReadGroupByEnum.place;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportJsonhalReadGroupByEnumTypeTransformer] instance.
  static ExportJsonhalReadGroupByEnumTypeTransformer? _instance;
}
