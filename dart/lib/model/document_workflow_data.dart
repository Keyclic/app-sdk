//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class DocumentWorkflowData {
  /// Returns a new [DocumentWorkflowData] instance.
  DocumentWorkflowData({
    @required this.transition,
  });

  /// Returns a new [DocumentWorkflowData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory DocumentWorkflowData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentWorkflowData(
      transition:
          DocumentWorkflowDataTransitionEnum.fromJson(json[r'transition']),
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
  int get hashCode => (transition == null ? 0 : transition.hashCode);

  static List<DocumentWorkflowData> listFromJson(List<dynamic> json) {
    return <DocumentWorkflowData>[
      if (json is List)
        for (dynamic value in json) DocumentWorkflowData.fromJson(value),
    ];
  }

  static Map<String, DocumentWorkflowData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, DocumentWorkflowData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentWorkflowData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of DocumentWorkflowData-objects as value to a dart map
  static Map<String, List<DocumentWorkflowData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<DocumentWorkflowData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: DocumentWorkflowData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'DocumentWorkflowData[transition=$transition]';

  Map<String, dynamic> toJson() {
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

  static DocumentWorkflowDataTransitionEnum fromJson(dynamic value) =>
      DocumentWorkflowDataTransitionEnumTypeTransformer().decode(value);

  static List<DocumentWorkflowDataTransitionEnum> listFromJson(
      List<dynamic> json) {
    return <DocumentWorkflowDataTransitionEnum>[
      if (json is List)
        for (dynamic value in json)
          DocumentWorkflowDataTransitionEnum.fromJson(value),
    ];
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
  DocumentWorkflowDataTransitionEnum decode(dynamic data, {bool allowNull}) {
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
  static DocumentWorkflowDataTransitionEnumTypeTransformer _instance;
}
