//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FileJsonhalRead {
  /// Returns a new [FileJsonhalRead] instance.
  FileJsonhalRead({
    this.links,
    this.downloadUrl,
    this.id,
    this.contentType,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [FileJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FileJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      downloadUrl: json[r'downloadUrl'],
      id: json[r'id'],
      contentType:
          FileJsonhalReadContentTypeEnum.fromJson(json[r'contentType']),
      name: json[r'name'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? downloadUrl;

  /// The resource identifier.
  final String? id;

  FileJsonhalReadContentTypeEnum? contentType;

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

    return other is FileJsonhalRead &&
        other.links == links &&
        other.downloadUrl == downloadUrl &&
        other.id == id &&
        other.contentType == contentType &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (downloadUrl == null ? 0 : downloadUrl.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<FileJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FileJsonhalRead>[];
    }

    return json.fold(<FileJsonhalRead>[],
        (List<FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element);
      if (object is FileJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileJsonhalRead>{};
    }

    return json.entries.fold(<String, FileJsonhalRead>{},
        (Map<String, FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element.value);
      if (object is FileJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileJsonhalRead-objects as value to a dart map
  static Map<String, List<FileJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileJsonhalRead>>(
          key, FileJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FileJsonhalRead[links=$links, downloadUrl=$downloadUrl, id=$id, contentType=$contentType, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

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
      if (keys == null || keys.contains(r'downloadUrl'))
        r'downloadUrl': downloadUrl,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'contentType'))
        r'contentType': contentType,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}

class FileJsonhalReadContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FileJsonhalReadContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = FileJsonhalReadContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      FileJsonhalReadContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      FileJsonhalReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashJpeg = FileJsonhalReadContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = FileJsonhalReadContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      FileJsonhalReadContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      FileJsonhalReadContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      FileJsonhalReadContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = FileJsonhalReadContentTypeEnum._(r'image/png');
  static const textSlashPlain = FileJsonhalReadContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      FileJsonhalReadContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      FileJsonhalReadContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      FileJsonhalReadContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][FileJsonhalReadContentTypeEnum].
  static const values = <FileJsonhalReadContentTypeEnum>[
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

  static FileJsonhalReadContentTypeEnum? fromJson(dynamic value) =>
      FileJsonhalReadContentTypeEnumTypeTransformer().decode(value);

  static List<FileJsonhalReadContentTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return FileJsonhalReadContentTypeEnum.fromJson(value);
        })
        .whereType<FileJsonhalReadContentTypeEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [FileJsonhalReadContentTypeEnum] to String,
/// and [decode] dynamic data back to [FileJsonhalReadContentTypeEnum].
class FileJsonhalReadContentTypeEnumTypeTransformer {
  const FileJsonhalReadContentTypeEnumTypeTransformer._();

  factory FileJsonhalReadContentTypeEnumTypeTransformer() =>
      _instance ??= FileJsonhalReadContentTypeEnumTypeTransformer._();

  String encode(FileJsonhalReadContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FileJsonhalReadContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FileJsonhalReadContentTypeEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'text/csv':
        return FileJsonhalReadContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return FileJsonhalReadContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return FileJsonhalReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/jpeg':
        return FileJsonhalReadContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return FileJsonhalReadContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return FileJsonhalReadContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return FileJsonhalReadContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return FileJsonhalReadContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return FileJsonhalReadContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return FileJsonhalReadContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return FileJsonhalReadContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return FileJsonhalReadContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return FileJsonhalReadContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FileJsonhalReadContentTypeEnumTypeTransformer] instance.
  static FileJsonhalReadContentTypeEnumTypeTransformer? _instance;
}
