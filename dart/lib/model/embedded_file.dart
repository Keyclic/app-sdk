//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class EmbeddedFile {
  /// Returns a new [EmbeddedFile] instance.
  EmbeddedFile({
    this.contentType,
    this.name,
  });

  /// Returns a new [EmbeddedFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EmbeddedFile? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EmbeddedFile(
      contentType: EmbeddedFileContentTypeEnum.fromJson(json[r'contentType']),
      name: json[r'name'],
    );
  }

  EmbeddedFileContentTypeEnum? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EmbeddedFile &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<EmbeddedFile> listFromJson(Iterable? json) {
    if (json == null) {
      return <EmbeddedFile>[];
    }

    return json.fold(<EmbeddedFile>[],
        (List<EmbeddedFile> previousValue, element) {
      final EmbeddedFile? object = EmbeddedFile.fromJson(element);
      if (object is EmbeddedFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EmbeddedFile> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EmbeddedFile>{};
    }

    return json.entries.fold(<String, EmbeddedFile>{},
        (Map<String, EmbeddedFile> previousValue, element) {
      final EmbeddedFile? object = EmbeddedFile.fromJson(element.value);
      if (object is EmbeddedFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EmbeddedFile-objects as value to a dart map
  static Map<String, List<EmbeddedFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EmbeddedFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EmbeddedFile>>(
          key, EmbeddedFile.listFromJson(value));
    });
  }

  @override
  String toString() => 'EmbeddedFile[contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contentType'))
        r'contentType': contentType,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}

class EmbeddedFileContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmbeddedFileContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = EmbeddedFileContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      EmbeddedFileContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      EmbeddedFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg = EmbeddedFileContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = EmbeddedFileContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      EmbeddedFileContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      EmbeddedFileContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      EmbeddedFileContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = EmbeddedFileContentTypeEnum._(r'image/png');
  static const textSlashPlain = EmbeddedFileContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      EmbeddedFileContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      EmbeddedFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      EmbeddedFileContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][EmbeddedFileContentTypeEnum].
  static const values = <EmbeddedFileContentTypeEnum>[
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

  static EmbeddedFileContentTypeEnum? fromJson(dynamic value) =>
      EmbeddedFileContentTypeEnumTypeTransformer().decode(value);

  static List<EmbeddedFileContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return EmbeddedFileContentTypeEnum.fromJson(value);
        })
        .whereType<EmbeddedFileContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [EmbeddedFileContentTypeEnum] to String,
/// and [decode] dynamic data back to [EmbeddedFileContentTypeEnum].
class EmbeddedFileContentTypeEnumTypeTransformer {
  const EmbeddedFileContentTypeEnumTypeTransformer._();

  factory EmbeddedFileContentTypeEnumTypeTransformer() =>
      _instance ??= EmbeddedFileContentTypeEnumTypeTransformer._();

  String encode(EmbeddedFileContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmbeddedFileContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmbeddedFileContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return EmbeddedFileContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return EmbeddedFileContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return EmbeddedFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return EmbeddedFileContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return EmbeddedFileContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return EmbeddedFileContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return EmbeddedFileContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return EmbeddedFileContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return EmbeddedFileContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return EmbeddedFileContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return EmbeddedFileContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return EmbeddedFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return EmbeddedFileContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [EmbeddedFileContentTypeEnumTypeTransformer] instance.
  static EmbeddedFileContentTypeEnumTypeTransformer? _instance;
}
