import 'package:flutter/material.dart';
import 'package:kar_amad/MainScreens/DoctorProfile.dart';
import 'package:path/path.dart' as Path;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: const Text(
          "Search",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "NearBy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "see all>",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                buildCard(context),
                buildCard(context),
                buildCard(context),
                buildCard(context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: new AspectRatio(
                aspectRatio: 300 / 60,
                child: new Container(
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Image.asset("Assets/icons/plus.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: Text(
                              "Emergency",
                              style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const Text(
                            "Urgent care open 24 hours nearby",
                            style: const TextStyle(
                                fontSize: 16, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: new AspectRatio(
                aspectRatio: 300 / 30,
                child: new Container(
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          const BoxShadow(
                              color: Colors.white70, spreadRadius: 3)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text("| Top Rated "),
                                const Icon(Icons.pin_drop),
                              ],
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text("| Sort by"),
                                const Icon(Icons.sort),
                              ],
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                const Text("| Filter"),
                                const Icon(Icons.filter),
                              ],
                            )),
                      ],
                    )),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 400,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                VerticalbuildCard(context),
                const SizedBox(
                  height: 10,
                ),
                VerticalbuildCard(context),
                const SizedBox(
                  height: 10,
                ),
                VerticalbuildCard(context),
                const SizedBox(
                  height: 10,
                ),
                VerticalbuildCard(context),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCard(BuildContext context) => Container(
    width: 100,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DoctorProfile())),
          child: CircleAvatar(
            backgroundColor: Colors.amber,
            child: Image.asset(
              "Assets/icons/account-icon.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Text(
          "John Doe",
          style: TextStyle(fontSize: 12),
        )
      ],
    ));

Widget VerticalbuildCard(BuildContext context) => Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Container(
          height: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      boxShadow: const [
                        BoxShadow(color: Colors.white70, spreadRadius: 3)
                      ]),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorProfile())),
                    child: Image.asset(
                      "Assets/icons/account-icon.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "John Doe",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    "4km away",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Text(
                    "****",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          )),
    );

class MySearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(
              Icons.clear,
              color: Colors.black,
            ))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 64, fontWeight: FontWeight.normal),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = ['brazil', 'China', 'India', 'Russia', 'USA'];

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;

              showResults(context);
            },
          );
        });
  }
}
