import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF21262E), width: 1.0),
                borderRadius: BorderRadius.circular(8.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF21262E),
                    Color(0xFF21262E).withOpacity(0.0),
                  ],
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.grid_view_rounded,
                  size: 16.0,
                  color: Colors.white.withOpacity(0.18),
                ),
              ),
            ),
            Text(
              'Cart',
              style: GoogleFonts.poppins(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            //Profile
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/yupip.jpg',
                width: 30.0,
                height: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        // listview มันจะทำให้เราสามารถ Scorll ขึ้น ลง ได้
        children: [
          //กรอบนอกครอบเนื้อหาด้านใน ภายใต้ Container นี้
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: 30.0), //ระยะจากขอบจอถึง กรอบ
            padding: EdgeInsets.fromLTRB(12.0, 9.0, 12.0, 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0), //ทำให้กรอบนอกโค้งมน
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF262B33),
                  Color(0xFF262B33).withOpacity(0.0),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, //จัดในแกนหลัก โดยจัดให้รูปอยู่ในมุมเริ่มต้นเป็นแนวนอน
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/Mask group.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(width: 22.0), //กำหนดขนาด sizedbox ห่างจากรูป 22.0
                    Expanded(
                      child: Column(
                        //กำหนดในแนวตั้งและต่อมาจากแนวนอนของรูป
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cappuccino',
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'With Steamed Milk',
                            style: GoogleFonts.poppins(
                              height: 2.5,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFAEAEAE),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                width: 118,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xFF141921),
                                  borderRadius: BorderRadius.circular(
                                      10.0), //ทำให้กรอบนอกโค้งมน
                                ),
                                child: Text(
                                  'Medium Roasted',
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFAEAEAE),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                  //จากเส้นนี้ คือจบการจัดการรูปในแนวนอน
                ),
                SizedBox(height: 14.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF0C0F14),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'S',
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD17842),
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '4.20',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(width: 17.0),
                            Row(
                              children: [
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(width: 16.56),
                                Container(
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0C0F14),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xFFD17842),
                                    ),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 17.0),
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF0C0F14),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'M',
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD17842),
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '4.20',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(width: 17.0),
                            Row(
                              children: [
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(width: 16.56),
                                Container(
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0C0F14),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xFFD17842),
                                    ),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 17.0),
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                  //
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17.0, 0, 17.0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 72,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xFF0C0F14),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'L',
                          style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      SizedBox(width: 17.0),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD17842),
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              '4.20',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            SizedBox(width: 17.0),
                            Row(
                              children: [
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                ),
                                SizedBox(width: 16.56),
                                Container(
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF0C0F14),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xFFD17842),
                                    ),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 17.0),
                                Container(
                                  width: 28.44,
                                  height: 28.44,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD17842),
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFFFFFFFF),
                                    size: 14.0,
                                  ),
                                ),
                                //
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
