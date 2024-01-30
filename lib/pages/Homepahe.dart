import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
static final String id  = "HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //#Header
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/body.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.grey,),
                          hintText: "Search for Hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18, )
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                )
              ),
            ),
            SizedBox(height: 30,),
            //#Body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Busines Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem (image: "assets/images/1.jpg", title: "Hotel One"),
                        makeItem (image: "assets/images/2.jpg", title: "Hotel One"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Airport Hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem (image: "assets/images/3.jpg", title: "Hotel One"),
                        makeItem (image: "assets/images/4.jpg", title: "Hotel One"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Resort hotels", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),),
                  SizedBox(height: 30,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem (image: "assets/images/4.jpg", title: "Hotel One"),
                        makeItem (image: "assets/images/5.jpg", title: "Hotel One"),
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],

        ),



      ),
    );
  }
  Widget makeItem({image, title}){
    return AspectRatio(
      aspectRatio: 1.4 / 1,
      child: Container(
       margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.4)
              ]
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Text("Hotels One", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(width: 90 ,),
              Icon(Icons.favorite_border, size: 25, color: Colors.red,)
            ],
    ),

        ),
      ),
    );
  }
}
