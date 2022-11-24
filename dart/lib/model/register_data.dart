//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class RegisterData {
  /// Returns a new [RegisterData] instance.
  RegisterData({
    this.agreement,
    @required this.email,
    this.invitation,
    @required this.password,
  });

  /// Returns a new [RegisterData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory RegisterData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return RegisterData(
      agreement: RegisterDataAgreement.fromJson(json[r'agreement']),
      email: json[r'email'],
      invitation: json[r'invitation'],
      password: json[r'password'],
    );
  }

  RegisterDataAgreement agreement;

  String email;

  String invitation;

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
      (email == null ? 0 : email.hashCode) +
      (invitation == null ? 0 : invitation.hashCode) +
      (password == null ? 0 : password.hashCode);

  static List<RegisterData> listFromJson(List<dynamic> json) {
    return <RegisterData>[
      if (json is List)
        for (dynamic value in json) RegisterData.fromJson(value),
    ];
  }

  static Map<String, RegisterData> mapFromJson(Map<String, dynamic> json) {
    return <String, RegisterData>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RegisterData.fromJson(entry.value),
    };
  }

  // maps a json object with a list of RegisterData-objects as value to a dart map
  static Map<String, List<RegisterData>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<RegisterData>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: RegisterData.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'RegisterData[agreement=$agreement, email=$email, invitation=$invitation, password=$password]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (agreement != null) r'agreement': agreement,
      r'email': email,
      if (invitation != null) r'invitation': invitation,
      r'password': password,
    };
  }
}
