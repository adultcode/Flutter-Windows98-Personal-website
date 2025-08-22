// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
  profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
  skills: (json['skills'] as List<dynamic>)
      .map((e) => Skill.fromJson(e as Map<String, dynamic>))
      .toList(),
  contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
  project: (json['project'] as List<dynamic>)
      .map((e) => Project.fromJson(e as Map<String, dynamic>))
      .toList(),
  education: (json['education'] as List<dynamic>)
      .map((e) => Education.fromJson(e as Map<String, dynamic>))
      .toList(),
  experience: (json['experience'] as List<dynamic>)
      .map((e) => Experience.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
  'profile': instance.profile,
  'skills': instance.skills,
  'project': instance.project,
  'experience': instance.experience,
  'education': instance.education,
  'contact': instance.contact,
};

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
  name: json['name'] as String,
  title: json['title'] as String,
  cv: json['cv'] as String,
  bio: json['bio'] as String,
  residence: json['residence'] as String,
);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'cv': instance.cv,
  'bio': instance.bio,
  'residence': instance.residence,
};

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
  title: json['title'] as String,
  description: json['description'] as String,
  technologies: (json['technologies'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  link: json['link'] as String?,
  download: json['download'] as String?,
  thumbnail: json['thumbnail'] as String,
  year: (json['year'] as num).toInt(),
);

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
  'title': instance.title,
  'thumbnail': instance.thumbnail,
  'description': instance.description,
  'link': instance.link,
  'download': instance.download,
  'year': instance.year,
  'technologies': instance.technologies,
};

Skill _$SkillFromJson(Map<String, dynamic> json) =>
    Skill(title: json['title'] as String, icon: json['icon'] as String);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'title': instance.title,
  'icon': instance.icon,
};

Education _$EducationFromJson(Map<String, dynamic> json) => Education(
  title: json['title'] as String,
  university: json['university'] as String,
  degree: json['degree'] as String,
  start: json['start'] as String,
  end: json['end'] as String,
);

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
  'title': instance.title,
  'university': instance.university,
  'degree': instance.degree,
  'start': instance.start,
  'end': instance.end,
};

Experience _$ExperienceFromJson(Map<String, dynamic> json) => Experience(
  title: json['title'] as String,
  company: json['company'] as String,
  description: json['description'] as String,
  start: json['start'] as String,
  end: json['end'] as String,
);

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'title': instance.title,
      'company': instance.company,
      'description': instance.description,
      'start': instance.start,
      'end': instance.end,
    };

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
  email: json['email'] as String,
  phone: json['phone'] as String,
  linkedin: json['linkedin'] as String,
  github: json['github'] as String,
);

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'linkedin': instance.linkedin,
  'github': instance.github,
};
