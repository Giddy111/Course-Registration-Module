// ignore_for_file: avoid_print, unnecessary_this

import 'package:course_registration/home/course_registration.dart';
import 'package:course_registration/style/constants.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class Home extends StatefulWidget {
  static String routeName = "Home";
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<dynamic> faculties = [];
  List<dynamic> departmentsMasters = [];
  List<dynamic> departments = [];
  List<dynamic> levels = [];
  List<dynamic> semesters = [];

  String? facultyId;
  String? departmentId;
  String? levelId;
  String? semesterId;

  @override
  void initState() {
    super.initState();
    this.faculties.add({
      "id": 1,
      "label": "Faculty of Agricultural & Natural Resources Management"
    });
    this
        .faculties
        .add({"id": 2, "label": "Faculty of Applied Natural Sciences"});
    this.faculties.add({"id": 3, "label": "Faculty of Basic Medical Sciences"});
    this.faculties.add({"id": 4, "label": "Faculty of Clinical Medicine"});
    this.faculties.add({"id": 5, "label": "Faculty of Education"});
    this.faculties.add({"id": 6, "label": "Faculty of Engineering"});
    this.faculties.add({"id": 7, "label": "Faculty of Enviromental Sciences"});
    this.faculties.add({"id": 8, "label": "Faculty of Law"});
    this.faculties.add({"id": 9, "label": "Faculty of Management Sciences"});
    this
        .faculties
        .add({"id": 10, "label": "Faculty of Pharmaceutical Sciences"});
    this
        .faculties
        .add({"id": 11, "label": "Faculty of Social Sciences and Humanities"});

    this.departmentsMasters = [
      {
        "ID": "1",
        "Name": "Agricultural Economics and Extension Department",
        "ParentId": 1
      },
      {
        "ID": "2",
        "Name": "Agronomy and Ecological Management Department",
        "ParentId": 1
      },
      {
        "ID": "3",
        "Name": "Animal Science and Fisheries Management Department",
        "ParentId": 1
      },
      {
        "ID": "4",
        "Name": "Food Science and Technology Department",
        "ParentId": 1
      },
      {
        "ID": "5",
        "Name": "Agricultural Economics and Extension Department",
        "ParentId": 1
      },
      {"ID": "1", "Name": "Applied Biochemistry Department", "ParentId": 2},
      {
        "ID": "2",
        "Name": "Applied Biology and Biotechnology Department",
        "ParentId": 2
      },
      {
        "ID": "3",
        "Name": "Applied Microbiology and Brewing Department",
        "ParentId": 2
      },
      {"ID": "4", "Name": "Computer Science Department", "ParentId": 2},
      {"ID": "5", "Name": "Geology and Mining Department", "ParentId": 2},
      {
        "ID": "6",
        "Name": "Agricultural Economics and Extension Department",
        "ParentId": 2
      },
      {"ID": "6", "Name": "Industrial Chemistry Department", "ParentId": 2},
      {
        "ID": "7",
        "Name": "Industrial Mathematics and Statistics Department",
        "ParentId": 2
      },
      {"ID": "8", "Name": "Industrial Physics Department", "ParentId": 2},
      {"ID": "1", "Name": "Anatomy Department", "ParentId": 3},
      {
        "ID": "2",
        "Name": "Medical Laboratory Science Department",
        "ParentId": 3
      },
      {"ID": "3", "Name": "Nursing Science Department", "ParentId": 3},
      {"ID": "1", "Name": "Medical Department", "ParentId": 4},
      {
        "ID": "2",
        "Name": "Adult Continuing Education Department",
        "ParentId": 5
      },
      {"ID": "3", "Name": "Business Education Department", "ParentId": 5},
      {"ID": "4", "Name": "Education Foundation Department", "ParentId": 5},
      {"ID": "5", "Name": "Education Management Department", "ParentId": 5},
      {"ID": "6", "Name": "Guidance and Counselling Department", "ParentId": 5},
      {
        "ID": "1",
        "Name": "Agricultural and Bioresource Department",
        "ParentId": 6
      },
      {"ID": "2", "Name": "Computer Engineering Department", "ParentId": 6},
      {
        "ID": "1",
        "Name": "Urban and Regional Planning Department",
        "ParentId": 7
      },
      {"ID": "2", "Name": "Real Estate Management Department", "ParentId": 7},
      {"ID": "1", "Name": "Law Department", "ParentId": 8},
      {"ID": "2", "Name": "Law", "ParentId": 8},
      {"ID": "1", "Name": "Accountancy Department", "ParentId": 9},
      {"ID": "2", "Name": "Banking and Finance Department", "ParentId": 9},
      {"ID": "3", "Name": "Business Administration Department", "ParentId": 9},
      {"ID": "1", "Name": "Pharmacy Department", "ParentId": 10},
      {"ID": "1", "Name": "Economics Department", "ParentId": 11},
      {"ID": "2", "Name": "Psychology Department", "ParentId": 11},
      {"ID": "3", "Name": "Political Science Department", "ParentId": 11},
    ];

    this.levels.add({"value": 1, "name": "400 Level"});
    this.semesters.add({"val": 1, "Label": "2nd Semester"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(
          8,
        ),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Welcome, Okoro Henry Chukwuma",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Please fill in the fields below to proceed",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Faculty".toUpperCase(),
                  "Select Faculty",
                  this.facultyId,
                  this.faculties,
                  (onChangedVal) {
                    this.facultyId = onChangedVal;
                    print("Selected Faculty: $onChangedVal");
                    this.departments = this
                        .departmentsMasters
                        .where(
                          (stateItem) =>
                              stateItem["ParentId"].toString() ==
                              onChangedVal.toString(),
                        )
                        .toList();
                    this.departmentId = null;
                    setState(() {});
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return "Please select a faculty";
                    }
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  optionValue: "id",
                  optionLabel: "label",
                ),
                kSizedBox,
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Department".toUpperCase(),
                  "Select Department",
                  this.departmentId,
                  this.departments,
                  (onChangedVal) {
                    this.departmentId = onChangedVal;
                    print("Selected Department: $onChangedVal");
                  },
                  (onValidate) {
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  optionValue: "ID",
                  optionLabel: "Name",
                ),
                kSizedBox,
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Level".toUpperCase(),
                  "Select Level",
                  this.levelId,
                  this.levels,
                  (onChangedVal) {
                    this.levelId = onChangedVal;
                    print("Selected level: $onChangedVal");
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return "Please select a level";
                    }
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  optionValue: "value",
                  optionLabel: "name",
                ),
                kSizedBox,
                FormHelper.dropDownWidgetWithLabel(
                  context,
                  "Semester".toUpperCase(),
                  "Select Semester",
                  this.semesterId,
                  this.semesters,
                  (onChangedVal) {
                    this.semesterId = onChangedVal;
                    print("Selected Semester: $onChangedVal");
                  },
                  (onValidateVal) {
                    if (onValidateVal == null) {
                      return "Please select a semester";
                    }
                    return null;
                  },
                  borderColor: Theme.of(context).primaryColor,
                  borderFocusColor: Theme.of(context).primaryColor,
                  borderRadius: 10,
                  optionValue: "val",
                  optionLabel: "Label",
                ),
              ],
            ),
            kSizedBox,
            ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const CourseRegistration()),
                  ),
                );
              }),
              style: ElevatedButton.styleFrom(
                animationDuration: const Duration(
                  milliseconds: 500,
                ),
                elevation: 10.0,
                padding: const EdgeInsets.all(
                  kDefaultPadding,
                ),
                shadowColor: Colors.grey,
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    "Go",
                  ),
                  kHalfWidthSizedBox,
                  Icon(
                    Icons.arrow_forward_rounded,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
