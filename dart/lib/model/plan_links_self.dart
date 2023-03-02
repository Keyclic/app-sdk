//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PlanLinksSelf {
  /// Returns a new [PlanLinksSelf] instance.
  PlanLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PlanLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlanLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PlanLinksSelf(
      href: json[r'href'],
      iriTemplate: PlanLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given plan.
  String? href;

  PlanLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlanLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PlanLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlanLinksSelf>[];
    }

    return json.fold(<PlanLinksSelf>[],
        (List<PlanLinksSelf> previousValue, element) {
      final PlanLinksSelf? object = PlanLinksSelf.fromJson(element);
      if (object is PlanLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlanLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlanLinksSelf>{};
    }

    return json.entries.fold(<String, PlanLinksSelf>{},
        (Map<String, PlanLinksSelf> previousValue, element) {
      final PlanLinksSelf? object = PlanLinksSelf.fromJson(element.value);
      if (object is PlanLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlanLinksSelf-objects as value to a dart map
  static Map<String, List<PlanLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlanLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlanLinksSelf>>(
          key, PlanLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlanLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
