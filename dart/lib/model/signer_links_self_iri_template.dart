//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksSelfIriTemplate {
  /// Returns a new [SignerLinksSelfIriTemplate] instance.
  SignerLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [SignerLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SignerLinksSelfIriTemplate(
      mapping: SignerLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  SignerLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<SignerLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <SignerLinksSelfIriTemplate>[];
    }

    return json.fold(<SignerLinksSelfIriTemplate>[],
        (List<SignerLinksSelfIriTemplate> previousValue, element) {
      final SignerLinksSelfIriTemplate? object =
          SignerLinksSelfIriTemplate.fromJson(element);
      if (object is SignerLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, SignerLinksSelfIriTemplate>{},
        (Map<String, SignerLinksSelfIriTemplate> previousValue, element) {
      final SignerLinksSelfIriTemplate? object =
          SignerLinksSelfIriTemplate.fromJson(element.value);
      if (object is SignerLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<SignerLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksSelfIriTemplate>>(
          key, SignerLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
