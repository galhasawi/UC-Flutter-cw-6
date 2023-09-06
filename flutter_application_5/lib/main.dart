import 'package:flutter/material.dart';
import 'package:flutter_application_5/movies.dart';
import 'package:flutter_application_5/pages/details.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  var movies = [

    Movies(name: "harry potter", image: "https://www.thetwocities.com/wp-content/uploads/2011/10/harry-potter-900x500.jpg", rate: "10", date:"2004" ),
    Movies(name: "moana", image:"https://th.bing.com/th/id/R.02c2085854e304c6224cb2d2e0254d7a?rik=zzA47LSc0ShmMg&riu=http%3a%2f%2fcdn.breathecast.com%2fdata%2fimages%2ffull%2f34080%2fprincess-moana-in-disneys-moana.jpg&ehk=xYlzAjKECxeZSDSLuMsTSq6a64CRtSwyYbow%2fYs4NJc%3d&risl=&pid=ImgRaw&r=0" , rate: "10", date: "2014")

  ];
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView.builder(
            itemCount: movies.length,
            itemBuilder: 
          
          (context, index){
            return ListTile(


              leading: Image.network(movies[index].image),
              title: Text(movies[index].name) ,
              subtitle: Text(movies[index].date),
              trailing: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> 
                DetailsPage()));
              }, icon: Icon(Icons.arrow_back)),


            );

          }))
        ),
      
    );
  }
}
