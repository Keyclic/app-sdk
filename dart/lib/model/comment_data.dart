//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CommentData {
  /// Returns a new [CommentData] instance.
  CommentData({
    @required this.text,
    this.type,
  });

  /// Returns a new [CommentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CommentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CommentData(
      text: json[r'text'],
      type: CommentDataTypeEnum.fromJson(json[r'type']),
    );
  }

  String text;

  CommentDataTypeEnum type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CommentData && other.text == text && other.type == type;
  }

  @override
  int get hashCode =>
      (text == null ? 0 : text.hashCode) + (type == null ? 0 : type.hashCode);

  static List<CommentData> listFromJson(List<dynamic> json) {
    return <CommentData>[
      if (json is List)
        for (dynamic value in json) CommentData.fromJson(value),
    ];
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic> json) {
    return <String, CommentData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CommentData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CommentData-objects as value to a dart map
  static Map<String, List<CommentData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CommentData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CommentData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CommentData[text=$text, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'text': text,
      if (type != null) r'type': type,
    };
  }
}

class CommentDataTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CommentDataTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const comment = CommentDataTypeEnum._(r'Comment');
  static const reminder = CommentDataTypeEnum._(r'Reminder');

  /// List of all possible values in this [enum][CommentDataTypeEnum].
  static const values = <CommentDataTypeEnum>[
    comment,
    reminder,
  ];

  static CommentDataTypeEnum fromJson(dynamic value) =>
      CommentDataTypeEnumTypeTransformer().decode(value);

  static List<CommentDataTypeEnum> listFromJson(List<dynamic> json) {
    return <CommentDataTypeEnum>[
      if (json is List)
        for (dynamic value in json) CommentDataTypeEnum.fromJson(value),
    ];
  }
}

/// Transformation class that can [encode] an instance of [CommentDataTypeEnum] to String,
/// and [decode] dynamic data back to [CommentDataTypeEnum].
class CommentDataTypeEnumTypeTransformer {
  const CommentDataTypeEnumTypeTransformer._();

  factory CommentDataTypeEnumTypeTransformer() =>
      _instance ??= CommentDataTypeEnumTypeTransformer._();

  String encode(CommentDataTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CommentDataTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CommentDataTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'Comment':
        return CommentDataTypeEnum.comment;
      case r'Reminder':
        return CommentDataTypeEnum.reminder;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CommentDataTypeEnumTypeTransformer] instance.
  static CommentDataTypeEnumTypeTransformer _instance;
}
