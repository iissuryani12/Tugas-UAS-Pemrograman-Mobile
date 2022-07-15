import 'package:flutter/material.dart';
import 'package:indojek/common/my_colors.dart';
import 'package:indojek/common/my_font_size.dart';
import 'package:indojek/common/my_style.dart';
import 'package:indojek/UI/widgets/card_goclub.dart';
import 'package:indojek/UI/widgets/card_info.dart';
import 'package:indojek/UI/widgets/custom_bottom_icon.dart';
import 'package:indojek/UI/widgets/custom_card.dart';
import 'package:indojek/UI/widgets/nav_bottom.dart';
import 'package:indojek/UI/widgets/subtitle.dart';
import 'package:indojek/UI/widgets/scroll_brush.dart';




class  Beranda extends StatefulWidget {
const Beranda ({ Key? key }) : super(key: key);
  
  @override
 _BerandaState createState() => _BerandaState();

}

 class -BerandaState extends State<Beranda> {
   var _scrollController = scrollController();

 List <bool> tabBarBadgeList = [
     false,
     false,
     false,
     true,
   ];

   int tabBarList = [
     "Beranda",
     "Promo",
     "Pesanan",
     "Chat"
   ];

   int tabBarIndex = 0;

   int balanceBalance = 0;

   int isBrush = false;

   bool isCollapseNavBottom = true;

   @override
   void inState() {
     _scrollController.addListener(() {
       if (_scroolController.position.pixels > 0) {
       isBrush = true;
       setStates(() {});
       } else {
         isBrush = false;
       }
     });
     super.initState();
   }

   @override
   Widget build(BuildContext context) {
     Widget tabBArItem(int Index) {
       return Expanded(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(5),
            height: double.infinity,
            decoration: BoxDecoration(
              color: (tabBarIndex == index) ? MyColors.white: colors.transparent,
              borderRadius: BorderRadius.circular(100)),
        child: InkWell(
        onTap: () {
          setState(() {
            tabBarIndex = index;
          });
        },
      child: center(
      child: Text(
        tabBarList[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          color: (tabBarIndex == index) ? MyColors.darkGreen : MyColors.white,
          fontSize: MyFontSize.medium1,
          fontWeight: FontWeight.bold),
        ),
      ),
    )),
    if (tabBarBadgeList[index])
    Align(
      alignment: Alignment.topRight,
      child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: MyColors.red,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1.5,
              color: MyColors.white)),
          child: Center(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        )),
      )
    ],
  ),
  );
}

  Widget tabBar() {
      return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(color: MyColors.darkGreen,
      borderRadius: BorderRadius.circular(100)),
      child: Row(
      children: [
          tabBarItem(0),
          tabBarItem(1),
          tabBarItem(2),
          tabBarItem(3),
        ],
       ),
      );
    } 

widget searchBox() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
          children: [
            Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          decoration: BoxDecoration(
            color: MyColors.whiteL2,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              width: 1.5,
              color: MyColors.softGrey)),
          child: Row(
            children: [
              Icon(Icons.search, color: MyColors.blackText, size: 40),
              SizedBox(width: 10),
              Expanded (
              child: text(
                "Cari Layanan, Makanan, dan Tujuan",
                style: TextStyle(
                  color: MyColors.grey,
                  fontSize: MyFontSize.medium2),
              ))
            ],
          )),
        ),
        SizedBox(width: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(1000),
        child: Image.network(
          " "
          height: 55,
          width: 55,
          fit: BoxFit.cover,
          ),
        )
      ]
    ),
  );
}

