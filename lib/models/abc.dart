// models/job.dart
class AllJobsResponse {
  final int id;
  String? salary;
  int? userId;
  List<String>? categoryNames;
  List<String>? classOrCourseNames;
  int? daysOfWeek;
  String? createdAt;
  TuitionType? tuitionType;
  List<String>? subjectNames;
  Area? area;
  ClassOrCourse? classOrCourse;
  District? district;
  String? moreRequirement;
  String? tutorGender;



  AllJobsResponse({
    required this.id,
    required this.salary,
    required this.userId,
    required this.categoryNames,
    required this.classOrCourseNames,
    required this.daysOfWeek,
    required this.createdAt,
    required this.tuitionType,
    required this.subjectNames,
    required this.area,
    required this.classOrCourse,
    required this.district,
    required this.moreRequirement,
    required this.tutorGender,
  });

  factory AllJobsResponse.fromJson(Map<String, dynamic> json) {
    return AllJobsResponse(
      id: json['id'] ?? 0,
      salary: json['salary'] ?? 'Null',
      userId: json['user_id'] ?? 0,
      categoryNames: json['category_names'].cast<String>(),
      classOrCourseNames: json['class_or_course_names'].cast<String>(),
      daysOfWeek: json['days_of_week'],
      createdAt: json['created_at'],
//       //---------------
      tuitionType: json['tuition_type'] != null
          ? new TuitionType.fromJson(json['tuition_type'])
          : null,
//       //------------------
      subjectNames: json['subject_names'].cast<String>(),
      area: json['area'] != null ? Area.fromJson(json['area']) : null,
// //------------------
      // area: json['area'] != null ? new Area.fromJson(json['area']) : null,
//
//       //------------------
      classOrCourse: json['class_or_course'] != null
          ? new ClassOrCourse.fromJson(json['class_or_course'])
          : null,
//
      tutorGender: json['tutor_gender'],
// //------------------
      district: json['district'] != null
          ?  District.fromJson(json['district'])
          : null,
//
      moreRequirement: json['more_requirement'],
//
    );
  }

  static List<AllJobsResponse> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => AllJobsResponse.fromJson(json)).toList();
  }
}

class TuitionType {
  int? id;
  String? name;
  Null? createdAt;
  Null? updatedAt;

  TuitionType({this.id, this.name, this.createdAt, this.updatedAt});

  TuitionType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Area {
  int? id;
  int? districtId;
  String? name;
  Null? createdAt;
  Null? updatedAt;

  Area({this.id, this.districtId, this.name, this.createdAt, this.updatedAt});

  Area.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    districtId = json['district_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['district_id'] = this.districtId;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class District {
  int? id;
  int? divisionId;
  String? name;
  Null? createdAt;
  Null? updatedAt;

  District(
      {this.id, this.divisionId, this.name, this.createdAt, this.updatedAt});

  District.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    divisionId = json['division_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['division_id'] = this.divisionId;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ClassOrCourse {
  int? id;
  int? categoryId;
  String? name;
  Null? createdAt;
  Null? updatedAt;

  ClassOrCourse(
      {this.id, this.categoryId, this.name, this.createdAt, this.updatedAt});

  ClassOrCourse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
