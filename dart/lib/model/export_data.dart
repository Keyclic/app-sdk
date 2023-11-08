//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExportData {
  /// Returns a new [ExportData] instance.
  ExportData({
    this.contentType,
    required this.dataSource,
    this.groupBy,
    this.organization,
  });

  /// Returns a new [ExportData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExportData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExportData(
      contentType: ExportDataContentTypeEnum.fromJson(json[r'contentType']),
      dataSource: ExportDataDataSourceEnum.fromJson(json[r'dataSource'])!,
      groupBy: json[r'groupBy'],
      organization: json[r'organization'],
    );
  }

  ExportDataContentTypeEnum? contentType;

  ExportDataDataSourceEnum dataSource;

  String? groupBy;

  String? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExportData &&
        other.contentType == contentType &&
        other.dataSource == dataSource &&
        other.groupBy == groupBy &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      dataSource.hashCode +
      (groupBy == null ? 0 : groupBy.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<ExportData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ExportData>[];
    }

    return json.fold(<ExportData>[], (List<ExportData> previousValue, element) {
      final ExportData? object = ExportData.fromJson(element);
      if (object is ExportData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExportData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExportData>{};
    }

    return json.entries.fold(<String, ExportData>{},
        (Map<String, ExportData> previousValue, element) {
      final ExportData? object = ExportData.fromJson(element.value);
      if (object is ExportData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExportData-objects as value to a dart map
  static Map<String, List<ExportData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExportData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExportData>>(
          key, ExportData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExportData[contentType=$contentType, dataSource=$dataSource, groupBy=$groupBy, organization=$organization]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && contentType != null) ||
          (keys?.contains(r'contentType') ?? false))
        r'contentType': contentType,
      r'dataSource': dataSource,
      if ((keys == null && groupBy != null) ||
          (keys?.contains(r'groupBy') ?? false))
        r'groupBy': groupBy,
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization,
    };
  }
}

class ExportDataContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportDataContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pdf = ExportDataContentTypeEnum._(r'application/pdf');
  static const vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      ExportDataContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');

  /// List of all possible values in this [enum][ExportDataContentTypeEnum].
  static const values = <ExportDataContentTypeEnum>[
    pdf,
    vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet,
  ];

  static ExportDataContentTypeEnum? fromJson(dynamic value) =>
      ExportDataContentTypeEnumTypeTransformer().decode(value);

  static List<ExportDataContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ExportDataContentTypeEnum.fromJson(value);
        })
        .whereType<ExportDataContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportDataContentTypeEnum] to String,
/// and [decode] dynamic data back to [ExportDataContentTypeEnum].
class ExportDataContentTypeEnumTypeTransformer {
  const ExportDataContentTypeEnumTypeTransformer._();

  factory ExportDataContentTypeEnumTypeTransformer() =>
      _instance ??= ExportDataContentTypeEnumTypeTransformer._();

  String encode(ExportDataContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportDataContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportDataContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'application/pdf':
        return ExportDataContentTypeEnum.pdf;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return ExportDataContentTypeEnum
            .vndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportDataContentTypeEnumTypeTransformer] instance.
  static ExportDataContentTypeEnumTypeTransformer? _instance;
}

class ExportDataDataSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportDataDataSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const places = ExportDataDataSourceEnum._(r'/places');
  static const reports = ExportDataDataSourceEnum._(r'/reports');

  /// List of all possible values in this [enum][ExportDataDataSourceEnum].
  static const values = <ExportDataDataSourceEnum>[
    places,
    reports,
  ];

  static ExportDataDataSourceEnum? fromJson(dynamic value) =>
      ExportDataDataSourceEnumTypeTransformer().decode(value);

  static List<ExportDataDataSourceEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return ExportDataDataSourceEnum.fromJson(value);
        })
        .whereType<ExportDataDataSourceEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ExportDataDataSourceEnum] to String,
/// and [decode] dynamic data back to [ExportDataDataSourceEnum].
class ExportDataDataSourceEnumTypeTransformer {
  const ExportDataDataSourceEnumTypeTransformer._();

  factory ExportDataDataSourceEnumTypeTransformer() =>
      _instance ??= ExportDataDataSourceEnumTypeTransformer._();

  String encode(ExportDataDataSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportDataDataSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportDataDataSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'/places':
        return ExportDataDataSourceEnum.places;
      case r'/reports':
        return ExportDataDataSourceEnum.reports;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ExportDataDataSourceEnumTypeTransformer] instance.
  static ExportDataDataSourceEnumTypeTransformer? _instance;
}
