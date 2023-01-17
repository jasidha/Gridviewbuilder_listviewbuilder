import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Projectofuikit()),
  );
}
class Projectofuikit extends StatefulWidget {
  const Projectofuikit({Key? key}) : super(key: key);

  @override
  State<Projectofuikit> createState() => _ProjectofuikitState();
}

class _ProjectofuikitState extends State<Projectofuikit> {
  List t2=["Default theme","FullApps","Integration","Dashboard"];
  List I1=[Icons.phone_android_outlined,Icons.fullscreen_exit,Icons.integration_instructions,Icons.dashboard];
  List col=[Colors.lightGreen,Colors.orange,Colors.greenAccent,Colors.yellow];
  List i2=[Icons.file_open_rounded,Icons.local_police,Icons.light_mode_rounded,Icons.sports_gymnastics,Icons.wallet_travel];
  List t3=["File Manager","Exercise Tips","Food Recipe","Gym","e-wallet" ];
  List col2=[Colors.lightGreen,Colors.greenAccent,Colors.deepOrange,Colors.blueGrey,Colors.orange];
  List col3=[Colors.pink,Colors.purple,Colors.purpleAccent,Colors.teal,Colors.lightGreen];
  List t4=["Theme one screen","Theme two screen","Theme three screen","Theme four screen","Theme five screen"];
  List t5=[Icons.navigate_next,Icons.navigate_next,Icons.navigate_next,Icons.navigate_next,Icons.navigate_next];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.toggle_on_outlined,size: 40,color: Colors.black,)),
        ),],
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Text("AllInOne Ui Kit",style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      ),
      body:
      SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(


              shrinkWrap: true,
              itemCount:t2.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 17/4,

                ) , itemBuilder: (BuildContext,int index){
              return
    Expanded(
        child: Card(

          color:(col[index]),
         child:Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(I1[index],size: 70,),
           SizedBox(height: 12,),

           Text(t2[index],style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
           ),),
         ],),

        ),
    );
    }
            ),
            SizedBox(height: 13,),
            Text("Themes",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),),
            ListView.builder(
              shrinkWrap: true,
              itemCount: t3.length,
                itemBuilder: (context,index){
                return
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(

                                  child: Icon(i2[index],size: 70,),
                                color: (col3[index]),
                              ),
                            ),
                            SizedBox(width: 12,),
                            Expanded(
                              child: Card(
                                margin: EdgeInsets.all(10),
                                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column
                                        (
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        mainAxisAlignment:MainAxisAlignment.center,
                                        children: [
                                          Text(t3[index],style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.black,

                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text(t4[index],style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black
                                          ),),

                                        ],),
                                    ),
                                   FloatingActionButton(
                                     onPressed: (
                                         ){},child: Icon(t5[index],),
                                     backgroundColor:(col3[index]),
                                   ),
                                  ],
                                ),


                              ),
                            ),

                          ],
                        )),




                      ],
                    );
                }),
          ],
        ),
      ),
    );





  }

}


