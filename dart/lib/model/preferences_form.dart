//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesForm {
  /// Returns a new [PreferencesForm] instance.
  PreferencesForm({
    this.required_ = const [],
  });

  /// Returns a new [PreferencesForm] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesForm(
      required_: List<String>.from(json[r'required'] ?? []),
    );
  }

  List<String>? required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesForm &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode => (required_ == null ? 0 : required_.hashCode);

  static List<PreferencesForm> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesForm>[];
    }
    return json
        .map((value) {
          return PreferencesForm.fromJson(value);
        })
        .whereType<PreferencesForm>()
        .toList();
  }

  static Map<String, PreferencesForm> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesForm>{};
    }

    final map = json.map((key, value) => MapEntry<String, PreferencesForm?>(
        key, PreferencesForm.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PreferencesForm>;
  }

  // maps a json object with a list of PreferencesForm-objects as value to a dart map
  static Map<String, List<PreferencesForm>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PreferencesForm>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PreferencesForm.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PreferencesForm[required_=$required_]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (required_ != null) r'required': required_,
    };
  }
}
