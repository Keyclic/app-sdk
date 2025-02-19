//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentEmbeddedFile {
  /// Returns a new [DocumentEmbeddedFile] instance.
  DocumentEmbeddedFile({
    this.contentType,
    this.name,
  });

  /// Returns a new [DocumentEmbeddedFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentEmbeddedFile? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentEmbeddedFile(
      contentType:
          DocumentEmbeddedFileContentTypeEnum.fromJson(json[r'contentType']),
      name: json[r'name'],
    );
  }

  DocumentEmbeddedFileContentTypeEnum? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentEmbeddedFile &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<DocumentEmbeddedFile> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentEmbeddedFile>[];
    }

    return json.fold(<DocumentEmbeddedFile>[],
        (List<DocumentEmbeddedFile> previousValue, element) {
      final DocumentEmbeddedFile? object =
          DocumentEmbeddedFile.fromJson(element);
      if (object is DocumentEmbeddedFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentEmbeddedFile> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentEmbeddedFile>{};
    }

    return json.entries.fold(<String, DocumentEmbeddedFile>{},
        (Map<String, DocumentEmbeddedFile> previousValue, element) {
      final DocumentEmbeddedFile? object =
          DocumentEmbeddedFile.fromJson(element.value);
      if (object is DocumentEmbeddedFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentEmbeddedFile-objects as value to a dart map
  static Map<String, List<DocumentEmbeddedFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentEmbeddedFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentEmbeddedFile>>(
          key, DocumentEmbeddedFile.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'DocumentEmbeddedFile[contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contentType'))
        r'contentType': contentType,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}

class DocumentEmbeddedFileContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentEmbeddedFileContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv =
      DocumentEmbeddedFileContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      DocumentEmbeddedFileContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      DocumentEmbeddedFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg =
      DocumentEmbeddedFileContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg =
      DocumentEmbeddedFileContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      DocumentEmbeddedFileContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      DocumentEmbeddedFileContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      DocumentEmbeddedFileContentTypeEnum._(r'application/pdf');
  static const imageSlashPng =
      DocumentEmbeddedFileContentTypeEnum._(r'image/png');
  static const textSlashPlain =
      DocumentEmbeddedFileContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      DocumentEmbeddedFileContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      DocumentEmbeddedFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      DocumentEmbeddedFileContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][DocumentEmbeddedFileContentTypeEnum].
  static const values = <DocumentEmbeddedFileContentTypeEnum>[
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

  static DocumentEmbeddedFileContentTypeEnum? fromJson(dynamic value) =>
      DocumentEmbeddedFileContentTypeEnumTypeTransformer().decode(value);

  static List<DocumentEmbeddedFileContentTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return DocumentEmbeddedFileContentTypeEnum.fromJson(value);
        })
        .whereType<DocumentEmbeddedFileContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DocumentEmbeddedFileContentTypeEnum] to String,
/// and [decode] dynamic data back to [DocumentEmbeddedFileContentTypeEnum].
class DocumentEmbeddedFileContentTypeEnumTypeTransformer {
  const DocumentEmbeddedFileContentTypeEnumTypeTransformer._();

  factory DocumentEmbeddedFileContentTypeEnumTypeTransformer() =>
      _instance ??= DocumentEmbeddedFileContentTypeEnumTypeTransformer._();

  String encode(DocumentEmbeddedFileContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentEmbeddedFileContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentEmbeddedFileContentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return DocumentEmbeddedFileContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return DocumentEmbeddedFileContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return DocumentEmbeddedFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return DocumentEmbeddedFileContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return DocumentEmbeddedFileContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return DocumentEmbeddedFileContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return DocumentEmbeddedFileContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return DocumentEmbeddedFileContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return DocumentEmbeddedFileContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return DocumentEmbeddedFileContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return DocumentEmbeddedFileContentTypeEnum
            .applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return DocumentEmbeddedFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return DocumentEmbeddedFileContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DocumentEmbeddedFileContentTypeEnumTypeTransformer] instance.
  static DocumentEmbeddedFileContentTypeEnumTypeTransformer? _instance;
}
