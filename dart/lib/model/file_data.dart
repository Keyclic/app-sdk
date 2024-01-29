//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FileData {
  /// Returns a new [FileData] instance.
  FileData({
    required this.content,
    required this.contentType,
    required this.name,
  });

  /// Returns a new [FileData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FileData(
      content: json[r'content'],
      contentType: FileDataContentTypeEnum.fromJson(json[r'contentType'])!,
      name: json[r'name'],
    );
  }

  String content;

  FileDataContentTypeEnum contentType;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileData &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode => content.hashCode + contentType.hashCode + name.hashCode;

  static List<FileData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <FileData>[];
    }

    return json.fold(<FileData>[], (List<FileData> previousValue, element) {
      final FileData? object = FileData.fromJson(element);
      if (object is FileData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileData>{};
    }

    return json.entries.fold(<String, FileData>{},
        (Map<String, FileData> previousValue, element) {
      final FileData? object = FileData.fromJson(element.value);
      if (object is FileData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileData-objects as value to a dart map
  static Map<String, List<FileData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileData>>(
          key, FileData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileData[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'content': content,
      r'contentType': contentType,
      r'name': name,
    };
  }
}

class FileDataContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FileDataContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = FileDataContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      FileDataContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      FileDataContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg = FileDataContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = FileDataContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      FileDataContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      FileDataContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      FileDataContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = FileDataContentTypeEnum._(r'image/png');
  static const textSlashPlain = FileDataContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      FileDataContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      FileDataContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      FileDataContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][FileDataContentTypeEnum].
  static const values = <FileDataContentTypeEnum>[
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

  static FileDataContentTypeEnum? fromJson(dynamic value) =>
      FileDataContentTypeEnumTypeTransformer().decode(value);

  static List<FileDataContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FileDataContentTypeEnum.fromJson(value);
        })
        .whereType<FileDataContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FileDataContentTypeEnum] to String,
/// and [decode] dynamic data back to [FileDataContentTypeEnum].
class FileDataContentTypeEnumTypeTransformer {
  const FileDataContentTypeEnumTypeTransformer._();

  factory FileDataContentTypeEnumTypeTransformer() =>
      _instance ??= FileDataContentTypeEnumTypeTransformer._();

  String encode(FileDataContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FileDataContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FileDataContentTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return FileDataContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return FileDataContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return FileDataContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return FileDataContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return FileDataContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return FileDataContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return FileDataContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return FileDataContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return FileDataContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return FileDataContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return FileDataContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return FileDataContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return FileDataContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FileDataContentTypeEnumTypeTransformer] instance.
  static FileDataContentTypeEnumTypeTransformer? _instance;
}
