//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CategoryPatch {
  /// Returns a new [CategoryPatch] instance.
  CategoryPatch({
    this.identificationNumber,
    this.name,
  });

  /// Returns a new [CategoryPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CategoryPatch(
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
    );
  }

  String? identificationNumber;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryPatch &&
        other.identificationNumber == identificationNumber &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<CategoryPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CategoryPatch>[];
    }
    return json
        .map((value) {
          return CategoryPatch.fromJson(value);
        })
        .whereType<CategoryPatch>()
        .toList();
  }

  static Map<String, CategoryPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CategoryPatch>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CategoryPatch?>(key, CategoryPatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CategoryPatch>;
  }

  // maps a json object with a list of CategoryPatch-objects as value to a dart map
  static Map<String, List<CategoryPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CategoryPatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CategoryPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CategoryPatch[identificationNumber=$identificationNumber, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (identificationNumber != null)
        r'identificationNumber': identificationNumber,
      if (name != null) r'name': name,
    };
  }
}
