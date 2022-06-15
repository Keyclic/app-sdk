//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ProcedureWorkflowData {
  /// Returns a new [ProcedureWorkflowData] instance.
  ProcedureWorkflowData({
    required this.transition,
  });

  /// Returns a new [ProcedureWorkflowData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProcedureWorkflowData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ProcedureWorkflowData(
      transition:
          ProcedureWorkflowDataTransitionEnum.fromJson(json[r'transition'])!,
    );
  }

  ProcedureWorkflowDataTransitionEnum transition;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ProcedureWorkflowData && other.transition == transition;
  }

  @override
  int get hashCode => transition.hashCode;

  static List<ProcedureWorkflowData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ProcedureWorkflowData>[];
    }
    return json
        .map((value) {
          return ProcedureWorkflowData.fromJson(value);
        })
        .whereType<ProcedureWorkflowData>()
        .toList();
  }

  static Map<String, ProcedureWorkflowData> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ProcedureWorkflowData>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ProcedureWorkflowData?>(
            key, ProcedureWorkflowData.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ProcedureWorkflowData>;
  }

  // maps a json object with a list of ProcedureWorkflowData-objects as value to a dart map
  static Map<String, List<ProcedureWorkflowData>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ProcedureWorkflowData>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ProcedureWorkflowData.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ProcedureWorkflowData[transition=$transition]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      r'transition': transition,
    };
  }
}

class ProcedureWorkflowDataTransitionEnum {
  /// Instantiate a new enum with the provided [value].
  const ProcedureWorkflowDataTransitionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const activate = ProcedureWorkflowDataTransitionEnum._(r'activate');

  /// List of all possible values in this [enum][ProcedureWorkflowDataTransitionEnum].
  static const values = <ProcedureWorkflowDataTransitionEnum>[
    activate,
  ];

  static ProcedureWorkflowDataTransitionEnum? fromJson(dynamic value) =>
      ProcedureWorkflowDataTransitionEnumTypeTransformer().decode(value);

  static List<ProcedureWorkflowDataTransitionEnum> listFromJson(
      List<dynamic> json) {
    return json
        .map((value) {
          return ProcedureWorkflowDataTransitionEnum.fromJson(value);
        })
        .whereType<ProcedureWorkflowDataTransitionEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [ProcedureWorkflowDataTransitionEnum] to String,
/// and [decode] dynamic data back to [ProcedureWorkflowDataTransitionEnum].
class ProcedureWorkflowDataTransitionEnumTypeTransformer {
  const ProcedureWorkflowDataTransitionEnumTypeTransformer._();

  factory ProcedureWorkflowDataTransitionEnumTypeTransformer() =>
      _instance ??= ProcedureWorkflowDataTransitionEnumTypeTransformer._();

  String encode(ProcedureWorkflowDataTransitionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProcedureWorkflowDataTransitionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProcedureWorkflowDataTransitionEnum? decode(dynamic data,
      {bool allowNull = true}) {
    switch (data) {
      case r'activate':
        return ProcedureWorkflowDataTransitionEnum.activate;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProcedureWorkflowDataTransitionEnumTypeTransformer] instance.
  static ProcedureWorkflowDataTransitionEnumTypeTransformer? _instance;
}
