//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksSelf {
  /// Returns a new [SignerLinksSelf] instance.
  SignerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SignerLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelf(
      href: json[r'href'],
      iriTemplate: SignerLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given signer.
  String? href;

  SignerLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SignerLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SignerLinksSelf>[];
    }

    return json.fold(<SignerLinksSelf>[],
        (List<SignerLinksSelf> previousValue, element) {
      final SignerLinksSelf? object = SignerLinksSelf.fromJson(element);
      if (object is SignerLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksSelf>{};
    }

    return json.entries.fold(<String, SignerLinksSelf>{},
        (Map<String, SignerLinksSelf> previousValue, element) {
      final SignerLinksSelf? object = SignerLinksSelf.fromJson(element.value);
      if (object is SignerLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksSelf-objects as value to a dart map
  static Map<String, List<SignerLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksSelf>>(
          key, SignerLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'SignerLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
