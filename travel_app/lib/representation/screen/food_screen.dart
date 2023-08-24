import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/data/nhahang_model.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

import '../../data/diadiem_model.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});
  static final String routeName = '/popular_screen';

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  List<Marker> allMarkers = [];
  Color _iconColor = Colors.white;
  bool isPressed = false;

  GoogleMapController? _controller;

  PageController _pageController = PageController();

  int? prevPage;
  void initState() {
    // TODO: implement initState
    super.initState();
    prevPage = 0; // Khởi tạo giá trị
    nhaHang.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.resName),
          draggable: false,
          infoWindow:
              InfoWindow(title: element.resName, snippet: element.address),
          position: element.locations));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }
    void _greedy(){
    
  }


  void _onScroll() {
    if ((_pageController.page)!.toInt() != prevPage) {
      prevPage = (_pageController.page)!.toInt();
      moveCamera();
    }
  }

  _resList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget? widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          // value = _pageController.page! - index;

          value =
              _pageController.page != null ? _pageController.page! - index : 0;

          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 170.0,
            width: Curves.easeInOut.transform(value) * 380.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text(nhaHang[index].resName),
                backgroundColor: Color.fromARGB(255, 238, 236, 241),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nhaHang[index].desciption,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
              
                  Image(
                    
                    image: NetworkImage(nhaHang[index].thumNail),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text(
                          'OK',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Liên hệ",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                              onPressed: (() {}),
                              icon: Icon(
                                Icons.directions,
                                color: Colors.blue,
                                size: 30,
                              ))
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Chọn",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        child: Icon(
                          Icons.favorite,
                          color: isPressed
                              ? Colors.red
                              : Colors
                                  .grey, // Thay đổi màu sắc của Icon dựa trên biến isPressed
                          size: 25,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          child: Stack(children: [
            Center(
                child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 20.0,
                    ),
                    height: 125.0,
                    width: 275.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            offset: Offset(0.0, 4.0),
                            blurRadius: 10.0,
                          ),
                        ]),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 100.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image:
                                        NetworkImage(nhaHang[index].thumNail),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(width: 5.0),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  nhaHang[index].resName,
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  nhaHang[index].address,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      nhaHang[index].desciption,
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Chọn "),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isPressed = !isPressed;
                                        });
                                      },
                                      child: Icon(
                                        Icons.favorite,
                                        color: isPressed
                                            ? Colors.red
                                            : Colors
                                                .grey, // Thay đổi màu sắc của Icon dựa trên biến isPressed
                                      ),
                                    )
                                  ],
                                ),
                              ])
                        ]))))
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
        )),
        toolbarHeight: 100,
        backgroundColor: ColorsPalette.primaryColor,
        title: Text(
          "Nhà Hàng",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(13.107288871843064, 109.29666583605719),
                  zoom: 12.0),
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                controller: _pageController,
                itemCount: nhaHang.length,
                itemBuilder: (BuildContext context, int index) {
                  return _resList(index);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  void mapCreated(GoogleMapController controller) {
    setState(() {
      _controller = controller;
    });
  }

  moveCamera() {
    _controller!.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: nhaHang[(_pageController.page)!.toInt()].locations,
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }
}
