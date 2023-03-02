//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class FeedbackWorkflowTransitionData {
  /// Returns a new [FeedbackWorkflowTransitionData] instance.
  FeedbackWorkflowTransitionData({
    @required this.transition,
  });

  /// Returns a new [FeedbackWorkflowTransitionData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory FeedbackWorkflowTransitionData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackWorkflowTransitionData(
      transition: FeedbackWorkflowTransitionDataTransitionEnum.fromJson(
          json[r'transition']),
    );
  }

  FeedbackWorkflowTransitionDataTransitionEnum transition;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackWorkflowTransitionData &&
        other.transition == transition;
  }

  @override
  int get hashCode => (transition == null ? 0 : transition.hashCode);

  static List<FeedbackWorkflowTransitionData> listFromJson(List<dynamic> json) {
    return <FeedbackWorkflowTransitionData>[
      if (json is List)
        for (dynamic value in json)
          FeedbackWorkflowTransitionData.fromJson(value),
    ];
  }

  static Map<String, FeedbackWorkflowTransitionData> mapFromJson(
      Map<String, dynamic> json) {
    return <String, FeedbackWorkflowTransitionData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackWorkflowTransitionData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of FeedbackWorkflowTransitionData-objects as value to a dart map
  static Map<String, List<FeedbackWorkflowTransitionData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<FeedbackWorkflowTransitionData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: FeedbackWorkflowTransitionData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'FeedbackWorkflowTransitionData[transition=$transition]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'transition': transition,
    };
  }
}

class FeedbackWorkflowTransitionDataTransitionEnum {
  /// Instantiate a new enum with the provided [value].
  const FeedbackWorkflowTransitionDataTransitionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const process =
      FeedbackWorkflowTransitionDataTransitionEnum._(r'process');
  static const publish =
      FeedbackWorkflowTransitionDataTransitionEnum._(r'publish');

  /// List of all possible values in this [enum][FeedbackWorkflowTransitionDataTransitionEnum].
  static const values = <FeedbackWorkflowTransitionDataTransitionEnum>[
    process,
    publish,
  ];

  static FeedbackWorkflowTransitionDataTransitionEnum fromJson(dynamic value) =>
      FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer()
          .decode(value);

  static List<FeedbackWorkflowTransitionDataTransitionEnum> listFromJson(
      List<dynamic> json) {
    return <FeedbackWorkflowTransitionDataTransitionEnum>[
      if (json is List)
        for (dynamic value in json)
          FeedbackWorkflowTransitionDataTransitionEnum.fromJson(value),
    ];
  }
}

/// Transformation class that can [encode] an instance of [FeedbackWorkflowTransitionDataTransitionEnum] to String,
/// and [decode] dynamic data back to [FeedbackWorkflowTransitionDataTransitionEnum].
class FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer {
  const FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer._();

  factory FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer() =>
      _instance ??=
          FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer._();

  String encode(FeedbackWorkflowTransitionDataTransitionEnum data) =>
      data.value;

  /// Decodes a [dynamic value][data] to a FeedbackWorkflowTransitionDataTransitionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FeedbackWorkflowTransitionDataTransitionEnum decode(dynamic data,
      {bool allowNull}) {
    switch (data) {
      case r'process':
        return FeedbackWorkflowTransitionDataTransitionEnum.process;
      case r'publish':
        return FeedbackWorkflowTransitionDataTransitionEnum.publish;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer] instance.
  static FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer _instance;
}
