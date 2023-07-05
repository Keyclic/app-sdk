//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FileCreateFileCommandWrite {
  /// Returns a new [FileCreateFileCommandWrite] instance.
  FileCreateFileCommandWrite({
    required this.content,
    this.contentType,
    this.name,
  });

  /// Returns a new [FileCreateFileCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileCreateFileCommandWrite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FileCreateFileCommandWrite(
      content: json[r'content'],
      contentType: FileCreateFileCommandWriteContentTypeEnum.fromJson(
          json[r'contentType']),
      name: json[r'name'],
    );
  }

  String content;

  FileCreateFileCommandWriteContentTypeEnum? contentType;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileCreateFileCommandWrite &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      content.hashCode +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<FileCreateFileCommandWrite> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileCreateFileCommandWrite>[];
    }

    return json.fold(<FileCreateFileCommandWrite>[],
        (List<FileCreateFileCommandWrite> previousValue, element) {
      final FileCreateFileCommandWrite? object =
          FileCreateFileCommandWrite.fromJson(element);
      if (object is FileCreateFileCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileCreateFileCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileCreateFileCommandWrite>{};
    }

    return json.entries.fold(<String, FileCreateFileCommandWrite>{},
        (Map<String, FileCreateFileCommandWrite> previousValue, element) {
      final FileCreateFileCommandWrite? object =
          FileCreateFileCommandWrite.fromJson(element.value);
      if (object is FileCreateFileCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileCreateFileCommandWrite-objects as value to a dart map
  static Map<String, List<FileCreateFileCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileCreateFileCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileCreateFileCommandWrite>>(
          key, FileCreateFileCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileCreateFileCommandWrite[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'content': content,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}

class FileCreateFileCommandWriteContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FileCreateFileCommandWriteContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const applicationSlashJson =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/json');
  static const applicationSlashMsword =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/msword');
  static const applicationSlashOctetStream =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/pdf');
  static const applicationSlashVndPeriodMsExcel =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      FileCreateFileCommandWriteContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      FileCreateFileCommandWriteContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const applicationSlashZip =
      FileCreateFileCommandWriteContentTypeEnum._(r'application/zip');
  static const imageSlashGif =
      FileCreateFileCommandWriteContentTypeEnum._(r'image/gif');
  static const imageSlashJpeg =
      FileCreateFileCommandWriteContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg =
      FileCreateFileCommandWriteContentTypeEnum._(r'image/jpg');
  static const imageSlashPng =
      FileCreateFileCommandWriteContentTypeEnum._(r'image/png');
  static const textSlashCsv =
      FileCreateFileCommandWriteContentTypeEnum._(r'text/csv');
  static const textSlashPlain =
      FileCreateFileCommandWriteContentTypeEnum._(r'text/plain');

  /// List of all possible values in this [enum][FileCreateFileCommandWriteContentTypeEnum].
  static const values = <FileCreateFileCommandWriteContentTypeEnum>[
    applicationSlashJson,
    applicationSlashMsword,
    applicationSlashOctetStream,
    applicationSlashPdf,
    applicationSlashVndPeriodMsExcel,
    applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet,
    applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument,
    applicationSlashZip,
    imageSlashGif,
    imageSlashJpeg,
    imageSlashJpg,
    imageSlashPng,
    textSlashCsv,
    textSlashPlain,
  ];

  static FileCreateFileCommandWriteContentTypeEnum? fromJson(dynamic value) =>
      FileCreateFileCommandWriteContentTypeEnumTypeTransformer().decode(value);

  static List<FileCreateFileCommandWriteContentTypeEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return FileCreateFileCommandWriteContentTypeEnum.fromJson(value);
        })
        .whereType<FileCreateFileCommandWriteContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FileCreateFileCommandWriteContentTypeEnum] to String,
/// and [decode] dynamic data back to [FileCreateFileCommandWriteContentTypeEnum].
class FileCreateFileCommandWriteContentTypeEnumTypeTransformer {
  const FileCreateFileCommandWriteContentTypeEnumTypeTransformer._();

  factory FileCreateFileCommandWriteContentTypeEnumTypeTransformer() =>
      _instance ??=
          FileCreateFileCommandWriteContentTypeEnumTypeTransformer._();

  String encode(FileCreateFileCommandWriteContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FileCreateFileCommandWriteContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FileCreateFileCommandWriteContentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'application/json':
        return FileCreateFileCommandWriteContentTypeEnum.applicationSlashJson;
      case r'application/msword':
        return FileCreateFileCommandWriteContentTypeEnum.applicationSlashMsword;
      case r'application/octet-stream':
        return FileCreateFileCommandWriteContentTypeEnum
            .applicationSlashOctetStream;
      case r'application/pdf':
        return FileCreateFileCommandWriteContentTypeEnum.applicationSlashPdf;
      case r'application/vnd.ms-excel':
        return FileCreateFileCommandWriteContentTypeEnum
            .applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return FileCreateFileCommandWriteContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return FileCreateFileCommandWriteContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'application/zip':
        return FileCreateFileCommandWriteContentTypeEnum.applicationSlashZip;
      case r'image/gif':
        return FileCreateFileCommandWriteContentTypeEnum.imageSlashGif;
      case r'image/jpeg':
        return FileCreateFileCommandWriteContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return FileCreateFileCommandWriteContentTypeEnum.imageSlashJpg;
      case r'image/png':
        return FileCreateFileCommandWriteContentTypeEnum.imageSlashPng;
      case r'text/csv':
        return FileCreateFileCommandWriteContentTypeEnum.textSlashCsv;
      case r'text/plain':
        return FileCreateFileCommandWriteContentTypeEnum.textSlashPlain;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FileCreateFileCommandWriteContentTypeEnumTypeTransformer] instance.
  static FileCreateFileCommandWriteContentTypeEnumTypeTransformer? _instance;
}
