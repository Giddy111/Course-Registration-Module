// ignore_for_file: non_constant_identifier_names

import 'package:course_registration/home/confirmation%20screen.dart';
import 'package:course_registration/model/courses%20model.dart';
import 'package:course_registration/style/constants.dart';
import 'package:flutter/material.dart';

class CourseRegistration extends StatefulWidget {
  static String routeName = "Course Registration";
  const CourseRegistration({super.key});

  @override
  State<CourseRegistration> createState() => _CourseRegistrationState();
}

class _CourseRegistrationState extends State<CourseRegistration> {
  List<CourseModel> courses = [
    CourseModel(
      "Operations Research",
      "CSC 418",
      "2",
      false,
    ),
    CourseModel(
      "Computer Maintenance and Installation",
      "CSC 442",
      "2",
      false,
    ),
    CourseModel(
      "Distributed Computing Systems",
      "CSC 458",
      "2",
      false,
    ),
    CourseModel(
      "Software Project Management",
      "CSC 426",
      "2",
      false,
    ),
    CourseModel(
      "Introduction to Microprocessors and Microcomputers",
      "CSC 456",
      "2",
      false,
    ),
    CourseModel(
      "Research Project",
      "CSC 499",
      "4",
      false,
    ),
    CourseModel(
      "Artificial Intelligence and Expert System",
      "CSC 472",
      "2",
      false,
    ),
    CourseModel(
      "Human Computer Interface",
      "CSC 468",
      "2",
      false,
    ),
  ];

  List<CourseModel> selectedCourses = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Register your Courses",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) {
                  return CourseItem(
                    courses[index].courseTitle,
                    courses[index].courseCode,
                    courses[index].creditLoad,
                    courses[index].isSelected,
                    index,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10.0,
              ),
              child: ElevatedButton(
                onPressed: (() {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ConfirmationScreen(),
                    ),
                  );
                }),
                child: const Text(
                  "Register Courses",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget CourseItem(String courseTitle, String courseCode, String creditLoad,
      bool isSelected, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.book_rounded,
          color: Colors.white,
        ),
      ),
      title: Text(
        courseTitle,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            courseCode,
          ),
          kWidthSizedBox,
          kWidthSizedBox,
          Text(
            creditLoad,
          ),
        ],
      ),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Colors.green[700],
            )
          : const Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.grey,
            ),
      onTap: (() {
        setState(() {
          courses[index].isSelected = !courses[index].isSelected;
          if (courses[index].isSelected == true) {
            selectedCourses.add(
              CourseModel(courseTitle, courseCode, creditLoad, true),
            );
          } else if (courses[index].isSelected == false) {
            selectedCourses.removeWhere(
                (element) => element.courseTitle == courses[index].courseTitle);
          }
        });
      }),
    );
  }
}
