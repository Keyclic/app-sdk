//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinksPlanIriTemplateMapping {
  /// Returns a new [MarkerLinksPlanIriTemplateMapping] instance.
  MarkerLinksPlanIriTemplateMapping({
    this.plan,
  });

  /// Returns a new [MarkerLinksPlanIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinksPlanIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinksPlanIriTemplateMapping(
      plan: json[r'plan'],
    );
  }

  String? plan;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinksPlanIriTemplateMapping && other.plan == plan;
  }

  @override
  int get hashCode => (plan == null ? 0 : plan.hashCode);

  static List<MarkerLinksPlanIriTemplateMapping> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <MarkerLinksPlanIriTemplateMapping>[];
    }

    return json.fold(<MarkerLinksPlanIriTemplateMapping>[],
        (List<MarkerLinksPlanIriTemplateMapping> previousValue, element) {
      final MarkerLinksPlanIriTemplateMapping? object =
          MarkerLinksPlanIriTemplateMapping.fromJson(element);
      if (object is MarkerLinksPlanIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerLinksPlanIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinksPlanIriTemplateMapping>{};
    }

    return json.entries.fold(<String, MarkerLinksPlanIriTemplateMapping>{},
        (Map<String, MarkerLinksPlanIriTemplateMapping> previousValue,
            element) {
      final MarkerLinksPlanIriTemplateMapping? object =
          MarkerLinksPlanIriTemplateMapping.fromJson(element.value);
      if (object is MarkerLinksPlanIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerLinksPlanIriTemplateMapping-objects as value to a dart map
  static Map<String, List<MarkerLinksPlanIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerLinksPlanIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerLinksPlanIriTemplateMapping>>(
          key, MarkerLinksPlanIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerLinksPlanIriTemplateMapping[plan=$plan]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && plan != null) || (keys?.contains(r'plan') ?? false))
        r'plan': plan,
    };
  }
}
