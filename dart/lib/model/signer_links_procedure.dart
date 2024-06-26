//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SignerLinksProcedure {
  /// Returns a new [SignerLinksProcedure] instance.
  SignerLinksProcedure({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SignerLinksProcedure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SignerLinksProcedure? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SignerLinksProcedure(
      href: json[r'href'],
      iriTemplate:
          SignerLinksProcedureIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the procedure associated to the given signer.
  String? href;

  SignerLinksProcedureIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksProcedure &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SignerLinksProcedure> listFromJson(Iterable? json) {
    if (json == null) {
      return <SignerLinksProcedure>[];
    }

    return json.fold(<SignerLinksProcedure>[],
        (List<SignerLinksProcedure> previousValue, element) {
      final SignerLinksProcedure? object =
          SignerLinksProcedure.fromJson(element);
      if (object is SignerLinksProcedure) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SignerLinksProcedure> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SignerLinksProcedure>{};
    }

    return json.entries.fold(<String, SignerLinksProcedure>{},
        (Map<String, SignerLinksProcedure> previousValue, element) {
      final SignerLinksProcedure? object =
          SignerLinksProcedure.fromJson(element.value);
      if (object is SignerLinksProcedure) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SignerLinksProcedure-objects as value to a dart map
  static Map<String, List<SignerLinksProcedure>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SignerLinksProcedure>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SignerLinksProcedure>>(
          key, SignerLinksProcedure.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SignerLinksProcedure[href=$href, iriTemplate=$iriTemplate]';

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
