//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Binary {
  /// Returns a new [Binary] instance.
  Binary({
    this.content,
    this.contentType,
    this.name,
  });

  /// Returns a new [Binary] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Binary.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Binary(
      content: json[r'content'],
      contentType: BinaryContentTypeEnum.fromJson(json[r'contentType']),
      name: json[r'name'],
    );
  }

  String content;

  BinaryContentTypeEnum contentType;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Binary &&
        other.content == content &&
        other.contentType == contentType &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (content == null ? 0 : content.hashCode) +
      (contentType == null ? 0 : contentType.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<Binary> listFromJson(List<dynamic> json) {
    return <Binary>[
      if (json is List)
        for (dynamic value in json) Binary.fromJson(value),
    ];
  }

  static Map<String, Binary> mapFromJson(Map<String, dynamic> json) {
    return <String, Binary>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Binary.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Binary-objects as value to a dart map
  static Map<String, List<Binary>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Binary>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Binary.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Binary[content=$content, contentType=$contentType, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (content != null) r'content': content,
      if (contentType != null) r'contentType': contentType,
      if (name != null) r'name': name,
    };
  }
}

class BinaryContentTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const BinaryContentTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const textSlashCsv = BinaryContentTypeEnum._(r'text/csv');
  static const applicationSlashMsword =
      BinaryContentTypeEnum._(r'application/msword');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument =
      BinaryContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.wordprocessingml.document');
  static const imageSlashGif = BinaryContentTypeEnum._(r'image/gif');
  static const imageSlashJpeg = BinaryContentTypeEnum._(r'image/jpeg');
  static const imageSlashJpg = BinaryContentTypeEnum._(r'image/jpg');
  static const applicationSlashJson =
      BinaryContentTypeEnum._(r'application/json');
  static const applicationSlashOctetStream =
      BinaryContentTypeEnum._(r'application/octet-stream');
  static const applicationSlashPdf =
      BinaryContentTypeEnum._(r'application/pdf');
  static const imageSlashPng = BinaryContentTypeEnum._(r'image/png');
  static const textSlashPlain = BinaryContentTypeEnum._(r'text/plain');
  static const applicationSlashVndPeriodMsExcel =
      BinaryContentTypeEnum._(r'application/vnd.ms-excel');
  static const applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet =
      BinaryContentTypeEnum._(
          r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
  static const applicationSlashZip =
      BinaryContentTypeEnum._(r'application/zip');

  /// List of all possible values in this [enum][BinaryContentTypeEnum].
  static const values = <BinaryContentTypeEnum>[
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

  static BinaryContentTypeEnum fromJson(dynamic value) =>
      BinaryContentTypeEnumTypeTransformer().decode(value);

  static List<BinaryContentTypeEnum> listFromJson(List<dynamic> json) {
    return <BinaryContentTypeEnum>[
      if (json is List)
        for (dynamic value in json) BinaryContentTypeEnum.fromJson(value),
    ];
  }
}

/// Transformation class that can [encode] an instance of [BinaryContentTypeEnum] to String,
/// and [decode] dynamic data back to [BinaryContentTypeEnum].
class BinaryContentTypeEnumTypeTransformer {
  const BinaryContentTypeEnumTypeTransformer._();

  factory BinaryContentTypeEnumTypeTransformer() =>
      _instance ??= BinaryContentTypeEnumTypeTransformer._();

  String encode(BinaryContentTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a BinaryContentTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BinaryContentTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'text/csv':
        return BinaryContentTypeEnum.textSlashCsv;
      case r'application/msword':
        return BinaryContentTypeEnum.applicationSlashMsword;
      case r'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
        return BinaryContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodWordprocessingmlPeriodDocument;
      case r'image/gif':
        return BinaryContentTypeEnum.imageSlashGif;
      case r'image/jpeg':
        return BinaryContentTypeEnum.imageSlashJpeg;
      case r'image/jpg':
        return BinaryContentTypeEnum.imageSlashJpg;
      case r'application/json':
        return BinaryContentTypeEnum.applicationSlashJson;
      case r'application/octet-stream':
        return BinaryContentTypeEnum.applicationSlashOctetStream;
      case r'application/pdf':
        return BinaryContentTypeEnum.applicationSlashPdf;
      case r'image/png':
        return BinaryContentTypeEnum.imageSlashPng;
      case r'text/plain':
        return BinaryContentTypeEnum.textSlashPlain;
      case r'application/vnd.ms-excel':
        return BinaryContentTypeEnum.applicationSlashVndPeriodMsExcel;
      case r'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
        return BinaryContentTypeEnum
            .applicationSlashVndPeriodOpenxmlformatsOfficedocumentPeriodSpreadsheetmlPeriodSheet;
      case r'application/zip':
        return BinaryContentTypeEnum.applicationSlashZip;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [BinaryContentTypeEnumTypeTransformer] instance.
  static BinaryContentTypeEnumTypeTransformer _instance;
}
