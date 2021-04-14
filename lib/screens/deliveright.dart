import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deliveright extends StatefulWidget {
  @override
  _DeliverightState createState() => _DeliverightState();
}

class _DeliverightState extends State<Deliveright> {
  List<String> menuList = [
    'Home',
    'About Us',
    'Services',
    'Blog',
    'Contact Us',
    'Login',
  ];

  List<String> twoList = [
    'Order Now',
    'Track Your Order',
  ];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  int _twoListIndex = 0;

  _onTap(int index) {
    setState(() => _twoListIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height / 1.25,
                  width: size.width,
                  color: Color(0xFF525FE1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 50.0,
                          left: 70.0,
                          right: 70.0,
                          bottom: 50.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deliveright',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: size.height / 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              height: size.height / 22,
                              width: size.width / 2.28,
                              color: Colors.transparent,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: menuList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      right: 10.0,
                                    ),
                                    child: GestureDetector(
                                      onTap: () => _onSelected(index),
                                      child: Container(
                                        width: size.width / 15,
                                        decoration: BoxDecoration(
                                          color: _selectedIndex != null &&
                                                  _selectedIndex == index
                                              ? Color(0xFFF67001)
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '${menuList[index]}',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: size.height / 60,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height / 1.67,
                        width: size.width / 2.5,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 50.0,
                            left: 70.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get your food',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: size.height / 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Delivery at your',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: size.height / 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Doorstep',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: size.height / 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: size.height / 15,
                              ),
                              Text(
                                'You can get scooter hourly and monthly plus yearly basis',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: size.height / 50,
                                ),
                              ),
                              Text(
                                'We have many scooter nearby your location.',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white.withOpacity(0.6),
                                  fontSize: size.height / 50,
                                ),
                              ),
                              SizedBox(
                                height: size.height / 15,
                              ),
                              Container(
                                height: size.height / 20,
                                width: size.width / 4.8,
                                color: Colors.transparent,
                                child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: twoList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(
                                        right: 10.0,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          _onTap(index);
                                        },
                                        child: Container(
                                          width: size.width / 10,
                                          decoration: BoxDecoration(
                                            color: _twoListIndex != null &&
                                                    _twoListIndex == index
                                                ? Color(0xFFF67001)
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              color: _twoListIndex != null &&
                                                      _twoListIndex == index
                                                  ? Colors.transparent
                                                  : Colors.white,
                                              width: 1,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${twoList[index]}',
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w500,
                                                fontSize: size.height / 60,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height / 1.25,
                  width: size.width,
                  color: Colors.white,
                ),
              ],
            ),
            Positioned(
              right: 50,
              top: 200,
              child: Container(
                height: size.height / 1.7,
                width: size.width / 2,
                color: Colors.transparent,
                child: Image.asset('images/deliverymen.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
