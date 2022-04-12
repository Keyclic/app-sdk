//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PreferencesForm {
  /// Returns a new [PreferencesForm] instance.
  PreferencesForm({
    this.required_ = const [],
  });

  /// Returns a new [PreferencesForm] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PreferencesForm.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PreferencesForm(
      required_: List<String>.from(json[r'required'] ?? []),
    );
  }

  List<String> required_;

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

  static List<PreferencesForm> listFromJson(List<dynamic> json) {
    return <PreferencesForm>[
      if (json is List)
        for (dynamic value in json) PreferencesForm.fromJson(value),
    ];
  }

  static Map<String, PreferencesForm> mapFromJson(Map<String, dynamic> json) {
    return <String, PreferencesForm>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PreferencesForm.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PreferencesForm-objects as value to a dart map
  static Map<String, List<PreferencesForm>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PreferencesForm>>{
      if (json is Map)
        for (final entry in json.entries)
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
