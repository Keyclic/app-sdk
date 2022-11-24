//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OccupantLinksSelfIriTemplateMapping {
  /// Returns a new [OccupantLinksSelfIriTemplateMapping] instance.
  OccupantLinksSelfIriTemplateMapping({
    this.occupant,
  });

  /// Returns a new [OccupantLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OccupantLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OccupantLinksSelfIriTemplateMapping(
      occupant: json[r'occupant'],
    );
  }

  String? occupant;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksSelfIriTemplateMapping &&
        other.occupant == occupant;
  }

  @override
  int get hashCode => (occupant == null ? 0 : occupant.hashCode);

  static List<OccupantLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <OccupantLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<OccupantLinksSelfIriTemplateMapping>[],
        (List<OccupantLinksSelfIriTemplateMapping> previousValue, element) {
      final OccupantLinksSelfIriTemplateMapping? object =
          OccupantLinksSelfIriTemplateMapping.fromJson(element);
      if (object is OccupantLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OccupantLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OccupantLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, OccupantLinksSelfIriTemplateMapping>{},
        (Map<String, OccupantLinksSelfIriTemplateMapping> previousValue,
            element) {
      final OccupantLinksSelfIriTemplateMapping? object =
          OccupantLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is OccupantLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OccupantLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OccupantLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OccupantLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OccupantLinksSelfIriTemplateMapping>>(
          key, OccupantLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OccupantLinksSelfIriTemplateMapping[occupant=$occupant]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (occupant != null) r'occupant': occupant,
    };
  }
}
