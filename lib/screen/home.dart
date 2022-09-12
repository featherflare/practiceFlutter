import 'package:flutter/material.dart';
import 'package:practice_ui/helper/config/themes/app_text_style.dart';
import 'package:practice_ui/helper/utility.dart';
import 'package:practice_ui/screen/Clipper/clipper.dart';
import 'package:practice_ui/screen/LibTest/ConcentricTransition/ConcentricTransition.dart';
import 'package:practice_ui/screen/LibTest/LiquidSwipe/LiquidSwipeExample.dart';
import 'package:practice_ui/screen/LibTest/Odometer/Odometer.dart';
import 'package:practice_ui/screen/LibTest/StaggeredGridViewExample/StaggeredGridViewExample.dart';
import 'package:practice_ui/screen/Login&SingUP/main.dart';
import 'package:practice_ui/screen/TestWidget/testCurveNavigationBar.dart';
import 'package:practice_ui/screen/TestWidget/testDrawer.dart';
import 'package:practice_ui/screen/TestWidget/testElastic.dart';
import 'package:practice_ui/screen/TestWidget/testRunNum.dart';
import 'package:practice_ui/screen/Widget%20Learning/1.%20TextStyle/testTextStyle.dart';
import 'package:practice_ui/screen/Widget%20Learning/10.%20PhysicalModel/testPhysicalModel.dart';
import 'package:practice_ui/screen/Widget%20Learning/11.%20ImageFiltered/testImageFiltered.dart';
import 'package:practice_ui/screen/Widget%20Learning/2.%20AutoComplete/testAutoComplete.dart';
import 'package:practice_ui/screen/Widget%20Learning/3.%20NavigationRail/testNavigationRail.dart';
import 'package:practice_ui/screen/Widget%20Learning/4.%20FocusableActionDetector/testFocusableActionDetector.dart';
import 'package:practice_ui/screen/Widget%20Learning/5.%20ScaffoldMessenger/testScaffoldMessenger.dart';
import 'package:practice_ui/screen/Widget%20Learning/6.%20DropDown/testDropDown.dart';
import 'package:practice_ui/screen/Widget%20Learning/7.%20Flow/testFlow.dart';
import 'package:practice_ui/screen/Widget%20Learning/8.%20RefreshIndicator/testRefreshIndicator.dart';
import 'package:practice_ui/screen/Widget%20Learning/9.%20RotatedBox/testRotatedBox.dart';
import 'package:practice_ui/screen/appWithIndicator/appWithIndicator.dart';
import 'package:practice_ui/screen/buttonAnimation/buttonAnimation.dart';
import 'package:practice_ui/screen/carousel/carousel.dart';
import 'package:practice_ui/screen/e-commerce/e-commerce.dart';
import 'package:practice_ui/screen/foodDelivery/foodDelivery.dart';
import 'package:practice_ui/screen/googleMap/GoogleMap.dart';
import 'package:practice_ui/screen/googleMap/pages/map_circles.dart';
import 'package:practice_ui/screen/homeService/page/start.dart';
import 'package:practice_ui/screen/inspiration/inspiration.dart';
import 'package:practice_ui/screen/loginPage/loginPage1.dart';
import 'package:practice_ui/screen/loginPage/loginPage2.dart';
import 'package:practice_ui/screen/matrix4Test/matrix4Test1.dart';
import 'package:practice_ui/screen/pageAnimation/pageAnimation.dart';
import 'package:practice_ui/screen/pageTransition/pageTransition.dart';
import 'package:practice_ui/screen/partyAndSplash/partyAndSplash.dart';
import 'package:practice_ui/screen/rippleAnimation/rippleAnimation.dart';
import 'package:practice_ui/screen/shoeShop/shoeShop.dart';
import 'package:practice_ui/screen/sockShop/sockShop.dart';
import 'package:practice_ui/screen/splashAndLogin/splashAndLogin.dart';
import 'package:practice_ui/screen/travel/travel.dart';
import 'package:practice_ui/screen/userProfile/userProfile.dart';
import 'package:practice_ui/screen/wallet/wallet.dart';
import 'package:practice_ui/screen/widgetAnimation/widgetAnimation.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> _isOpen = [
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        shadowColor: const Color(0xFFEDEDED),
        title: Text(
          "Practices Flutter UI",
          style: AppTextStyle.header1(),
        ),
      ),
      body: SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            ExpansionPanelList(
              animationDuration: Duration(milliseconds: 500),
              dividerColor: Colors.grey.shade50,
              elevation: 1,
              expandedHeaderPadding: EdgeInsets.all(0),
              children: [
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Text(
                        'UI Animate Practice',
                        style: AppTextStyle.body1(),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RouteText(
                        text: "Inspiration App",
                        number: 1,
                        page: Inspiration(),
                      ),
                      RouteText(
                        text: "PageAnimation Trip",
                        number: 2,
                        page: PageAnimation(),
                      ),
                      RouteText(
                        text: "Food Delivery App",
                        number: 3,
                        page: StarterPage(),
                      ),
                      RouteText(
                        text: "User Profile App",
                        number: 4,
                        page: UserProflie(),
                      ),
                      RouteText(
                        text: "Ripple Animation",
                        number: 5,
                        page: RippleAnimation(),
                      ),
                      RouteText(
                        text: "PageTransition Trip",
                        number: 6,
                        page: PageTransition(),
                      ),
                      RouteText(
                        text: "Button Animation",
                        number: 7,
                        page: ButtonAnimation(),
                      ),
                      RouteText(
                        text: "Splash and Login App",
                        number: 8,
                        page: SplashAndLogin(),
                      ),
                      RouteText(
                        text: "Party App & Splash",
                        number: 9,
                        page: PartyAndSplash(),
                      ),
                      RouteText(
                        text: "Travel App",
                        number: 10,
                        page: TravelPage(),
                      ),
                      RouteText(
                        text: "Login Page 1",
                        number: 11,
                        page: LoginPage1(),
                      ),
                      RouteText(
                        text: "Login Page 2",
                        number: 12,
                        page: LoginPage2(),
                      ),
                      RouteText(
                        text: "Shoe Shopping App",
                        number: 13,
                        page: ShoeShop(),
                      ),
                      RouteText(
                        text: "E-commerce App",
                        number: 14,
                        page: EComApp(),
                      ),
                      RouteText(
                        text: "Carousel & Animation",
                        number: 15,
                        page: CarouselTest(),
                      ),
                      RouteText(
                        text: "Socks Shop App",
                        number: 16,
                        page: SocksShop(),
                      ),
                      RouteText(
                        text: "App With Indicator",
                        number: 17,
                        page: AppWithIndicator(),
                      ),
                      RouteText(
                        text: "Login And SignUp Page",
                        number: 18,
                        page: MainLoginNSignUp(),
                      ),
                      RouteText(
                        text: "Home Services App",
                        number: 19,
                        page: StartPage(),
                      ),
                      RouteText(
                        text: "Widget Animation",
                        number: 20,
                        page: WidgetAni(),
                      ),
                      RouteText(
                        text: "Wallet App",
                        number: 21,
                        page: WalletApp(),
                      ),
                      RouteText(
                        text: "Clipper Practice",
                        number: 22,
                        page: ClipperTest(),
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[0],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Text(
                        'Widget Learning',
                        style: AppTextStyle.body1(),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RouteText(
                        text: "TextStyle",
                        number: 1,
                        page: TestTextStyle(),
                      ),
                      RouteText(
                        text: "AutoComplete",
                        number: 2,
                        page: TestAutoComplete(),
                      ),
                      RouteText(
                        text: "NavigationRail",
                        number: 3,
                        page: TestNavigationRail(),
                      ),
                      RouteText(
                        text: "FocusableActionDetector",
                        number: 4,
                        page: TestFAD(),
                      ),
                      RouteText(
                        text: "ScaffoldMessenger",
                        number: 5,
                        page: TestScaffoldMessenger(),
                      ),
                      RouteText(
                        text: "DropdownButton",
                        number: 6,
                        page: TestDropDown(),
                      ),
                      RouteText(
                        text: "Flow",
                        number: 7,
                        page: TestFlow(),
                      ),
                      RouteText(
                        text: "RefreshIndicator",
                        number: 8,
                        page: TestRefreshIndicator(),
                      ),
                      RouteText(
                        text: "RotatedBox",
                        number: 9,
                        page: TestRotatedBox(),
                      ),
                      RouteText(
                        text: "PhysicalModel",
                        number: 10,
                        page: TestPhysicalModel(),
                      ),
                      RouteText(
                        text: "ImageFiltered",
                        number: 11,
                        page: TestImageFiltered(),
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[1],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Text(
                        'Package Interest',
                        style: AppTextStyle.body1(),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RouteText(
                        text: "ConcentricTransition",
                        number: 1,
                        page: ConcentricTransition(),
                      ),
                      RouteText(
                        text: "Odometer",
                        number: 2,
                        page: OdometerTest(),
                      ),
                      RouteText(
                        text: "StaggeredGridView",
                        number: 3,
                        page: StaggeredGridViewExample(),
                      ),
                      RouteText(
                        text: "LiquidSwipe",
                        number: 4,
                        page: LiquidSwipeExample(),
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[2],
                ),
                ExpansionPanel(
                  canTapOnHeader: true,
                  headerBuilder: (context, isOpen) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: Text(
                        'Widget Animation',
                        style: AppTextStyle.body1(),
                      ),
                    );
                  },
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      RouteText(
                        text: "Matrix4 Rotation",
                        number: 1,
                        page: TestMatrixSimple(),
                      ),
                      RouteText(
                        text: "Drawer",
                        number: 2,
                        page: TestDrawer(),
                      ),
                      RouteText(
                        text: "Elastic Drawer",
                        number: 3,
                        page: TestElastic(),
                      ),
                      RouteText(
                        text: "Count Numbers",
                        number: 4,
                        page: TestRunNum(),
                      ),
                      RouteText(
                        text: "Curve NavBar & Dot Indicator",
                        number: 4,
                        page: TestCurveNavBar(),
                      ),
                    ],
                  ),
                  isExpanded: _isOpen[3],
                ),
              ],
              expansionCallback: (i, isOpen) => setState(() {
                _isOpen[i] = !isOpen;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
