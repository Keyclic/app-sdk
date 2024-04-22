//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RegisterData {
  /// Returns a new [RegisterData] instance.
  RegisterData({
    this.agreement,
    required this.email,
    this.invitation,
    required this.password,
  });

  /// Returns a new [RegisterData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RegisterData? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RegisterData(
      agreement: RegisterDataAgreement.fromJson(json[r'agreement']),
      email: json[r'email'],
      invitation: json[r'invitation'],
      password: json[r'password'],
    );
  }

  RegisterDataAgreement? agreement;

  String email;

  String? invitation;

  String password;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RegisterData &&
        other.agreement == agreement &&
        other.email == email &&
        other.invitation == invitation &&
        other.password == password;
  }

  @override
  int get hashCode =>
      (agreement == null ? 0 : agreement.hashCode) +
      email.hashCode +
      (invitation == null ? 0 : invitation.hashCode) +
      password.hashCode;

  static List<RegisterData> listFromJson(Iterable? json) {
    if (json == null) {
      return <RegisterData>[];
    }

    return json.fold(<RegisterData>[],
        (List<RegisterData> previousValue, element) {
      final RegisterData? object = RegisterData.fromJson(element);
      if (object is RegisterData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RegisterData>{};
    }

    return json.entries.fold(<String, RegisterData>{},
        (Map<String, RegisterData> previousValue, element) {
      final RegisterData? object = RegisterData.fromJson(element.value);
      if (object is RegisterData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RegisterData-objects as value to a dart map
  static Map<String, List<RegisterData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RegisterData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RegisterData>>(
          key, RegisterData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RegisterData[agreement=$agreement, email=$email, invitation=$invitation, password=$password]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^agreement\.').hasMatch(key)))
        r'agreement': agreement?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^agreement\.'))) {
            previousValue.add(element.split(RegExp(r'^agreement\.')).last);
          }

          return previousValue;
        })),
      r'email': email,
      if (keys == null || keys.contains(r'invitation'))
        r'invitation': invitation,
      r'password': password,
    };
  }
}
