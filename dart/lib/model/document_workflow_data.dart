//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class DocumentWorkflowData {
  /// Returns a new [DocumentWorkflowData] instance.
  DocumentWorkflowData({
    required this.transition,
  });

  /// Returns a new [DocumentWorkflowData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DocumentWorkflowData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return DocumentWorkflowData(
      transition:
          DocumentWorkflowDataTransitionEnum.fromJson(json[r'transition'])!,
    );
  }

  DocumentWorkflowDataTransitionEnum transition;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentWorkflowData && other.transition == transition;
  }

  @override
  int get hashCode => transition.hashCode;

  static List<DocumentWorkflowData> listFromJson(Iterable? json) {
    if (json == null) {
      return <DocumentWorkflowData>[];
    }

    return json.fold(<DocumentWorkflowData>[],
        (List<DocumentWorkflowData> previousValue, element) {
      final DocumentWorkflowData? object =
          DocumentWorkflowData.fromJson(element);
      if (object is DocumentWorkflowData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, DocumentWorkflowData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, DocumentWorkflowData>{};
    }

    return json.entries.fold(<String, DocumentWorkflowData>{},
        (Map<String, DocumentWorkflowData> previousValue, element) {
      final DocumentWorkflowData? object =
          DocumentWorkflowData.fromJson(element.value);
      if (object is DocumentWorkflowData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of DocumentWorkflowData-objects as value to a dart map
  static Map<String, List<DocumentWorkflowData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<DocumentWorkflowData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<DocumentWorkflowData>>(
          key, DocumentWorkflowData.listFromJson(value));
    });
  }

  @override
  String toString() => 'DocumentWorkflowData[transition=$transition]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'transition': transition,
    };
  }
}

class DocumentWorkflowDataTransitionEnum {
  /// Instantiate a new enum with the provided [value].
  const DocumentWorkflowDataTransitionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const publish = DocumentWorkflowDataTransitionEnum._(r'publish');
  static const review = DocumentWorkflowDataTransitionEnum._(r'review');

  /// List of all possible values in this [enum][DocumentWorkflowDataTransitionEnum].
  static const values = <DocumentWorkflowDataTransitionEnum>[
    publish,
    review,
  ];

  static DocumentWorkflowDataTransitionEnum? fromJson(dynamic value) =>
      DocumentWorkflowDataTransitionEnumTypeTransformer().decode(value);

  static List<DocumentWorkflowDataTransitionEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return DocumentWorkflowDataTransitionEnum.fromJson(value);
        })
        .whereType<DocumentWorkflowDataTransitionEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [DocumentWorkflowDataTransitionEnum] to String,
/// and [decode] dynamic data back to [DocumentWorkflowDataTransitionEnum].
class DocumentWorkflowDataTransitionEnumTypeTransformer {
  const DocumentWorkflowDataTransitionEnumTypeTransformer._();

  factory DocumentWorkflowDataTransitionEnumTypeTransformer() =>
      _instance ??= DocumentWorkflowDataTransitionEnumTypeTransformer._();

  String encode(DocumentWorkflowDataTransitionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DocumentWorkflowDataTransitionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DocumentWorkflowDataTransitionEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'publish':
        return DocumentWorkflowDataTransitionEnum.publish;
      case r'review':
        return DocumentWorkflowDataTransitionEnum.review;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DocumentWorkflowDataTransitionEnumTypeTransformer] instance.
  static DocumentWorkflowDataTransitionEnumTypeTransformer? _instance;
}
