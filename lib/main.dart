import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
                xl: 4, lg: 4, md: 4, sm: 4, xs: 12,
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 150,
                        backgroundImage: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*"),
                      ),
                    ),
                )
            ),
            ResponsiveGridCol(
              xl: 8, lg: 8, md: 8, sm: 8, xs: 12,
                  child: Container(
                    child: ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                            child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Title(
                                    color: Colors.black,
                                    child: LayoutBuilder(
                                      builder: (BuildContext context, BoxConstraints contraints){
                                        if(contraints.maxWidth>=450){
                                          return Text("Lal Gulu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),);
                                        } else{
                                          return Center(child: Text("Lal Gulu", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),));
                                        }
                                      },
                                    ),
                                  ),
                                ),
                            )
                        ),
                        ResponsiveGridCol(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                  child: Text("With the actual path to your images. This code demonstrates a responsive layout that rearranges its widgets based on the device orientation."),
                              ),
                            )
                        ),
                        ResponsiveGridCol(
                            child: Container(
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                  ),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Image.network('https://www.shutterstock.com/shutterstock/photos/2208001797/display_1500/stock-photo-chic-cat-charisma-wearing-coat-wearing-sunglasses-funny-fashion-pic-as-wallpaper-poster-t-2208001797.jpg'),
                                    );
                                  },
                                ),
                            )
                        ),
                      ],
                    ),
                  ),
            ),
          ],
        ),
      )
    );
  }
}


