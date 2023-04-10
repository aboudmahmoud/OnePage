import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/repostory/Respostry.dart';

import 'Helper/Const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(cancelIcon,
                              width: 26,
                              height: 26,
                              colorFilter: ColorFilter.mode(
                                  Colors.blue, BlendMode.srcIn)),
                        )), // Set the color to blue)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(food),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Divider(
                      color: Colors.grey, // Set the color to gray
                      thickness:
                          1, // Set the thickness of the line (1 pixel in this case)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'يرجى ذكر اختيارك للطبق الجانبي في صندوق الملاحظات \n هاش براونز او بطاك',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15, // تحديد حجم الخط هنا
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'السعر حسب الاختيار',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'الحجم',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'اختر من 3 اختيارت',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 15, color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Obx(
                    () => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 200,
                                height: 45,
                                child: RadioListTile(
                                  title: Text('1950 D.K'),
                                  value: 1,
                                  groupValue:
                                      Respostry.radioValueMoudle.selectedValue,
                                  onChanged: (value) {
                                    Respostry.radioValueMoudle.selectedValue =
                                        value;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text('فلافل فل'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 200,
                                height: 45,
                                child: RadioListTile(
                                  title: Text('1950 D.K'),
                                  value: 2,
                                  groupValue:
                                      Respostry.radioValueMoudle.selectedValue,
                                  onChanged: (value) {
                                    Respostry.radioValueMoudle.selectedValue =
                                        value;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text('ترافل ينز'),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 200,
                                height: 45,
                                child: RadioListTile(
                                  title: Text('1950 D.K'),
                                  value: 3,
                                  groupValue:
                                      Respostry.radioValueMoudle.selectedValue,
                                  onChanged: (value) {
                                    Respostry.radioValueMoudle.selectedValue =
                                        value;
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text('هاني بكين'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Divider(
                      color: Colors.grey, // Set the color to gray
                      thickness:
                          1, // Set the thickness of the line (1 pixel in this case)
                    ),
                  ),
                  Padding(
                    padding:   const EdgeInsets.only(left: 15.0, right: 15.0,),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'طلب خاص',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontSize: 15, color: Colors.green),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 9),
                      child: Container(
                        width: 80,
                        height: 60,
                        alignment: Alignment.topRight,
                        child: Row(
                          children: [
                            Text('ملاحظة',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(width: 10),
                            SvgPicture.asset(notepencilicon, width: 13, height: 13),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(

                    width: 200,
                    height: 48,
                    child: TextField(
                      // Set the onChanged callback to handle text input changes
                      onChanged: (value) {
                        // Do something with the entered text

                      },
                      textAlign: TextAlign.right,

                      decoration: InputDecoration(

                        labelText: 'هل ترغب في أخبارنا اي شئ أخر', // Label text for the text field
                       hintTextDirection: TextDirection.rtl

                        // Border for the text field
                      ),

                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your desired functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[800], // Set the button color to dark green
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0), // Set the border radius to 20 pixels
                          ),
                        ),
                        child: Text(
                          'أضف إلى السلة',
                          style: TextStyle(
                            color: Colors.white, // Set the text color to white
                          ),
                        ),
                      ),
                      Obx(()=> InkWell(
                        onTap: () {
                          Respostry.hartMoudle.isFavoret = ! Respostry.hartMoudle.isFavoret;
                        },
                        child: Container(
                            width: 26,
                            height: 26,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12.0),

                          )
                          ,child: SvgPicture.asset(
                            Respostry.hartMoudle.isFavoret ? RedHart : Hart,
                          ),),
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: const Alignment(-1, -0.2),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: 35,
                  height: 110,
                  child: Obx(
                    () => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Respostry.counterModel.dec();
                            },
                            child: SvgPicture.asset(minusicon,
                                width: 10, height: 10)),
                        Text(Respostry.counterModel.Counter.toString()),
                        GestureDetector(
                            onTap: () {
                              Respostry.counterModel.inc();
                            },
                            child: SvgPicture.asset(plusicon,
                                width: 20, height: 20)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
