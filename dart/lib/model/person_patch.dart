//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonPatch {
  /// Returns a new [PersonPatch] instance.
  PersonPatch({
    this.agreement,
    this.givenName,
    this.familyName,
    this.email,
    this.jobTitle,
    this.image,
    this.optIn,
    this.preferences,
    this.telephone,
  });

  /// Returns a new [PersonPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonPatch(
      agreement: PersonPatchAgreement.fromJson(json[r'agreement']),
      givenName: json[r'givenName'],
      familyName: json[r'familyName'],
      email: json[r'email'],
      jobTitle: json[r'jobTitle'],
      image: json[r'image'],
      optIn: json[r'optIn'],
      preferences: PersonPatchPreferences.fromJson(json[r'preferences']),
      telephone: json[r'telephone'],
    );
  }

  PersonPatchAgreement agreement;

  String givenName;

  String familyName;

  String email;

  String jobTitle;

  String image;

  bool optIn;

  PersonPatchPreferences preferences;

  String telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatch &&
        other.agreement == agreement &&
        other.givenName == givenName &&
        other.familyName == familyName &&
        other.email == email &&
        other.jobTitle == jobTitle &&
        other.image == image &&
        other.optIn == optIn &&
        other.preferences == preferences &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (agreement == null ? 0 : agreement.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (jobTitle == null ? 0 : jobTitle.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (optIn == null ? 0 : optIn.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<PersonPatch> listFromJson(List<dynamic> json) {
    return <PersonPatch>[
      if (json is List)
        for (dynamic value in json) PersonPatch.fromJson(value),
    ];
  }

  static Map<String, PersonPatch> mapFromJson(Map<String, dynamic> json) {
    return <String, PersonPatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonPatch-objects as value to a dart map
  static Map<String, List<PersonPatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonPatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'PersonPatch[agreement=$agreement, givenName=$givenName, familyName=$familyName, email=$email, jobTitle=$jobTitle, image=$image, optIn=$optIn, preferences=$preferences, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (agreement != null) r'agreement': agreement,
      if (givenName != null) r'givenName': givenName,
      if (familyName != null) r'familyName': familyName,
      if (email != null) r'email': email,
      if (jobTitle != null) r'jobTitle': jobTitle,
      if (image != null) r'image': image,
      if (optIn != null) r'optIn': optIn,
      if (preferences != null) r'preferences': preferences,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
