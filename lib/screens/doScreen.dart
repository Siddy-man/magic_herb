import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class DoScreen extends StatefulWidget {
  const DoScreen({Key? key}) : super(key: key);

  @override
  _DoScreenState createState() => _DoScreenState();
}

class _DoScreenState extends State<DoScreen> {
  final List<String> images = [
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
    "https://image.freepik.com/free-vector/cosmetic-product-background_52683-205.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
              expandedHeight: 150.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Marketplace'),
                background: Image.network(images[0], fit: BoxFit.cover),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  tooltip: 'Favorites',
                  onPressed: () {/* ... */},
                ),
              ]),
          SliverToBoxAdapter(
            child: Container(
                color: Colors.deepOrange,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                          onPressed: () {},
                          child: Text("New Arrivals".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                      MaterialButton(
                          onPressed: () {},
                          child: Text("See All".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                    ],
                  ),
                )),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                  crossAxisCount: 2),
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return _buildItems(index, context);
                },
                childCount: images.length,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                margin: EdgeInsets.only(top: 20.0),
                color: Colors.redAccent,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      MaterialButton(
                          onPressed: () {},
                          child: Text("Deal Of The Day".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                      MaterialButton(
                          onPressed: () {},
                          child: Text("See All".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                    ],
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: _buildSlider(),
          ),
          SliverToBoxAdapter(
            child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.redAccent,
                child: Text("Recommended for you".toUpperCase(),
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return _buildListItem(index);
              },
              childCount: images.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSlider() {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      height: 200.0,
      child: Container(
        child: Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              images[index],
              fit: BoxFit.cover,
            );
          },
          itemCount: 4,
          pagination: new SwiperPagination(),
        ),
      ),
    );
  }

  Widget _buildItems(int index, BuildContext context) {
    return Container(
      height: 200,
      child: GestureDetector(
        onTap: () => _onTapItem(context, index),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Hero(
                    tag: "item$index",
                    child: Image.network(images[index % images.length],
                        fit: BoxFit.cover))),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Top Quality fashion item',
              softWrap: true,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Rs.1,254',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(int index) {
    return Container(
        height: 100,
        child: Card(
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(images[index % images.length]),
              ),
              title: Text(
                'Top Quality fashion item',
                softWrap: true,
              ),
              subtitle: Text(
                'Rs.1,254',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ),
        ));
  }

  _onTapItem(BuildContext pcontext, int index) {
    Navigator.of(pcontext)
        .push(MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Top quality fashion item'),
        ),
        body: Material(
          child: Container(
            // The blue background emphasizes that it's a new route.
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Hero(
                          tag: "item$index",
                          child: Image.network(images[index % images.length],
                              fit: BoxFit.cover))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Top Quality fashion item',
                    softWrap: true,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Rs.1,254',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }
}
