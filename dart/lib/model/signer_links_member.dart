//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksMember {
  /// Returns a new [SignerLinksMember] instance.
  SignerLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SignerLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SignerLinksMember(
      href: json[r'href'],
      iriTemplate: SignerLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given signer.
  String? href;

  SignerLinksMemberIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SignerLinksMember> listFromJson(Iterable? json) {
    if (json == null) {
      return <SignerLinksMember>[];
    }

    return json.fold(<SignerLinksMember>[],
        (List<SignerLinksMember> previousValue, element) {
      final SignerLinksMember? object = SignerLinksMember.fromJson(element);
      if (object is SignerLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksMember>{};
    }

    return json.entries.fold(<String, SignerLinksMember>{},
        (Map<String, SignerLinksMember> previousValue, element) {
      final SignerLinksMember? object =
          SignerLinksMember.fromJson(element.value);
      if (object is SignerLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksMember-objects as value to a dart map
  static Map<String, List<SignerLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksMember>>(
          key, SignerLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SignerLinksMember[href=$href, iriTemplate=$iriTemplate]';

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
