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

class TrendingCoursesModel {
  String? courseName;
  String? courseLectures;

  TrendingCoursesModel(this.courseName, this.courseLectures);
}

class TrendingCourseList {
  static List<TrendingCoursesModel> displayTrendingCourses = [
    TrendingCoursesModel("UI/UX Design", "20 Lectures"),
    TrendingCoursesModel("Motion Graphics", "15 Lectures"),
    TrendingCoursesModel("User Testing", "15 Lectures"),
    TrendingCoursesModel("System Analysis", "20 Lectures"),
    TrendingCoursesModel("HCI", "10 Lectures"),
    TrendingCoursesModel("Networking", "20 Lectures"),
    TrendingCoursesModel("Databases", "25 Lectures"),
    TrendingCoursesModel("Virtual Learning", "15 Lectures")
  ];

  static List<TrendingCoursesModel> getAllTrendingCourses =
      List.from(displayTrendingCourses);
}

class CourseModulesModel {
  String? moduleName;
  String? moduleDuration;

  CourseModulesModel(this.moduleName, this.moduleDuration);
}

class CourseModulesList {
  static List<CourseModulesModel> displayCourseModules = [
    CourseModulesModel("Definition of Design", "2:30 Minutes"),
    CourseModulesModel("Design Principles", "4:30 Minutes"),
    CourseModulesModel("Design Manifesto", "3:00 Minutes"),
    CourseModulesModel("Design Tools", "3:30 Minutes"),
  ];

  static List<CourseModulesModel> getAllCourseModules =
      List.from(displayCourseModules);
}
