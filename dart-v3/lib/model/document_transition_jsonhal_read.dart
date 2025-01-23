//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class DocumentTransitionJsonhalRead {
  /// Returns a new [DocumentTransitionJsonhalRead] instance.
  DocumentTransitionJsonhalRead({
    this.name,
  });

  /// Returns a new [DocumentTransitionJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentTransitionJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentTransitionJsonhalRead(
      name: DocumentTransitionJsonhalReadNameEnum.fromJson(json[r'name']),
    );
  }

  /// Transition name.
  DocumentTransitionJsonhalReadNameEnum? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentTransitionJsonhalRead && other.name == name;
  }

  @override
  int get hashCode => (name == null ? 0 : name.hashCode);

  static List<DocumentTransitionJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentTransitionJsonhalRead>[];
    }

    return json.fold(<DocumentTransitionJsonhalRead>[],
        (List<DocumentTransitionJsonhalRead> previousValue, element) {
      final DocumentTransitionJsonhalRead? object =
          DocumentTransitionJsonhalRead.fromJson(element);
      if (object is DocumentTransitionJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentTransitionJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentTransitionJsonhalRead>{};
    }

    return json.entries.fold(<String, DocumentTransitionJsonhalRead>{},
        (Map<String, DocumentTransitionJsonhalRead> previousValue, element) {
      final DocumentTransitionJsonhalRead? object =
          DocumentTransitionJsonhalRead.fromJson(element.value);
      if (object is DocumentTransitionJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentTransitionJsonhalRead-objects as value to a dart map
  static Map<String, List<DocumentTransitionJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentTransitionJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentTransitionJsonhalRead>>(
          key, DocumentTransitionJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentTransitionJsonhalRead[name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}

/// Transition name.
class DocumentTransitionJsonhalReadNameEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentTransitionJsonhalReadNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const review = DocumentTransitionJsonhalReadNameEnum._(r'review');
  static const publish = DocumentTransitionJsonhalReadNameEnum._(r'publish');

  /// List of all possible values in this [enum][DocumentTransitionJsonhalReadNameEnum].
  static const values = <DocumentTransitionJsonhalReadNameEnum>[
    review,
    publish,
  ];

  static DocumentTransitionJsonhalReadNameEnum? fromJson(dynamic value) =>
      DocumentTransitionJsonhalReadNameEnumTypeTransformer().decode(value);

  static List<DocumentTransitionJsonhalReadNameEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return DocumentTransitionJsonhalReadNameEnum.fromJson(value);
        })
        .whereType<DocumentTransitionJsonhalReadNameEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DocumentTransitionJsonhalReadNameEnum] to String,
/// and [decode] dynamic data back to [DocumentTransitionJsonhalReadNameEnum].
class DocumentTransitionJsonhalReadNameEnumTypeTransformer {
  const DocumentTransitionJsonhalReadNameEnumTypeTransformer._();

  factory DocumentTransitionJsonhalReadNameEnumTypeTransformer() =>
      _instance ??= DocumentTransitionJsonhalReadNameEnumTypeTransformer._();

  String encode(DocumentTransitionJsonhalReadNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentTransitionJsonhalReadNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentTransitionJsonhalReadNameEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'review':
        return DocumentTransitionJsonhalReadNameEnum.review;
      case r'publish':
        return DocumentTransitionJsonhalReadNameEnum.publish;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DocumentTransitionJsonhalReadNameEnumTypeTransformer] instance.
  static DocumentTransitionJsonhalReadNameEnumTypeTransformer? _instance;
}
