//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesForm {
  /// Returns a new [PreferencesForm] instance.
  PreferencesForm({
    this.contract,
    this.hidden,
    this.manualDispatch,
    this.required_,
  });

  /// Returns a new [PreferencesForm] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesForm(
      contract: json[r'contract'],
      hidden:
          json[r'hidden'] == null ? null : List<String>.from(json[r'hidden']),
      manualDispatch: json[r'manualDispatch'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
    );
  }

  bool? contract;

  List<String>? hidden;

  bool? manualDispatch;

  List<String>? required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesForm &&
        other.contract == contract &&
        DeepCollectionEquality.unordered().equals(hidden, other.hidden) &&
        other.manualDispatch == manualDispatch &&
        DeepCollectionEquality.unordered().equals(required_, other.required_);
  }

  @override
  int get hashCode =>
      (contract == null ? 0 : contract.hashCode) +
      (hidden == null ? 0 : hidden.hashCode) +
      (manualDispatch == null ? 0 : manualDispatch.hashCode) +
      (required_ == null ? 0 : required_.hashCode);

  static List<PreferencesForm> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesForm>[];
    }

    return json.fold(<PreferencesForm>[],
        (List<PreferencesForm> previousValue, element) {
      final PreferencesForm? object = PreferencesForm.fromJson(element);
      if (object is PreferencesForm) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesForm> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesForm>{};
    }

    return json.entries.fold(<String, PreferencesForm>{},
        (Map<String, PreferencesForm> previousValue, element) {
      final PreferencesForm? object = PreferencesForm.fromJson(element.value);
      if (object is PreferencesForm) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesForm-objects as value to a dart map
  static Map<String, List<PreferencesForm>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesForm>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesForm>>(
          key, PreferencesForm.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesForm[contract=$contract, hidden=$hidden, manualDispatch=$manualDispatch, required_=$required_]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && contract != null) ||
          (keys?.contains(r'contract') ?? false))
        r'contract': contract,
      if ((keys == null && hidden != null) ||
          (keys?.contains(r'hidden') ?? false))
        r'hidden': hidden,
      if ((keys == null && manualDispatch != null) ||
          (keys?.contains(r'manualDispatch') ?? false))
        r'manualDispatch': manualDispatch,
      if ((keys == null && required_ != null) ||
          (keys?.contains(r'required_') ?? false))
        r'required': required_,
    };
  }
}
