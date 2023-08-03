import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'apirequest.dart';
import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.pink,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool pressed = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Retrofit Implementation - Flutter"),
      ),
      body: pressed ? _buildBody(context):Center(
        child: TextButton(child: const Text("Fetch Products",style: TextStyle(color: Colors.black,fontSize: 18),),
            onPressed: () => {setState(() {
              pressed = true;

            })}),
      ),
    );
  }
}

FutureBuilder<ResponseData> _buildBody(BuildContext context) {
  // final client = ApiRequest(Dio(BaseOptions(contentType: "application/json")),baseUrl: 'https://gorest.co.in/public-api/');
  final client = ApiRequest(Dio(BaseOptions(contentType: "application/json")),baseUrl: 'https://dummyjson.com/');
  return FutureBuilder<ResponseData>(
    // future: client.getUsers(),
    future: client.getProducts(),
    builder: (context, snapshot) {
      print('snapshot.error ${snapshot.error}');
      print('snapshot.error ${snapshot.toString()}');
      if (snapshot.connectionState == ConnectionState.done) {

        final  posts = snapshot.data;
        print(posts);
        if(posts!=null)
        {
          return _buildPosts(context, posts);
        }else
        {
          return Center(
            child: Container(),
          );
        }

      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

// Widget _buildPosts(BuildContext context, ResponseData posts) {
//   return
//     ListView.builder(itemBuilder: (context,index){
//       return Card(
//         child: ListTile(
//
//           leading: Icon(Icons.person_pin,color: Colors.pink,size: 50,),
//           title: Text(posts.data[index]['name'],style: TextStyle(fontSize: 20),),
//           subtitle: Text(posts.data[index]['email']),
//         ),
//       );
//     },itemCount: posts.data.length,
//     );
//
// }

Widget _buildPosts(BuildContext context, ResponseData posts) {
  return
    ListView.builder(itemBuilder: (context,index){
      return Card(
        child: ListTile(

          leading: const Icon(Icons.person_pin,color: Colors.pink,size: 50,),
          title: Text(posts.products[index]['title'],style: const TextStyle(fontSize: 20),),
          subtitle: Text("\$ ${posts.products[index]['price']}"),
        ),
      );
    },itemCount: posts.products.length,
    );

}
