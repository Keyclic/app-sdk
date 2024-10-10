//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FormOrganizationPreferenceRead {
  /// Returns a new [FormOrganizationPreferenceRead] instance.
  FormOrganizationPreferenceRead({
    this.contract,
    this.hidden,
    this.manualDispatch,
    this.required_,
  });

  /// Returns a new [FormOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FormOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FormOrganizationPreferenceRead(
      contract: json[r'contract'],
      hidden:
          json[r'hidden'] == null ? null : List<String>.from(json[r'hidden']),
      manualDispatch: json[r'manualDispatch'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
    );
  }

  /// Allow authorized user to provide a contract on feedback form.
  bool? contract;

  List<String>? hidden;

  /// Allow authorized user to provide a service to dispatch to on feedback form.
  bool? manualDispatch;

  List<String>? required_;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FormOrganizationPreferenceRead &&
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

  static List<FormOrganizationPreferenceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FormOrganizationPreferenceRead>[];
    }

    return json.fold(<FormOrganizationPreferenceRead>[],
        (List<FormOrganizationPreferenceRead> previousValue, element) {
      final FormOrganizationPreferenceRead? object =
          FormOrganizationPreferenceRead.fromJson(element);
      if (object is FormOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FormOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FormOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, FormOrganizationPreferenceRead>{},
        (Map<String, FormOrganizationPreferenceRead> previousValue, element) {
      final FormOrganizationPreferenceRead? object =
          FormOrganizationPreferenceRead.fromJson(element.value);
      if (object is FormOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FormOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<FormOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FormOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FormOrganizationPreferenceRead>>(
          key, FormOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FormOrganizationPreferenceRead[contract=$contract, hidden=$hidden, manualDispatch=$manualDispatch, required_=$required_]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'contract')) r'contract': contract,
      if (keys == null || keys.contains(r'hidden')) r'hidden': hidden,
      if (keys == null || keys.contains(r'manualDispatch'))
        r'manualDispatch': manualDispatch,
      if (keys == null || keys.contains(r'required_')) r'required': required_,
    };
  }
}
