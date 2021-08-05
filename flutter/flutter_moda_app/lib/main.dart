import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.black,
                size: 22,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 22,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
          Container(
            padding: EdgeInsets.all(15),
            //   color: Colors.blue,
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model2.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
                listeElemani('assets/model3.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(width: 30),
                listeElemani('assets/model1.jpeg', 'assets/chloelogo.png'),
                SizedBox(width: 30),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue,
              child: Container(
                height: 480,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('assets/model1.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "34 mins ago",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum odio tortor, vel tempus lectus fermentum eget. Proin a tortor.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                      imgPath: "assets/modelgrid1.jpeg")));
                            },
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage("assets/modelgrid1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage("assets/modelgrid2.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    image: AssetImage("assets/modelgrid3.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                "# Louis Vuitton",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.2),
                            ),
                            child: Center(
                              child: Text(
                                "# Chloe",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10,
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.reply,
                            size: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1.7k",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            Icons.comment,
                            size: 20,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "325",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 210,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite,
                                    size: 20, color: Colors.red),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2.3k",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          height: 30,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
