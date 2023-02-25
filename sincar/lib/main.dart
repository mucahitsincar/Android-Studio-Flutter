import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    debugShowCheckedModeBanner:false,

  ),
  );
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yemek Tarifleri'),
      ),
      drawer: Drawer(

        child: SafeArea(
            child: ListView(
              children: [
                SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.history,color: Colors.red,),
                      SizedBox(width: 15,),
                      Text("tarihçe",
                          style:TextStyle(
                            fontWeight:FontWeight.bold,

                            fontSize: 18,
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.integration_instructions_outlined,color: Colors.red,),
                      SizedBox(width: 15,),
                      Text("kurumsal",
                          style:TextStyle(
                            fontWeight:FontWeight.bold,

                            fontSize: 18,
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.bus_alert,color: Colors.red,),
                      SizedBox(width: 15,),
                      Text("ulaşım",
                          style:TextStyle(
                            fontWeight:FontWeight.bold,

                            fontSize: 18,
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.add_call,color: Colors.greenAccent,),
                      SizedBox(width: 45,),
                      Text("iletişim",
                          style:TextStyle(
                            fontWeight:FontWeight.bold,

                            fontSize: 18,
                          )
                      ),
                    ],
                  ),
                ),

              ],
            )
        ),
      ),
    //
      body:SafeArea(
        child: Column(



          children: <Widget>[



      Container(
        //transform: Matrix4.rotationZ(-0.2),
        width: 500,
        height: 520,
        alignment: Alignment.bottomRight,
        decoration:BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadiusDirectional.circular(33),
          color: Colors.cyanAccent,),
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(6.0),


        child: Transform(

            transform: Matrix4.rotationZ(0),
            child :
            TextButton(
              style: ButtonStyle(

                foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
              ),
              onPressed: () { },
              child:Center(
                  child: Builder(
                      builder: (context) {
                        return Column(
                          children: [

                            Text("ne yapsam"),
                            Text(""),
                          ],
                        );
                      }
                  )
              ),
            )
        ),
      ),
      Container(


        //transform: Matrix4.rotationZ(-0.2),

        width: 700,
        height: 50,
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(

        borderRadius: BorderRadiusDirectional.circular(3.0),

          color: Colors.orangeAccent,

        ),



        child: Transform(


            transform: Matrix4.rotationZ(0),
           child :

            ElevatedButton(


              child: const Text('butona tıklayınız '),


              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
            ),

        ),
      ),
          ],

        )
      ),
    );

  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        appBar:AppBar(
          title: Text("Yemek Taqsrifleri"),

        ),


        backgroundColor: Colors.greenAccent,
        //backgroundColor: Colors.lime,

        body: SafeArea(


            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),


              children: [

                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(


                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },

                        child:Center(

                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("Sayfa A ya git"),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("sıcak yemekler"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("neya"),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),
                Container(
                  //transform: Matrix4.rotationZ(-0.2),
                  width: 150,
                  height: 120,
                  alignment: Alignment.bottomRight,
                  decoration:BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Colors.white,),
                  margin: EdgeInsets.all(33.0),
                  padding: EdgeInsets.all(33.0),


                  child: Transform(

                      transform: Matrix4.rotationZ(0),
                      child :
                      TextButton(
                        style: ButtonStyle(

                          foregroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                        ),
                        onPressed: () { },
                        child:Center(
                            child: Builder(
                                builder: (context) {
                                  return Column(
                                    children: [

                                      Text("ne yapsam"),
                                      Text(""),
                                    ],
                                  );
                                }
                            )
                        ),
                      )
                  ),
                ),

              ],

            )
        ),
      ),
      debugShowCheckedModeBanner:false,

    );

  }


}