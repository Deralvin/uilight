import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/book_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitypo/uitypo.dart';
class HomeView extends StatefulWidget{
  @override
  _HomeViewState createState()=> _HomeViewState();
}

class _HomeViewState extends State<HomeView>{
  List<String>src = [
    "https://firebasestorage.googleapis.com/v0/b/baraya-travel-1d290.appspot.com/o/aotrans%20promo%2Fbanner_external.jpg?alt=media&token=432eec39-8796-40f4-81d2-b8318d3e851a",
    "https://firebasestorage.googleapis.com/v0/b/baraya-travel-1d290.appspot.com/o/aotrans%20promo%2Fbanner_internal.jpg?alt=media&token=86f5e797-d6cc-488d-aeb7-633b4d83b3d4",
    "https://firebasestorage.googleapis.com/v0/b/baraya-travel-1d290.appspot.com/o/aotrans%20promo%2Fbanner_mall.jpg?alt=media&token=640f7e19-e0c3-49e4-8bf3-7d929744956b"
  ];

  List<String>title=[
    "External",
    "Internal",
    "Mall to Mall"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CanvasView(
      title: Text("Ao Shuttle"),
      appBarBackground: bgcolor,
      actions: [
        Icon(Icons.card_travel),
      ],
      bodies:Container(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderInformation(
                iconApp: "assets/images/logo3.png",
                circleText: "T",
              ),
              Expanded(
                child:SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                        child:Row(
                          children: [
                            Expanded(
                              child:CommonIconMenu(
                                onpressed: (){
                                  print("thats");
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => BookView()),);
                                },
                                icon: Icon(Icons.airplane_ticket,color: Colors.blue,size: 40,),
                                title: "Book",),
                            ),
                            Expanded(
                              child:CommonIconMenu(
                                onpressed: ()=>print("test"),
                                icon: Icon(Icons.home_repair_service_sharp,color: Colors.green,size: 40,),
                                title: "Services",),
                            ),
                            Expanded(
                              child:CommonIconMenu(
                                onpressed: ()=>print("test"),
                                icon: Icon(Icons.location_on,color: Colors.red,size: 40,),
                                title: "Nearest Bus",),
                            ),
                            Expanded(
                              child:CommonIconMenu(
                                onpressed: ()=>print("test"),
                                icon: Icon(Icons.inbox,color: Colors.deepPurple,size: 40,),
                                title: "Inbox",),
                            ),

                          ],
                        ) ,
                      ),
                      Divider(),
                      CommonTittleMenu(title: "News & Event",),

                      Container(
                        child:CommonCarousel(itemsCarousel: [
                          Image.network("https://web.aotransportbus.com/uploads/slider/BANNER%20AO-01-2.png"),
                          Image.network("https://web.aotransportbus.com/uploads/slider/Desain%20Mading_Promo%20Weekdays%20(Reservasi%20Kursi)_AO%20Shuttle-01-01.jpg")
                        ]),
                        margin: EdgeInsets.symmetric(horizontal: 15),
                      ),
                      CommonTittleMenu(title: "Our Recommendation",verticalMargin: 10),

                      Container(
                        height: 200,
                        margin: EdgeInsets.only(left: 7,bottom: 14),
                        child:ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            physics: AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: src.length,
                            itemBuilder: (BuildContext context, int index){
                              return CommonRecommendation(imageSrc: src[index],titleSrc: title[index]);
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      isBottomNavigationBar: true,
    );

    throw UnimplementedError();
  }

}