// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unnecessary_new, prefer_const_literals_to_create_immutables, camel_case_types

import 'dart:ui';

import 'package:cleaning_list_app/Screens/MainScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Stepper_Form extends StatefulWidget {
  @override
  _Stepper_FormState createState() => _Stepper_FormState();
}

class _Stepper_FormState extends State<Stepper_Form> {
  int _currentStep = 0;
  String dropdownValue_loc = 'Select';
  String dropdownValue_group = 'Select';
  String dropdownValue_floor = 'Good';
  String dropdownValue_wall = 'Good';
  String dropdownValue_ceiling = 'Good';
  String dropdownValue_window = 'Good';
  String dropdownValue_furniture = 'Good';
  String dropdownValue_waste = 'Good';
  String dropdownValue_consumables = 'Good';
  String onStepContinue_label = 'Next';
  String onStepCancel_label = 'Back';
  String date = "";
  DateTime selectedDate = DateTime.now();
  TextEditingController timeinput = TextEditingController();
  StepperType stepperType = StepperType.vertical;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 45.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 15.0, 0, 0),
              ),
              ClipOval(
                child: Material(
                  color: Colors.blue,
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      width: 64.0,
                      height: 64.0,
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        size: 32.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: Theme(
              data: ThemeData(primaryColor: Colors.grey),
              child: Stepper(
                controlsBuilder:
                    (BuildContext context, ControlsDetails controls) {
                  if (_currentStep == 0) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: controls.onStepContinue,
                            child: Text(onStepContinue_label),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (_currentStep == 1) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: controls.onStepContinue,
                            child: Text(onStepContinue_label),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 7.0),
                          ElevatedButton(
                            onPressed: controls.onStepCancel,
                            child: Text(onStepCancel_label),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: controls.onStepContinue,
                            child: Text('Submit'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 7.0),
                          ElevatedButton(
                            onPressed: controls.onStepCancel,
                            child: Text(onStepCancel_label),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: new Text(''),
                    content: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 180.0),
                          child: Text(
                            'Location:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_loc,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue_loc = newValue!;
                                  print(dropdownValue_loc);
                                });
                              },
                              items: <String>[
                                'F110',
                                'F111',
                                'F112',
                                'F113',
                                'F114',
                                'F115'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 200.0),
                          child: Text(
                            'Group:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_group,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue_group = newValue!;
                                  print(dropdownValue_group);
                                });
                              },
                              items: <String>[
                                'G1',
                                'G2',
                                'G3',
                                'G4',
                                'G5'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120.0),
                          child: Text(
                            'Inspection Date:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton.icon(
                          label: Text(
                            'Choose Date: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                            style: TextStyle(color: Colors.black),
                          ),
                          icon: Icon(
                            Icons.date_range_rounded,
                            color: Colors.black,
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.white,
                            shadowColor: Colors.grey,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            minimumSize: Size(260.0, 60.0),
                            side: BorderSide(
                              color: Colors.blue,
                              width: 3.0,
                            ),
                          ),
                          onPressed: () {
                            _selectDate(context);
                          },
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text(
                      'Rating',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                    content: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 190.0),
                          child: Text(
                            'Floor:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_floor,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownValue_floor = newValue!;
                                  print(dropdownValue_floor);
                                });
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 195.0),
                          child: Text(
                            'Wall:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_wall,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_wall = newValue!;
                                    print(dropdownValue_wall);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120.0),
                          child: Text(
                            'Window/Door:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_window,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_window = newValue!;
                                    print(dropdownValue_window);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 185.0),
                          child: Text(
                            'Ceiling:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_ceiling,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_ceiling = newValue!;
                                    print(dropdownValue_ceiling);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 76.0),
                          child: Text(
                            'Furniture/Fix/Equip:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_furniture,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_furniture = newValue!;
                                    print(dropdownValue_furniture);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 86.0),
                          child: Text(
                            'Waste Bag Holder:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_waste,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_waste = newValue!;
                                    print(dropdownValue_waste);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 130.0),
                          child: Text(
                            'Consumables:',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 270,
                          height: 55,
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 4,
                          ),
                          // margin: EdgeInsets.all(6.00),

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              width: 3,
                              color: Colors.blue,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(10.0),
                              value: dropdownValue_consumables,
                              icon: Icon(Icons.arrow_downward_outlined),
                              iconSize: 24.0,
                              elevation: 16,
                              isExpanded: true,
                              style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                              onChanged: (String? newValue) {
                                setState(
                                  () {
                                    dropdownValue_consumables = newValue!;
                                    print(dropdownValue_consumables);
                                  },
                                );
                              },
                              items: <String>[
                                'Good',
                                'Bad'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: new Text(
                      'Remarks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                    content: Column(
                      children: <Widget>[
                        TextField(
                          maxLines: 8,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(16.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  20.0,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                              ),
                              hintText: 'Enter your Remarks here'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepsType,
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() async {
    if (_currentStep < 2) {
      setState(() {
        _currentStep += 1;
      });
    } else if (_currentStep == 2) {
      updateInfo(context);
    } else {
      null;
    }
  }

  void updateInfo(BuildContext context) {
    Navigator.pushReplacement(
      context,
      PageTransition(
        type: PageTransitionType.size,
        alignment: Alignment.bottomCenter,
        duration: Duration(
          milliseconds: 200,
        ),
        child: MainScreen(
          loc: dropdownValue_loc,
          group: dropdownValue_group,
          floor: dropdownValue_floor,
          wall: dropdownValue_wall,
          ceiling: dropdownValue_ceiling,
          window: dropdownValue_window,
          furniture: dropdownValue_furniture,
          waste: dropdownValue_waste,
          consumables: dropdownValue_consumables,
          dateDay: selectedDate.day,
          dateMonth: selectedDate.month,
          dateYear: selectedDate.year,
          visibility: true,
        ),
      ),
    );
  }

  cancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep -= 1;
      });
    } else if (_currentStep == 0) {
      cancelPop();
    } else {
      return null;
    }
  }

  cancelPop() {
    Navigator.pop(context);
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2080),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
