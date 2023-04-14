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

    return json.fold(<PlanPatch>[], (List<PlanPatch> previousValue, element) {
      final PlanPatch? object = PlanPatch.fromJson(element);
      if (object is PlanPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanPatch>{};
    }

    return json.entries.fold(<String, PlanPatch>{},
        (Map<String, PlanPatch> previousValue, element) {
      final PlanPatch? object = PlanPatch.fromJson(element.value);
      if (object is PlanPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanPatch-objects as value to a dart map
  static Map<String, List<PlanPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanPatch>>(
          key, PlanPatch.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanPatch[name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (name != null) r'name': name,
    };
  }
}
