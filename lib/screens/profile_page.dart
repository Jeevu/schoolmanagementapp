import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.height*0.1);
    return Scaffold(
          body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.0005),
                child: Container(
                  color: MyColors.customcolor,
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                  width: double.infinity,
                  height: size.height * 0.25,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                            // size: 30,
                            color: Color.fromRGBO(44, 44, 44, 1),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          // SizedBox(
                          //   width: constraints.maxWidth * 0.65,
                          // ),
                          Center(
                            child: Column(
                                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'My Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    height: size.height*0.1,
                                    width: size.height*0.1,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(300),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/Assets/superadmin-2.png'))),
                                  ),
                                  Text(
                                    'Shophia Lodge',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ]),
                          ),
                          SizedBox(width: 47),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(size.width * 0.04,size.width * 0.04,0,0),
                  child: Text(
                    'Infromation',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: MyColors.customcolor),
                  )),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(size.width * 0.04),
                    child: Wrap(spacing: 10, runSpacing: 0.0,
                        children: [
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'First Name',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Sophia',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Last Name',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Shrestha',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Email',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'sophiasth2@gmail.com',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DOB',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '29th June, 1999',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Gender',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Phone',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '9812271689',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'New Baneshwor',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Roll No',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '40',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                          SizedBox(
                            height: 30,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Academic Year',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '2017',
                                    style: TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Colors.grey[200],
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
