import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
final Profile profile;
final List<Skill> skills;
final List<Project> project;
final List<Experience> experience;
final List<Education> education;
final Contact contact;

DataModel({
  required this.profile,
  required this.skills,
  required this.contact,
  required this.project,
  required this.education,
  required this.experience,
});

factory DataModel.fromJson(Map<String, dynamic> json) =>
_$DataModelFromJson(json);

Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

/// profile class
@JsonSerializable()
class Profile {
final String name;
final String title;
final String cv;
final String bio;
final String residence;

Profile({
required this.name,
required this.title,
required this.cv,
required this.bio,
required this.residence,
});

factory Profile.fromJson(Map<String, dynamic> json) =>
_$ProfileFromJson(json);

Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
/// skill class
@JsonSerializable()
class Project {
  final String title;
  final String thumbnail;
  final String description;
  final String? link;
  final String? download;
  final int year;
  List<String> technologies;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
     this.link,
     this.download,
    required this.thumbnail,
    required this.year,
  });

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}


/// skill class
@JsonSerializable()
class Skill {
final String title;
final String icon;

Skill({
required this.title,
required this.icon,
});

factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

Map<String, dynamic> toJson() => _$SkillToJson(this);
}

/// experience class
@JsonSerializable()
class Education {
  final String title;
  final String university;
  final String degree;
  final String start;
  final String end;

  Education({
    required this.title,
    required this.university,
    required this.degree,
    required this.start,
    required this.end,
  });

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);
}


/// experience class
@JsonSerializable()
class Experience {
final String title;
final String company;
final String description;
final String start;
final String end;

Experience({
required this.title,
required this.company,
required this.description,
required this.start,
required this.end,
});

factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);

Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}

/// contact class
@JsonSerializable()
class Contact {
final String email;
final String phone;
final String linkedin;
final String github;

Contact({
required this.email,
required this.phone,
required this.linkedin,
required this.github,
});

factory Contact.fromJson(Map<String, dynamic> json) =>
_$ContactFromJson(json);

Map<String, dynamic> toJson() => _$ContactToJson(this);
}