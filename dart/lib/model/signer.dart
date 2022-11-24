//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Signer {
  /// Returns a new [Signer] instance.
  Signer({
    this.embedded,
    this.links,
    this.id,
    this.signature,
    this.state,
    this.type,
  });

  /// Returns a new [Signer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Signer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Signer(
      embedded: InvitationEmbedded.fromJson(json[r'_embedded']),
      links: SignerLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      signature: SignerSignature.fromJson(json[r'signature']),
      state: json[r'state'],
      type: json[r'type'],
    );
  }

  InvitationEmbedded? embedded;

  SignerLinks? links;

  final String? id;

  SignerSignature? signature;

  String? state;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Signer &&
        other.embedded == embedded &&
        other.links == links &&
        other.id == id &&
        other.signature == signature &&
        other.state == state &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (signature == null ? 0 : signature.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<Signer> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Signer>[];
    }

    return json.fold(<Signer>[], (List<Signer> previousValue, element) {
      final Signer? object = Signer.fromJson(element);
      if (object is Signer) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Signer> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Signer>{};
    }

    return json.entries.fold(<String, Signer>{},
        (Map<String, Signer> previousValue, element) {
      final Signer? object = Signer.fromJson(element.value);
      if (object is Signer) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Signer-objects as value to a dart map
  static Map<String, List<Signer>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Signer>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Signer>>(key, Signer.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Signer[embedded=$embedded, links=$links, id=$id, signature=$signature, state=$state, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      if (signature != null) r'signature': signature,
      if (state != null) r'state': state,
      if (type != null) r'type': type,
    };
  }
}
