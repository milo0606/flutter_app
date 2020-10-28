import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var letras = TextStyle(fontSize: 25, color: Colors.grey);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        drawer: Drawer(
          child: ListView (
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 50,bottom: 50),
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius:BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))
                ),
                child: Center(
                  child: Column(
                    children: <Widget>[

                      Container(
                        width: 130,
                        height: 138,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/9f/00/af/9f00af501d2d324ac7f8ebb559fc25dd.png"),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Text("Emilio Sanchez",style: TextStyle(color: Colors.white,fontSize: 25),),
                      Text("emiliosanchez999@gmail.com",style: TextStyle(color: Colors.white,fontSize: 12),),
                      Container(
                        margin: EdgeInsets.only(top: 20,right: 50),
                        child: IconButton(icon: Icon(Icons.login_outlined,size: 50,color: Colors.white,),),
                      ),

                      Container(
                          margin: EdgeInsets.only(top: 14,right: 13),
                          child: Text("Salir",style: TextStyle(color: Colors.white),
                          )
                      )
                    ],
                  ),
                ),

              ),
              Divider(color: Colors.transparent,),
              ListTile(
                leading: Icon(Icons.memory_outlined,size: 38,),
                title: Text('Procesadores',style: letras,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Motherboards',style: letras,),
                leading: Icon(Icons.developer_board,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Cases',style: letras,),
                leading: Icon(Icons.speaker,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('tarjetas Graficas',style: letras,),
                leading: Icon(Icons.score,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Monitores',style: letras,),
                leading: Icon(Icons.monitor,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Teclados',style: letras,),
                leading: Icon(Icons.keyboard,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Mouse',style: letras,),
                leading: Icon(Icons.mouse_outlined,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Otros',style: letras,),
                leading: Icon(Icons.donut_large,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Memorias Ram',style: TextStyle(fontSize: 20,color: Colors.grey),),
                leading: Icon(Icons.developer_board,size: 35,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
              ListTile(
                title: Text('Configuraciones',style: TextStyle(fontSize: 20,color: Colors.grey),),
                leading: Icon(Icons.settings,size: 20,),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red[900],

          centerTitle: true,
          title: Text('Gaming Nation Store',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        ),
        body: Fondo(),
          ),
    );
  }
}

class Fondo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context)
       .size;
   return Scaffold(
     body: Stack(
       children:<Widget> [
        Positioned(child:
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50,left: 20, right: 20),
          padding: EdgeInsets.only(left: 17,bottom: 17,right: 10,top: 16),
          height: 54,
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.red[900]),
                  top: BorderSide(color: Colors.red[900]),
              left: BorderSide(color: Colors.red[900]),
         right: BorderSide(color: Colors.red[900])),
              color:
          Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                offset: Offset(0,10),
                blurRadius: 20,
                color: Colors.black12.withOpacity(0.190)
              ),
            ]
          ),

          child: Row(
            children: <Widget> [

              Expanded(child:
              TextField(
                onChanged: (value){},
                cursorColor: Colors.black87.withOpacity(0.10),
                cursorWidth: 1.0,
                cursorHeight: 20,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 50),
                  hintText: "  Buscar...",
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.80)),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
              ),


              Icon(Icons.search,color: Colors.grey.withOpacity(0.50),),
            ],
          ),
        )),
         Container(
           margin: EdgeInsets.only(top: 150,left: 60),
           child:
           Text("¿Que deseas ver hoy?", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.grey),),
         ),

         Container(
           margin: EdgeInsets.only(top: size.height * .40),
           decoration: BoxDecoration(
             color: Colors.red[900],
             borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(50)),
           ),
         
         ),
         Container(
           margin: EdgeInsets.only(top: 210),
           child:
           GridView.count(
             primary: false,
             padding: const EdgeInsets.all(30),
             crossAxisSpacing: 20,
             mainAxisSpacing: 10,
             crossAxisCount: 2,
             children: <Widget>[

              InkWell(
                 child: Container(
                   padding: const EdgeInsets.all(10),

                   decoration: BoxDecoration(
                     image: DecorationImage(
                     image: NetworkImage("https://5.imimg.com/data5/IV/PC/MY-35935661/amd-and-nvidia-graphic-card-for-gaming-and-workstation-500x500.png")
                     ),
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         offset: Offset(0,5),
                         blurRadius: 10
                       )
                     ]
                   ),
                   child:
                     Container(
                       margin: EdgeInsets.only(left: 20,top: 131),
                       child:
                       Text("Tarjetas Graficas"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://http2.mlstatic.com/procesador-amd-ryzen-9-3900x-38ghz-100-100000277wof-D_NQ_NP_814510-MPE40617731130_012020-F.jpg")
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 28,top: 131),
                       child:
                       Text("Procesadores"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://imgaz1.staticbg.com/thumb/view/oaupload/ser1/banggood/images/6C/52/d0f408a8-976f-48f4-9e1a-5c3efbbf58ce.jpg",scale: 3)
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 45,top: 131),
                       child:
                       Text("Gabinetes"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://www.pcfactory.cl/public/foto/31828/2_500.jpg?t=1549568694",scale: 3.8)
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 40,top: 131),
                       child:
                       Text("Monitores"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://mercafree.com/wp-content/uploads/2020/01/teclado-gamer-redragon-k556rgb-sp-devarajas-D_NQ_NP_988389-MCO29786835909_032019-F.png",scale: 5.5)
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 45,top: 131),
                       child:
                       Text("Teclados"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/71WAawDdW%2BL._AC_SL1500_.jpg",scale: 15)
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 40,top: 131),
                       child:
                       Text("Audifonos"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://benchmarkhardware.com/wp-content/uploads/2018/02/TridenTZ-RGB-DDR4-4700MHz.jpg")
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 27,top: 131),
                       child:
                       Text("Memorias Ram"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
               InkWell(
                 child: Container(
                     padding: const EdgeInsets.all(10),

                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage("https://images-na.ssl-images-amazon.com/images/I/71PeznkqjSL._AC_SX466_.jpg",scale: 3.5)
                         ),
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               offset: Offset(0,5),
                               blurRadius: 10
                           )
                         ]
                     ),
                     child:
                     Container(
                       margin: EdgeInsets.only(left: 30,top: 131),
                       child:
                       Text("power Supply"),
                     )
                 ),
                 onTap: (){
                   print("H ola");
                 },
               ),
             ],
           ),
         ),

       ],
     ),
   );
  }
}


