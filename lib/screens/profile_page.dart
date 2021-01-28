import 'package:flutter/material.dart';
import 'package:schoolmanagementapp/color/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(
           mainAxisAlignment:MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.0005),
              child: Container(
                color: MyColors.customcolor,
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                width: double.infinity,
                height: size.height*0.3,
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
                            // ignore: unnecessary_statements
                            null;
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
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(300),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
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
              padding: EdgeInsets.all(size.width * 0.02),
              child: Text('Infromation',
              style: TextStyle(fontWeight: FontWeight.w600,color: MyColors.customcolor),
              
              )),
              
          ],
        ),
      ),
    );
  }
}