Widget balance() {
  return Padding(
  padding: EdgeInsets.symmetric(horizontal: 20)
        child: Container(
          height: 130,
          decoration: BoxDecoration(
            color: MyColors.blue,
            borderRadius: BorderRadius.circular(25)),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      2, 
                      (index) => Container (
                        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                        height: 16key: widht: 4,
                        decoration: : BoxDecoration(
                          color: (balanceBalance == index)
                        ? MyColors.white: MyColors.softGrey,
                        borderRadius: BorderRadius.circular(100)),
                        ),
                      )
                  ],
                ),
          Container(
            padding: EdgeInsets.all(10),
            height: 90,
            width: 150,
            decoration: BoxDecoration(
              color: MyColor.white,
              borderRadius: BorderRadius.circular(20)),
              child Column(
                mainAxisAlignment: MainAxIsAlignment.center,
                crossAxisAlignment: CrossAxIsAligenment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "indoPay",
                        style: TextStyle(
                          color: MyColors.blackText,
                        fontSize: MyFontSize.large1,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                ],
              ),
        SizedBox(height: 5),
        Text(
          "Klik buat isi",
          style: TextStyle(
            color: MyColors.green,
            fontSize: MyFontSize.medium1,
            fontWeight: FontWeight.bold,
            ),
          )
       ],
     ),
   ),
          SizedBox(width: 5),
          Expanded(
            child: CustomButtonIcon(
              action: () {},
              iconPAth: "assets/image/ic_bayar.png",
              text: "Bayar",
              fontColor: MyColors.white,
              height: 33,
              width: 33,
              isBold: true,
            ),
          ),
          Expanded(
            child: CustomButtonIcon(
            action: () {},
            iconPath: "assets/image/ic_topup.png",
            text: "Top up",
              fontColor: MyColors.white,
              height: 33,
              width: 33,
              isBold: true,
            ), 
          ),
          Expanded(
            child: CustomButtonIcon(
            action: () {},
            iconPath: "assets/image/ic_eksplor.png",
            text: "Explor",
              fontColor: MyColors.white,
              height: 33,
              width: 33,
              isBold: true,
            ), 
          ),
          SizedBox(width: 10),
              ],
            ),
        ),
}
   
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
      ),
      body: Stack(
        children: [
      ListView(
        controller:_scrollController,
        children: [
          SizedBox(height: 20),
          searchBox(),
          balance(),
          SizedBox(height: 20),
          Padding(
            padding: : EdgeInsets.symmetric(horizontal: 20),
            child: CardGoClub(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Subtitle(
              iconPath: "assets/image/ic_indoshop.png",
              iconText: "IndoPayBefore",
              subtitle: "Pake IndoPayBefore di Tokopedia",
              caption:
              "Belanja & nikmati beragam promo cashBack istimewa hingga Rp 1.7 juta untuk-mu"),
            ),
          AspectRatio(aspectRatio: 1 / 1,
          child: ListView(
            padding: : EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) => CardInfo(
                imageUrl:
                " ",
                title: "Hadiah dari Indojek buat perjalananmu!",
                caption:
                "Nikmati perjalanan aman dan hemat naik Indojek/Indocar. Diskob sampai Rp 76.000 pake kode INDOMERDEKA. klik!"),
            )),
          ),
        ),
        SizedBox(height: 20),
        Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: subtitle(
          iconPAth: "assets/image/ic_indoride.png",
          iconText: "Indojek",
          subtittle: "Promo merdeka buat kamu",
          caption:
          "Ada diskon dari indojek/indocar, pakai hemat Indosend, Instant, dan diskon Indopay di sini",
          prefWidget: CustomCard(
            onTAp: () {},
            padding: EdgeInsets.zero,
            bgColor:MyColors.softgreen,
            shadow: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Lihat Semua",
                style: TextStyle(
                  color: MyColors.darkGreen,
                  fonSize: MyFontSize.medium1,
                  fontweight: FontWeight.bold)),
                )),
              ),
            ),
            AspectRatio(
              aspectRatio: 1 / 1,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection:Axis.horizontal, 
                children: List.generate(
                  5,
                  (index) => CardInfo(
                    imageUrl:
                    " ",
                    title: "Bongkar rahasia penjualan barang murah",
                    caption: "Nikmati perjalanan aman dan hemat naik Indojek/Indocar. Diskon sampai Rp 76.000 pake kode INDOMERDEKA. Klik",
                  )),
                ),
              ),
              SizedBox(height: 120),
        ],
            ),
            if (isBrush)
            align(alignment: Alignment.topCenter, child: scrollBrush()),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: GestureDetector(
                onPanUpdate:(details) {
                  if (details.delta.dy < 0) {
                    isCollapsNavBottom = false;
                    setStates() {});
                  }

                  if (details.delta.dy> 0) {
                    isCollapseNavBottom = true;
                    setStates(() {});
                  }
                },
                child: navBottom(
                  isCollaps: isCollapsNAvBottom,
                )
              ),
            ),
        ],        
      ),
  );
}
}