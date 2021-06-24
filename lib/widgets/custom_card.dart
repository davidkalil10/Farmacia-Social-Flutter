import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    List<BannerModel> listBanners = [
      BannerModel(
          imagePath:
          "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
          id: "1"),
      BannerModel(
          imagePath:
          "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
          id: "2"),
    ];

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      elevation: 4,
      //color: Colors.blue,
      //width: 100,
      child: Column(
        children: [
          //Carrousel
          Expanded(
            flex: 40,
            child: BannerCarousel(
              banners: listBanners,
              height: 200,
              // width: 100,
              borderRadius: 10,
              activeColor: Colors.amberAccent,
              indicatorBottom: false,
              margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 0),
              //spaceBetween: 5,
            ),
          ),
          //Titulo e Tarja
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Título",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                    width: 35,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(),
          ),
          //Body
          Expanded(
            flex: 15,
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Center(
                child: Text(
                    "comecoasdsadasdjhsajhdhsajdhskajhdhsajdhskdjhkshdjkswwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
                    style: TextStyle(fontSize: 15),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(),
          ),
          //Rodapé
          Expanded(
            flex: 20,
            child: Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Data Validade" , style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("31/12/2022",style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Distancia" , style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                      Text("7km",style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
