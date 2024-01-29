//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackWorkflowTransitionData {
  /// Returns a new [FeedbackWorkflowTransitionData] instance.
  FeedbackWorkflowTransitionData({
    required this.transition,
  });

  /// Returns a new [FeedbackWorkflowTransitionData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackWorkflowTransitionData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackWorkflowTransitionData(
      transition: FeedbackWorkflowTransitionDataTransitionEnum.fromJson(
          json[r'transition'])!,
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
  int get hashCode => transition.hashCode;

  static List<FeedbackWorkflowTransitionData> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <FeedbackWorkflowTransitionData>[];
    }

    return json.fold(<FeedbackWorkflowTransitionData>[],
        (List<FeedbackWorkflowTransitionData> previousValue, element) {
      final FeedbackWorkflowTransitionData? object =
          FeedbackWorkflowTransitionData.fromJson(element);
      if (object is FeedbackWorkflowTransitionData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackWorkflowTransitionData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackWorkflowTransitionData>{};
    }

    return json.entries.fold(<String, FeedbackWorkflowTransitionData>{},
        (Map<String, FeedbackWorkflowTransitionData> previousValue, element) {
      final FeedbackWorkflowTransitionData? object =
          FeedbackWorkflowTransitionData.fromJson(element.value);
      if (object is FeedbackWorkflowTransitionData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackWorkflowTransitionData-objects as value to a dart map
  static Map<String, List<FeedbackWorkflowTransitionData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackWorkflowTransitionData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackWorkflowTransitionData>>(
          key, FeedbackWorkflowTransitionData.listFromJson(value));
    });
  }

  @override
  String toString() => 'FeedbackWorkflowTransitionData[transition=$transition]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
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

  static FeedbackWorkflowTransitionDataTransitionEnum? fromJson(
          dynamic value) =>
      FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer()
          .decode(value);

  static List<FeedbackWorkflowTransitionDataTransitionEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return FeedbackWorkflowTransitionDataTransitionEnum.fromJson(value);
        })
        .whereType<FeedbackWorkflowTransitionDataTransitionEnum>()
        .toList();
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
  FeedbackWorkflowTransitionDataTransitionEnum? decode(dynamic data,
      {bool allowNull = true}) {
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
  static FeedbackWorkflowTransitionDataTransitionEnumTypeTransformer? _instance;
}
