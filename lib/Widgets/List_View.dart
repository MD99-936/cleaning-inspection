// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class List_View extends StatefulWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {
  bool isVisible_container_1 = true;
  bool isVisible_container_2 = false;
  bool isVisible_container_3 = false;
  bool isVisible_container_4 = false;
  bool isVisible_container_5 = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Visibility(
              visible: isVisible_container_1,
              child: Container(
                width: 390,
                height: 190,
                margin: EdgeInsets.all(9.0),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Inspection Date:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 27.0,
                          onPressed: () {
                            setState(() {
                              isVisible_container_1 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Group:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Details -->',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isVisible_container_2,
              child: Container(
                width: 395,
                height: 190,
                margin: EdgeInsets.all(9.0),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Inspection Date:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 27.0,
                          onPressed: () {
                            setState(() {
                              isVisible_container_2 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Group:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Details -->',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isVisible_container_3,
              child: Container(
                width: 395,
                height: 190,
                margin: EdgeInsets.all(9.0),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Inspection Date:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 27.0,
                          onPressed: () {
                            setState(() {
                              isVisible_container_3 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Group:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Details -->',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isVisible_container_4,
              child: Container(
                width: 395,
                height: 190,
                margin: EdgeInsets.all(9.0),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Inspection Date:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 27.0,
                          onPressed: () {
                            setState(() {
                              isVisible_container_4 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Group:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Details -->',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isVisible_container_5,
              child: Container(
                width: 395,
                height: 190,
                margin: EdgeInsets.all(9.0),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Inspection Date:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        ),
                        IconButton(
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          iconSize: 27.0,
                          onPressed: () {
                            setState(() {
                              isVisible_container_5 = false;
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Group:',
                          style: TextStyle(
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View Details -->',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
