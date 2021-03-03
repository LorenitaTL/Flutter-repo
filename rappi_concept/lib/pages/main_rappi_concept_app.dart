import 'package:flutter/material.dart';

const _backgroundColor = Color(0xFFF6F9FA);
const _blueColor = Color(0xFF0D1863);
const _greenColor = Color(0xFF2BBEBA);
const _categoryHeight = 55.0;
const _productHeight = 100.0;

class MainRappiConceptApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(data: ThemeData.light(), child: _RappiConcept());
  }
}

class _RappiConcept extends StatefulWidget {
  @override
  __RappiConceptState createState() => __RappiConceptState();
}

class __RappiConceptState extends State<_RappiConcept>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _backgroundColor,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
                color: Colors.white,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Homepage',
                          style: TextStyle(
                              fontSize: 20,
                              color: _blueColor,
                              fontWeight: FontWeight.bold)),
                      Spacer(),
                      CircleAvatar(
                          backgroundColor: _greenColor,
                          child: Icon(Icons.account_circle,
                              size: 40, color: Colors.white))
                    ],
                  ),
                )),
            Container(
                height: 60,
                child: TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    indicatorWeight: 0.1,
                    tabs: List.generate(10, (index) => _RappiTabWidget()))),
            Expanded(
              child: Container(
                  color:Colors.blue,
                  child: ListView.builder(
                    padding:EdgeInsets.symmetric(horizontal:20),
                    itemBuilder: (_, i) {
                    if (i.isOdd) {
                      return _RappiCategoryItem();
                    } else {
                      return _RappiProductItem();
                    }
                  })),
            )
          ]),
        ));
  }
}

class _RappiTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Pizzas',
              style: TextStyle(
                  color: _blueColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ));
  }
}

class _RappiCategoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        height: _categoryHeight,
        alignment: Alignment.centerLeft,
        child: Text('Category',
            style: TextStyle(
                color: _blueColor, fontWeight: FontWeight.bold, fontSize: 15)));
  }
}

class _RappiProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:_productHeight,
      child: Text('Product'));
  }
}
