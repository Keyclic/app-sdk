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
  static Signer? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Signer(
      embedded: InvitationEmbedded.fromJson(json[r'_embedded']),
      links: SignerLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      signature: SignerSignature.fromJson(json[r'signature']),
      state: SignerStateEnum.fromJson(json[r'state']),
      type: json[r'type'],
    );
  }

  InvitationEmbedded? embedded;

  SignerLinks? links;

  final String? id;

  SignerSignature? signature;

  SignerStateEnum? state;

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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^signature\.').hasMatch(key)))
        r'signature': signature?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^signature\.'))) {
            previousValue.add(element.split(RegExp(r'^signature\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}

class SignerStateEnum {
  /// Instantiate a new enum with the provided [value].
  const SignerStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DONE = SignerStateEnum._(r'DONE');
  static const PENDING = SignerStateEnum._(r'PENDING');
  static const REFUSED = SignerStateEnum._(r'REFUSED');

  /// List of all possible values in this [enum][SignerStateEnum].
  static const values = <SignerStateEnum>[
    DONE,
    PENDING,
    REFUSED,
  ];

  static SignerStateEnum? fromJson(dynamic value) =>
      SignerStateEnumTypeTransformer().decode(value);

  static List<SignerStateEnum> listFromJson(List<dynamic> json) {
    return json
        .map((value) {
          return SignerStateEnum.fromJson(value);
        })
        .whereType<SignerStateEnum>()
        .toList();
  }
}

/// Transformation class that can [encode] an instance of [SignerStateEnum] to String,
/// and [decode] dynamic data back to [SignerStateEnum].
class SignerStateEnumTypeTransformer {
  const SignerStateEnumTypeTransformer._();

  factory SignerStateEnumTypeTransformer() =>
      _instance ??= SignerStateEnumTypeTransformer._();

  String encode(SignerStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SignerStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignerStateEnum? decode(dynamic data, {bool allowNull = true}) {
    switch (data) {
      case r'DONE':
        return SignerStateEnum.DONE;
      case r'PENDING':
        return SignerStateEnum.PENDING;
      case r'REFUSED':
        return SignerStateEnum.REFUSED;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SignerStateEnumTypeTransformer] instance.
  static SignerStateEnumTypeTransformer? _instance;
}
