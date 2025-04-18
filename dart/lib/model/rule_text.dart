//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleText {
  /// Returns a new [RuleText] instance.
  RuleText({
    this.format,
    this.value,
  });

  /// Returns a new [RuleText] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleText? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RuleText(
      format: json[r'format'],
      value: json[r'value'],
    );
  }

  String? format;

  String? value;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleText && other.format == format && other.value == value;
  }

  @override
  int get hashCode =>
      (format == null ? 0 : format.hashCode) +
      (value == null ? 0 : value.hashCode);

  static List<RuleText> listFromJson(Iterable? json) {
    if (json == null) {
      return <RuleText>[];
    }

    return json.fold(<RuleText>[], (List<RuleText> previousValue, element) {
      final RuleText? object = RuleText.fromJson(element);
      if (object is RuleText) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleText> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleText>{};
    }

    return json.entries.fold(<String, RuleText>{},
        (Map<String, RuleText> previousValue, element) {
      final RuleText? object = RuleText.fromJson(element.value);
      if (object is RuleText) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleText-objects as value to a dart map
  static Map<String, List<RuleText>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleText>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleText>>(
          key, RuleText.listFromJson(value));
    });
  }

  @override
  String toString() => 'RuleText[format=$format, value=$value]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'format')) r'format': format,
      if (keys == null || keys.contains(r'value')) r'value': value,
    };
  }
}
