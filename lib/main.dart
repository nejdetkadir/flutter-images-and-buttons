import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Images",
        ),
      ),
      body: Column(
        children: [
          Text(
            "Images",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/img/cover.png",
                        ),
                        Text(
                          "from assets",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png",
                        ),
                        Text(
                          "from network",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/768px-User_icon_2.svg.png",
                          ),
                          radius: 30,
                        ),
                        Text(
                          "circle avatar",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FadeInImage(
                          placeholder: AssetImage(
                            "assets/img/loading.gif",
                          ),
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png"),
                        ),
                        Text(
                          "fade in image",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlutterLogo(
                          size: 80,
                        ),
                        Text(
                          "Flutter logo",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    color: Colors.orange.shade800,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Placeholder(
                            strokeWidth: 3,
                          ),
                        ),
                        Text(
                          "Placeholder",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Buttons",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () => debugPrint('onPressed! : cancel'),
                textColor: Colors.white,
                color: Colors.red.shade400,
                elevation: 12,
                child: Text(
                  "Cancel",
                ),
              ),
              RaisedButton(
                onPressed: () => debugPrint('onPressed! : accept'),
                color: Colors.green.shade400,
                textColor: Colors.white,
                elevation: 12,
                child: Text(
                  "Accept",
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.error,
                  color: Colors.red.shade400,
                ),
                onPressed: () => debugPrint('IconButton cancel'),
                iconSize: 40,
              ),
              IconButton(
                icon: Icon(
                  Icons.check,
                  color: Colors.green.shade400,
                ),
                onPressed: () => debugPrint('IconButton accept'),
                iconSize: 40,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () => debugPrint('FlatButton'),
                child: Text(
                  "Flat Button",
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
