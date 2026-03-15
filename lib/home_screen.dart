import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/GridBook.dart';
import 'package:myapp/widgets/book_item.dart';
import 'package:myapp/screens/descriptions/book1.dart';
import 'package:myapp/screens/descriptions/book2.dart';
import 'package:myapp/screens/descriptions/book3.dart';
import 'package:myapp/screens/descriptions/book4.dart';
import 'package:myapp/screens/descriptions/book5.dart';
import 'package:myapp/screens/descriptions/book6.dart';
import 'package:myapp/screens/descriptions/book7.dart';
import 'package:myapp/screens/descriptions/book8.dart';
import 'package:myapp/screens/descriptions/book9.dart';
import 'package:myapp/screens/descriptions/book10.dart';
import 'package:myapp/widgets/GridBook.dart';
import 'package:myapp/screens/showusers.dart';
import 'package:myapp/user.dart';
import 'package:myapp/box.dart';
import 'package:myapp/screens/signup.dart';
import 'package:myapp/screens/cart.dart';
import 'package:myapp/screens/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB89A72),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Navigate to the cart screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchBook()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CART()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 50),
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SHOW()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Sign Up'),
              onTap:
                  () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFE6D8A8),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Best Sellers",

                  style: GoogleFonts.fugazOne(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book1()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/Qj1neAj.png',
                      price: '100JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book2()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/RBxhVhr.png',
                      price: '100JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book3()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/X0Be86I.png',
                      price: '68JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book4()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/7H21yh2.png',
                      price: '79JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book5()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/UAgcCfc.png',
                      price: '108JD',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "New Arrivals",
                  style: GoogleFonts.fugazOne(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book6()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/wZtIC8B.jpeg',
                      price: '120JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book7()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/CjwWDCv.png',
                      price: '70JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book8()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/ztOg62A.jpeg',
                      price: '47JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book9()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/VS3WaQu.png',
                      price: '72JD',
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Book10()),
                      );
                    },
                    child: BookItem(
                      imageUrl: 'https://i.imgur.com/jZ5NXnT.png',
                      price: '83JD',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: GoogleFonts.fugazOne(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1: 'https://i.imgur.com/uI2OXgz.png',
                                img2: 'https://i.imgur.com/Hn4aBXc.jpeg',
                                img3:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRvenc97Bk52mXpbnXen47Wt2UujbAQpyFv7dlHzTTAHTxm_Xkr',
                                img4:
                                    'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1659905828i/7235533._UX187_.jpg',
                                img5:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7NuT90NylTUgLxaGGJZmMQ0bLsXEvVNn5mIJvhupFPJd-8YM2',
                                img6:
                                    'https://prodimage.images-bn.com/pimages/9781639730957_p0_v4_s192x300.jpg',
                                title: 'Fantasy Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/01YmTFw.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://cdn.loveandlemons.com/wp-content/uploads/2023/01/cookbook3.jpg',
                                img2:
                                    'https://m.media-amazon.com/images/I/91Mq45Wm4+L._AC_UF894,1000_QL80_.jpg',
                                img3:
                                    'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1572309090i/48616825.jpg',
                                img4:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRx9_Z32WsgTwrtYvrJd8j_yu9HRnQUtdN5CMVW5ZkRgqFVDUVs',
                                img5:
                                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcShWTiLodZ41m3JxA3U0Bg4Y1g9UQLE5mes5Kyv1a7eurrtuzdD',
                                img6:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQgVjWH_vNo-B2OdJgaxaz-uJ8XugZEnWp9Hz7sb6CpyWjFFufx',
                                title: 'Cook Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/fBUEPEG.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  //kids books.
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://i.ebayimg.com/images/g/x98AAeSwUTFoFoVG/s-l1600.webp',
                                img2:
                                    'https://m.media-amazon.com/images/I/71ScS+8HkBL._AC_UF1000,1000_QL80_.jpg',
                                img3:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq35oWjBytnEnaSfMbjdm8pc3VI-HknTQDoV026z9OFUVmXPjO',
                                img4:
                                    'https://childmind.org/wp-content/uploads/2023/05/Stop-and-smell-the-cookies-779x1024.jpg',
                                img5:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSe-M33sxULFxSIzs2lfOSfsC7ZLCWe7Y_K_f1oxU3gEB1C99NL',
                                img6:
                                    'https://m.media-amazon.com/images/I/81IAfvJJOOL._AC_UF1000,1000_QL80_.jpg',
                                title: 'Kids Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/NN7XYqW.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  //science
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQKIUSKGtFOyTklY6yiZ1BMDxFWGDrpZ1DnyEAeTEHQ5RFXO7wX',
                                img2:
                                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTEHzUrKdu-VvbiJOHbvF0gxtFP-Al1dMf5RsDAS_gUcr_-rE9g',
                                img3:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQwIkfr6dkffSWOTFhD6nnP0o9CnDaOxfjo4wyZa7dzhSvSz2hC',
                                img4:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQAUxx-KxrVAVgRlFt6A561_v5qMP5ZkARWJD5Ttq_RIMhpnuWH',
                                img5:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRhBfr4vngRm3jLWJhCZLOgqkVU61x8W-SxCV_yfOyfX66hrKWT',
                                img6:
                                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTP6uDv96Eg9Wa-TQjrFGZIrsBa1Q1FuLiW4QaD-G7k_13m8Kwn',
                                title: 'Science Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/ngikpoZ.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf4RAdsLE4TCr8n41SLnACrF5qPR6sluTOUKOQbLF6GJ-R34hZ',
                                img2:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjmi6Bue5UCg-qGyU37iKsInnh9XEh8Q9crwvvUg1yh2cP4cYG',
                                img3:
                                    'https://cdn.bakerpublishinggroup.com/processed/books/covers/original/9781441244789.jpg?1415803556',
                                img4:
                                    'https://www.heathbooks.co.uk/wp-content/uploads/2024/10/9781398845411.jpg',
                                img5:
                                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRaFykScx2obz8sFr-5lQMycKeolTAXUBaeyCSNvx7QACzAE1Am',
                                img6:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8C242FceSfAeAifJJm2aGajZr1PMVgyWDBN3ddWnJf0rD5jyJ',
                                title: 'Historical Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/GwxpTw9.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE2YofKEgqHatHg-tyWjWZZToLrU3PJi1kgyap5SOPHtb4uovh',
                                img2:
                                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS-klj5SWQjsS0ba9V9oVyoF1Oj71HcPm3FwoF7DG-ete_KWxah',
                                img3:
                                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRFe_nR8cUhkckk_U_hdIHGQQhMPVp84bvL7eRVV8RL9MF_jEo5',
                                img4:
                                    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRWKPHNEIcoWzDCcZbqVbLAY074OLh0nMlSC9oZkE5rrpl4fW1z',
                                img5:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDHlYbmqVR3I4rE3mKcUZ-NHAioUyeAYlxQ4ooEt4nZXUvADTE',
                                img6:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSijsr3_-O_q55Xi6eyJ69pFRiB0Qcq9_S2dB3IcdPFzfpn4CaA',
                                title: 'Crime Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/qBjtJqk.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => GRIDBOOK(
                                img1:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVak09cbQnncb-MN3Yd4FMflqisdQxXUUmT2CbSNOUlG1M6CvL',
                                img2:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFhC48X3VO9foKfidR0XCIjrtmoKVbE3jr_HjIoUhfyDtrHyMU',
                                img3:
                                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQZhgAWWHQUkUftKxdMjb4Y-a4g4owoqqfYw1KJ282RV3-7-A5R',
                                img4:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0oZAF-7s79W1w746C4x5dD5EIiBriYYrNeIdCuR9IEvaWKEOE',
                                img5:
                                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTV-rQqwFq0m8fMV4lw4db4tbk_th-29tRigM3KWfCxCBiy3sf_',
                                img6:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6wBg3PwgRrUzPIUji_xHTBdN2wldv5vTy5d2MaqNlTmed9uV1',
                                title: 'Technology Books',
                              ),
                        ),
                      );
                    },
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          "https://i.imgur.com/wKKF3d9.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
