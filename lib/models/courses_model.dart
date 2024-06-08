class CoursesModel {
  String? courseName;
  String? courseInstructor;
  String? courseVideos;
  String? progress;

  CoursesModel(
      this.courseName, this.courseInstructor, this.courseVideos, this.progress);
}

class CourseList {
  static List<CoursesModel> getAllCourses = [
    CoursesModel(
      "UI/UX Design",
      "Omary Mkuse",
      "11/15 Videos",
      "75%",
    ),
    CoursesModel(
      "Digital Marketing",
      "Juma Kilumbi",
      "12/15 Videos",
      "80%",
    ),
    CoursesModel(
      "Video Editing",
      "Omary Mkuse",
      "20/20 Videos",
      "100%",
    ),
    CoursesModel(
      "App Development",
      "John Lugendo",
      "10/30 Videos",
      "33%",
    ),
    CoursesModel(
      "CRM Management",
      "John Lugendo",
      "10/30 Videos",
      "33%",
    ),
  ];

  static List<CoursesModel> displayCourses = List.from(getAllCourses);
}
