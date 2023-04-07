import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Productlist extends StatefulWidget {
  const Productlist({Key? key}) : super(key: key);

  @override
  State<Productlist> createState() => _ProductlistState();
}

class _ProductlistState extends State<Productlist> {

  final Client httpclient = Client();
  
  Future<void> getproductListFromAPI() async{
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');
    Response response = await httpclient.get(uri);
    print(response.statusCode);
    print(jsonDecode(response.body));
  }

  void initstate(){
    super.initState();
    getproductListFromAPI();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
        return ListTile(
          title: Text('Product Name'),
          subtitle: Text('Quantity: 1'),
          trailing: Text('Total: 120'),
          leading: Text('12/unit'),
        );
      }),
    );
  }
}
