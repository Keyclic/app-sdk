//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CommentData {
  /// Returns a new [CommentData] instance.
  CommentData({
    required this.text,
    this.type,
  });

  /// Returns a new [CommentData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CommentData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CommentData(
      text: json[r'text'],
      type: CommentDataTypeEnum.fromJson(json[r'type']),
    );
  }

  String text;

  CommentDataTypeEnum? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CommentData && other.text == text && other.type == type;
  }

  @override
  int get hashCode => text.hashCode + (type == null ? 0 : type.hashCode);

  static List<CommentData> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <CommentData>[];
    }

    return json.fold(<CommentData>[],
        (List<CommentData> previousValue, element) {
      final CommentData? object = CommentData.fromJson(element);
      if (object is CommentData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CommentData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CommentData>{};
    }

    return json.entries.fold(<String, CommentData>{},
        (Map<String, CommentData> previousValue, element) {
      final CommentData? object = CommentData.fromJson(element.value);
      if (object is CommentData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CommentData-objects as value to a dart map
  static Map<String, List<CommentData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CommentData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CommentData>>(
          key, CommentData.listFromJson(value));
    });
  }

  @override
  String toString() => 'CommentData[text=$text, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      r'text': text,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
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

  static CommentDataTypeEnum? fromJson(dynamic value) =>
      CommentDataTypeEnumTypeTransformer().decode(value);

  static List<CommentDataTypeEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return CommentDataTypeEnum.fromJson(value);
        })
        .whereType<CommentDataTypeEnum>()
        .toList();
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
  CommentDataTypeEnum? decode(dynamic data, {bool allowNull = true}) {
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
  static CommentDataTypeEnumTypeTransformer? _instance;
}
