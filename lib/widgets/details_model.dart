class DetailsModel {
  final String name;
  final String gender;
  final String category;
  final String state;
  final String nationality;
  final String email;
  final String course;
  final String hallticket;
  final String moblie;
  final String joining;

  DetailsModel({
    required this.name,
    required this.gender,
    required this.category,
    required this.state,
    required this.nationality,
    required this.email,
    required this.course,
    required this.hallticket,
    required this.moblie,
    required this.joining,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'gender': gender,
      'category': category,
      'state': state,
      'nationality': nationality,
      'email': email,
      'course': course,
      'hallticket': hallticket,
      'mobile': moblie,
      'joining': joining
    };
  }
}
