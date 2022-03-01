import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:tarea_5/pages/actors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 2;

  List<String> episodes = [
    "Cannonade",
    "Lyin' Eyes",
    "STD",
    "Burn Rate",
    "Rock of Eye",
  ];

  PageController controller = PageController(initialPage: 2);

  YoutubePlayerController youtube1 = YoutubePlayerController(
    initialVideoId: 'HsjTFLq0GmY',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  YoutubePlayerController youtube2 = YoutubePlayerController(
    initialVideoId: 'IxICjEbyaxk',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );
  YoutubePlayerController youtube3 = YoutubePlayerController(
    initialVideoId: 'AMDhNNYGIbg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: true,
    ),
  );

  @override
  void initState() {
    controller.addListener(() {
      double? aux = controller.page;
      if (aux == 0.0) {
        index = 0;
      } else if (aux == 1.0) {
        index = 1;
      } else if (aux == 2.0) {
        index = 2;
      } else if (aux == 3.0) {
        index = 3;
      } else if (aux == 4.0) {
        index = 4;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    youtube1.dispose();
    youtube2.dispose();
    youtube3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: PageView(
          controller: controller,
          children: [
            Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "Cast",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            height: 20,
                            color: Color.fromARGB(255, 22, 22, 19),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(59, 35, 25, 61),
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 0, 0, 0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => Actor(
                                    name: "Bobby Axelrod",
                                    description:
                                        "Robert 'Bobby' Axelrod is the CEO of Axe Capital, a multibillion dollar hedge fund originally located in Connecticut before moving to New York City in Season 3. Known as Axe by friends and enemies alike, Bobby is an incredibly smart and capable investor, able to see many moves ahead in his investments and appearing to come out ahead every time. He is hardly ever on the losing side, and his intelligence, shrewdness, and decisive leadership often win him the awe and respect of friends and enemies. His intelligence and power also pull double to hide his nature as a ruthless and vindictive player that takes no prisoners, causing many to fear his wrath should they ever cross him.",
                                  ),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              width: 370,
                              child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                placeholder:
                                    AssetImage('assets/placeholder.png'),
                                image: NetworkImage(
                                  'https://tradinginsider.fr/wp-content/uploads/2020/05/Bobby_Axelrod.jpg',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 15,
                            child: Text(
                              "Bobby Axelrod",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Garamond',
                                color: Color.fromARGB(255, 243, 237, 219),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 20,
                        //     color: Colors.white24,
                        //     offset: Offset(0.0, 0.0),
                        //   ),
                        // ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 0, 0, 0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => Actor(
                                    name: "Wendy Rhoades",
                                    description:
                                        "A psychiatrist by trade, Wendy Rhoades combines an avid intellect with a keen understanding of human nature. She used those skills to help Bobby Axelrod build his hedge fund from the ground up and now works as the company's star in-house performance coach. Wendy joined Axe Capital long before Chuck became the U.S. Attorney and she refuses to sacrifice her lucrative career for her husband's crusade",
                                  ),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              height: 170,
                              width: 460,
                              child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                placeholder:
                                    AssetImage('assets/placeholder.png'),
                                image: NetworkImage(
                                  'https://static.wikia.nocookie.net/billions/images/5/55/Wendy_Rhoades.jpg/revision/latest?cb=20160216222546',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 15,
                            child: Text(
                              "Wendy Rhoades",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Garamond',
                                color: Color.fromARGB(255, 243, 237, 219),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 20,
                        //     color: Colors.white24,
                        //     offset: Offset(0.0, 0.0),
                        //   ),
                        // ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 0, 0, 0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => Actor(
                                    name: "Chuck Rhoades",
                                    description:
                                        "Brilliant and brash, U.S. Attorney Chuck Rhoades is leading the fight against financial corruption in America. As the most powerful prosecutor in the country, he's won 81 insider trading cases -- and lost zero. But when criminal evidence turns up against wunderkind billionaire Bobby Axelrod, Chuck recognizes that he needs to proceed judiciously. Is his excess of caution due to his professionalism or the fact that his wife works for Axelrod?",
                                  ),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              height: 170,
                              width: 460,
                              child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                placeholder:
                                    AssetImage('assets/placeholder.png'),
                                image: NetworkImage(
                                  'https://static.wikia.nocookie.net/billions/images/c/cc/Chuck_Rhoades.jpg/revision/latest?cb=20160216222546',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 15,
                            child: Text(
                              "Chuck Rhoades",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Garamond',
                                color: Color.fromARGB(255, 243, 237, 219),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        // boxShadow: [
                        //   BoxShadow(
                        //     blurRadius: 20,
                        //     color: Colors.white24,
                        //     offset: Offset(0.0, 0.0),
                        //   ),
                        // ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 0, 0, 0),
                        ),
                      ),
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => Actor(
                                    name: "Mike Wagner",
                                    description:
                                        "Bobby Axelrod's right hand man is the COO of Axe Capital, Mike 'Wags' Wagner. Wags is a patrician WASP who still has to work for a living, and no one has ever kissed ass with more aplomb. But he truly does have Bobby's back, for which his boss rewards him handsomely.",
                                  ),
                                  transitionsBuilder: (c, anim, a2, child) =>
                                      FadeTransition(
                                          opacity: anim, child: child),
                                  transitionDuration:
                                      Duration(milliseconds: 500),
                                ),
                              );
                            },
                            child: Container(
                              height: 170,
                              width: 460,
                              child: FadeInImage(
                                fit: BoxFit.fitWidth,
                                placeholder:
                                    AssetImage('assets/placeholder.png'),
                                image: NetworkImage(
                                  'https://static.wikia.nocookie.net/billions/images/8/84/Mike_Wagner.jpg/revision/latest?cb=20160216222545',
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 75,
                            left: 15,
                            child: Text(
                              "Mike Wagner",
                              style: TextStyle(
                                fontSize: 23,
                                fontFamily: 'Garamond',
                                color: Color.fromARGB(255, 243, 237, 219),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Personal Opinion",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        "Es importante porque me interesa mucho el desarrollo personal y el temas de las inversiones y considero el personaje principal mi idolo. Oscuramente cómica y llena de deliciosos giros y vueltas, la serie es un jugoso melodrama que se deleita en burlarse del estilo de vida de los ricos y famosos. Miles de millones sobresale al pintar un retrato convincente de cómo los hombres poderosos, y las mujeres detrás de ellos, mueven el mundo. Y la idea de que muchas de sus decisiones se centren en detalles humanos tan pequeños es una noción tanto convincente como aterradora. Reparto extraordinario, escritura extraordinaria conducen a una serie exitosa. Aunque es más una telenovela que un comentario perspicaz de Wall Street, Billions puede ser una montaña rusa prometedora de egos despiadados si lo abordas con la actitud correcta. Pero aunque la serie, al igual que sus protagonistas, tiene todas las características de la grandeza, nunca profundiza lo suficiente como para justificar lo impresionada que está consigo misma.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Garamond',
                          color: Color.fromARGB(255, 243, 237, 219),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      child: FadeInImage(
                        fit: BoxFit.cover,
                        placeholder: AssetImage('assets/placeholder.png'),
                        image: NetworkImage(
                          'https://image.winudf.com/v2/image/YmlsbGlvbnMud2FsbHBhcGVycy5uZXcyMDE4X3NjcmVlbl8wXzE1MjIzNjM3NjdfMDk0/screen-0.jpg?fakeurl=1&type=.jpg',
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 260,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Colors.black87,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 15),
                          for (var i = 0; i < 5; i++)
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 30,
                                horizontal: 10,
                              ),
                              clipBehavior: Clip.antiAlias,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(132, 224, 224, 224),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 200,
                                    child: FadeInImage(
                                      fit: BoxFit.fitHeight,
                                      placeholder:
                                          AssetImage('assets/placeholder.png'),
                                      image: NetworkImage(
                                        'https://i.redd.it/502o5girlve11.jpg',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 5,
                                    left: 10,
                                    child: Text(
                                      (i + 1).toString() + ' - ' + episodes[i],
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 18,
                                        fontFamily: 'Garamond',
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.white70,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        "David Levien, and Andrew Ross Sorkin, starring Paul Giamatti and Damian Lewis, that premiered on Showtime on January 17, 2016. The series is loosely based on the activities of Preet Bharara, the former U.S. Attorney for the Southern District of New York, and his legal battles with hedge fund manager Steve Cohen of S.A.C. Capital Advisors. In Season 2, it also incorporates loosely the cases involving Treasury bond auction market manipulation conduct of Salomon Brothers, including the roles of CEO John Gutfreund and bond trader Paul Mozer, in 1991.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Garamond',
                          color: Color.fromARGB(255, 243, 237, 219),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Seasons: 6",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                        Text(
                          "Episodes: 64",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 105, 90, 39),
                      ),
                      child: Text(
                        "Creators",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Garamond',
                          color: Color.fromARGB(255, 243, 237, 219),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Creators",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'Garamond',
                                      color: Color.fromARGB(255, 243, 237, 219),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: FadeInImage(
                                      fit: BoxFit.fitHeight,
                                      placeholder:
                                          AssetImage('assets/placeholder.png'),
                                      image: NetworkImage(
                                        'https://imageio.forbes.com/blogs-images/danschawbel/files/2017/02/billions.jpg?fit=bounds&format=jpg&width=960',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Brian Koppelman & David Levien",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontFamily: 'Garamond',
                                      color: Color.fromARGB(255, 243, 237, 219),
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "David Levien es guionista, director, productor y novelista. Es co-creador, productor ejecutivo y showrunner de Showtime's Billions, junto con Brian Koppelman. Durante las últimas dos décadas, Levien ha creado un cuerpo de trabajo influyente y diverso tanto en cine como en televisión.",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: 'Garamond',
                                      color: Color.fromARGB(255, 243, 237, 219),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "Moments",
                          style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Divider(
                            thickness: 5,
                            height: 20,
                            color: Color.fromARGB(255, 22, 22, 19),
                          ),
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(59, 35, 25, 61),
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 199, 199, 199),
                        ),
                      ),
                      child: YoutubePlayer(
                        controller: youtube1,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "S5 - Bobby Axelrod Wins A Slick Argument",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 5,
                        height: 20,
                        color: Color.fromARGB(255, 22, 22, 19),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(59, 35, 25, 61),
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 199, 199, 199),
                        ),
                      ),
                      child: YoutubePlayer(
                        controller: youtube2,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "S4E3 - Buy Up The Price",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 5,
                        height: 20,
                        color: Color.fromARGB(255, 22, 22, 19),
                      ),
                    ),
                    Container(
                      height: 170,
                      width: size.width - 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color.fromARGB(59, 35, 25, 61),
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                        border: Border.all(
                          width: 3,
                          color: Color.fromARGB(132, 199, 199, 199),
                        ),
                      ),
                      child: YoutubePlayer(
                        controller: youtube3,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          "S5 - Axe In Switzerland When Guards Show Up",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Garamond',
                            color: Color.fromARGB(255, 243, 237, 219),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        backgroundColor: Colors.black,
        snakeShape: SnakeShape.indicator,
        snakeViewColor: Color.fromARGB(255, 165, 142, 68),
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 179, 152, 64),
        currentIndex: index,
        onTap: (value) {
          index = value;
          controller.animateToPage(
            value,
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeOutSine,
          );
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups_rounded,
              size: 35,
            ),
            label: 'tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              size: 29,
            ),
            label: 'calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline,
              size: 29,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_rounded,
              size: 29,
            ),
            label: 'microphone',
          ),
        ],
      ),
    );
  }
}
