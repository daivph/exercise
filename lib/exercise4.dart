import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework/api/rest_client.dart';

import 'custom_widgets/circle_image_widget.dart';
import 'models/user.dart';

class Exercise4 extends StatefulWidget {
  @override
  _Exercise4State createState() => _Exercise4State();
}

class _Exercise4State extends State<Exercise4> {
  final dio = Dio();
  Future<User> _futureUser;
  @override
  void initState() {
    super.initState();
    _futureUser = fetchMe();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise 4'),
        actions: [
          IconButton(
              icon: Icon(Icons.swap_horiz),
              onPressed: () {
                if (Get.isDarkMode)
                  Get.changeThemeMode(ThemeMode.light);
                else
                  Get.changeThemeMode(ThemeMode.dark);
              })
        ],
      ),
      body: Container(
        child: FutureBuilder<User>(
          future: _futureUser,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                var user = snapshot.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: CircleImageWidget(
                          size: 120,
                          url: user.results?.first?.picture?.thumbnail ?? ''),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      '${user.results?.first?.name?.title ?? ''} ${user.results?.first?.name?.first ?? ''} ${user.results?.first?.name?.last ?? ''}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('${user.results?.first?.email ?? ''}',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(
                      height: 8,
                    ),
                    Text('${user.results?.first?.phone ?? ''}',
                        style: TextStyle(fontSize: 16)),
                  ],
                );
              } else {
                return Center(
                  child: Text('Load me empty!'),
                );
              }
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Load me error!'),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Future<User> fetchMe() async {
    var client = RestClient(dio);
    return client.getMe();
  }
}
