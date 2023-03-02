//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentFile {
  /// Returns a new [DocumentFile] instance.
  DocumentFile({
    this.contentType,
    this.name,
  });

  /// Returns a new [DocumentFile] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DocumentFile(
      contentType: DocumentFileContentTypeEnum.fromJson(json[r'contentType']),
      name: json[r'name'],
    );
  }

  DocumentFileContentTypeEnum? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentFile &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<DocumentFile> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <DocumentFile>[];
    }

    return json.fold(<DocumentFile>[],
        (List<DocumentFile> previousValue, element) {
      final DocumentFile? object = DocumentFile.fromJson(element);
      if (object is DocumentFile) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentFile> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentFile>{};
    }

    return json.entries.fold(<String, DocumentFile>{},
        (Map<String, DocumentFile> previousValue, element) {
      final DocumentFile? object = DocumentFile.fromJson(element.value);
      if (object is DocumentFile) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentFile-objects as value to a dart map
  static Map<String, List<DocumentFile>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentFile>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentFile>>(
          key, DocumentFile.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentFile[contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}

class DocumentFileContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentFileContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = DocumentFileContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      DocumentFileContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      DocumentFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashGif = DocumentFileContentTypeEnum._(r'image/gif');
  static const imageSlashJpeg = DocumentFileContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = DocumentFileContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      DocumentFileContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      DocumentFileContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      DocumentFileContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = DocumentFileContentTypeEnum._(r'image/png');
  static const textSlashPlain = DocumentFileContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      DocumentFileContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      DocumentFileContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      DocumentFileContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][DocumentFileContentTypeEnum].
  static const values = <DocumentFileContentTypeEnum>[
    textSlashCsv,
    applicationSlashMsword,
    applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument,
    imageSlashGif,
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

  static DocumentFileContentTypeEnum? fromJson(dynamic value) =>
      DocumentFileContentTypeEnumTypeTransformer().decode(value);

  static List<DocumentFileContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return DocumentFileContentTypeEnum.fromJson(value);
        })
        .whereType<DocumentFileContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DocumentFileContentTypeEnum] to String,
/// and [decode] dynamic data back to [DocumentFileContentTypeEnum].
class DocumentFileContentTypeEnumTypeTransformer {
  const DocumentFileContentTypeEnumTypeTransformer._();

  factory DocumentFileContentTypeEnumTypeTransformer() =>
      _instance ??= DocumentFileContentTypeEnumTypeTransformer._();

  String encode(DocumentFileContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentFileContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentFileContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return DocumentFileContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return DocumentFileContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return DocumentFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/gif':
        return DocumentFileContentTypeEnum.imageSlashGif;
      case r'image/jpeg':
        return DocumentFileContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return DocumentFileContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return DocumentFileContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return DocumentFileContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return DocumentFileContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return DocumentFileContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return DocumentFileContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return DocumentFileContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return DocumentFileContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return DocumentFileContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DocumentFileContentTypeEnumTypeTransformer] instance.
  static DocumentFileContentTypeEnumTypeTransformer? _instance;
}
