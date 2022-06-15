//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanPatch {
  /// Returns a new [PlanPatch] instance.
  PlanPatch({
    this.name,
  });

  /// Returns a new [PlanPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanPatch(
      name: json[r'name'],
    );
  }

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanPatch && other.name == name;
  }

  @override
  int get hashCode => (name == null ? 0 : name.hashCode);

  static List<PlanPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanPatch>[];
    }
    return json
        .map((value) {
          return PlanPatch.fromJson(value);
        })
        .whereType<PlanPatch>()
        .toList();
  }

  static Map<String, PlanPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanPatch>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PlanPatch?>(key, PlanPatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PlanPatch>;
  }

  // maps a json object with a list of PlanPatch-objects as value to a dart map
  static Map<String, List<PlanPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PlanPatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PlanPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PlanPatch[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
    };
  }
}
