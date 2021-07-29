import 'package:flutter/material.dart';
import 'package:clay_containers/clay_containers.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

Color primaryColor = Color(0XFF26282B);
Color activeColor1 = Color(0XFFED560D);
Color activeColor2 = Color(0XFFCD2A12);

List<Color> gradientColors = [activeColor1, activeColor2];

class ClayContainerPage extends StatefulWidget {
  const ClayContainerPage({Key? key}) : super(key: key);
  @override
  _ClayContainerPageState createState() => _ClayContainerPageState();
}

class _ClayContainerPageState extends State<ClayContainerPage> {
  var _value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          topAppBar(),
          SizedBox(height: 24),
          Container(
              height: 140,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listItem(
                    title: 'Air Conditioner',
                    subtitle: 'Panasonic CS-683683',
                    icon: Icons.tablet,
                    isActive: true,
                  ),
                  listItem(
                    title: 'Smart TV',
                    subtitle: 'Sony Bravia 72.82h',
                    icon: Icons.tv,
                  )
                ],
              )),
          SizedBox(
            height: 20,
          ),
          circularTempSlider(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Fan Speed',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          temperatureSlider(),
          Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.width * 0.4 + 32,
            child: StaggeredGridView.count(
              crossAxisCount: 5,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              staggeredTiles: [
                StaggeredTile.count(2, 2),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
                StaggeredTile.count(1, 1),
              ],
              children: [
                mainIconMenu(),
                MenuItem(iconName: Icons.search),
                MenuItem(iconName: Icons.wb_sunny),
                MenuItem(iconName: Icons.settings),
                MenuItem(iconName: Icons.data_usage),
                MenuItem(iconName: Icons.tap_and_play),
                MenuItem(iconName: Icons.assessment),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget mainIconMenu() {
    return ClayContainer(
      height: MediaQuery.of(context).size.width * 0.4,
      width: MediaQuery.of(context).size.width * 0.4,
      color: primaryColor,
      borderRadius: 12,
      child: Center(
        child: Icon(
          Icons.power_settings_new,
          color: activeColor2,
          size: 80,
        ),
      ),
    );
  }

  Widget temperatureSlider() {
    return Slider(
      value: _value,
      min: 0.0,
      max: 5.0,
      divisions: 5,
      activeColor: activeColor1,
      inactiveColor: Colors.black,
      onChanged: (newValue) {
        setState(() {
          _value = newValue;
        });
      },
      label: _value.toString(),
    );
  }

  Widget topAppBar() {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClayContainer(
              height: 40,
              width: 40,
              borderRadius: 10,
              color: primaryColor,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
            Text(
              'Living Room',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            ClayContainer(
              height: 40,
              width: 40,
              borderRadius: 10,
              color: primaryColor,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget listItem({
    required String title,
    required String subtitle,
    required IconData icon,
    bool isActive = false,
  }) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ClayContainer(
        height: 100,
        width: MediaQuery.of(context).size.width * 0.7,
        borderRadius: 12,
        color: primaryColor,
        child: Container(
          decoration: isActive
              ? BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      activeColor1,
                      activeColor2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12),
                )
              : null,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ListTile(
              leading: Icon(
                icon,
                color: Colors.white,
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              title: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget listItem2() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClayContainer(
        width: MediaQuery.of(context).size.width * .7,
        borderRadius: 12,
        color: primaryColor,
        child: Padding(
          padding: EdgeInsets.all(6),
          child: ListTile(
            leading: Icon(Icons.tv, color: Colors.white, size: 34),
            title: Text(
              'Smart TV',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            subtitle: Text(
              'Sony Bravia ED-09IU7',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget circularTempSlider() {
    return ClayContainer(
      height: 200,
      width: 200,
      color: primaryColor,
      borderRadius: 200,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SleekCircularSlider(
          onChange: (val) {
            print(val);
          },
          appearance: CircularSliderAppearance(
            customColors: CustomSliderColors(
              progressBarColor: activeColor1,
              hideShadow: true,
              shadowColor: Colors.transparent,
            ),
            infoProperties: InfoProperties(
              mainLabelStyle: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              modifier: (double value) {
                return '${value.toInt()} \u2103';
              },
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  const MenuItem({Key? key, required this.iconName}) : super(key: key);
  final IconData iconName;
  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(
          () {
            isSelected = !isSelected;
          },
        );
      },
      child: ClayContainer(
        height: MediaQuery.of(context).size.height * (1 / 7),
        width: MediaQuery.of(context).size.width * (1 / 7),
        borderRadius: 10,
        color: primaryColor,
        surfaceColor: isSelected ? activeColor2 : primaryColor,
        child: Icon(
          widget.iconName,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
