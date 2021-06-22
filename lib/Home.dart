import 'package:banner_carousel/banner_carousel.dart';
import 'package:farmacia_social/widgets/custom_card.dart';
import 'package:farmacia_social/widgets/mobile_app_bar.dart';
import 'package:farmacia_social/widgets/web_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:outline_search_bar/outline_search_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  List<BannerModel> listBanners = [
    BannerModel(
        imagePath:
            "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
        id: "1"),
    BannerModel(
        imagePath:
            "https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80",
        id: "2"),
    BannerModel(
        imagePath:
            "https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80",
        id: "3"),
    BannerModel(
        imagePath:
            "https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80",
        id: "4"),
  ];

  /* final List<Widget> imageSliders = imgList
      .map((item) => Container(
    child: Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )),
    ),
  ))
      .toList();*/

  TextEditingController _searchController = TextEditingController();

  _ajustarVisualizacao(double larguraTela){

    int colunas = 1;
    if (larguraTela <=600){
      colunas = 1;
    } else if (larguraTela <= 960){
      colunas = 2;
    }else {
      colunas = 4;
    }
    return colunas;

  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_,constraints){
          var largura = constraints.maxWidth;
          var alturaBarra = AppBar().preferredSize.height;

          return Scaffold(
            appBar: largura <600
            ? PreferredSize(
                child: MobileAppBar(),
                preferredSize: Size(largura,alturaBarra)
            )
                :PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(largura,alturaBarra)
            ),
            body: Container(
              padding: EdgeInsets.all(16),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      BannerCarousel(
                        banners: listBanners,
                        height: 200,
                        width: 100,
                        borderRadius: 10,
                        activeColor: Colors.amberAccent,
                        indicatorBottom: false,
                        margin: EdgeInsets.only(top: 0,left: 0,right: 0,bottom: 20),
                        //spaceBetween: 5,
                      ),
                      OutlineSearchBar(
                        textEditingController: _searchController,
                        elevation: 2,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderColor: Color(0xff2a9d8f),
                        cursorColor: Colors.grey,
                        searchButtonIconColor: Color(0xff2a9d8f), //f4a261
                        hintText: "Digite sua busca",
                        onSearchButtonPressed: (busca){},
                        onClearButtonPressed: (busca){},
                      ),
                      SizedBox(height: 20,),
                      GridView.count(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: _ajustarVisualizacao(largura),
                         crossAxisSpacing: 8,
                         mainAxisSpacing: 8,
                        children: [
                          CustomCard(),
                          CustomCard(),
                          CustomCard(),
                          CustomCard(),
                          CustomCard(),
                          CustomCard(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
