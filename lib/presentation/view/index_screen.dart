import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../application/routing/app_router.gr.dart';
import '../../utils/common_color/app_color.dart';
import '../view_model/main/main_provider.dart';
import '../view_model/main/main_view_model.dart';

///
@RoutePage()
class MainScreen extends StatelessWidget {
  ///
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainProvider(
      builder: (context, child) {
        final MainViewModel vm = Provider.of<MainViewModel>(
          context,
          listen: true,
        );
        return Builder(
          builder: (BuildContext context) {
            final MainViewModel vm = Provider.of<MainViewModel>(
              context,
              listen: true,
            );

            return AutoTabsScaffold(
              routes: <PageRouteInfo<dynamic>>[
                HomeRoute(),
                CompaignRoute(),
                NotificationRoute(),
                ProfileRoute(),
              ],
              bottomNavigationBuilder: (_, TabsRouter tabsRoute) {
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.appLightBlue,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.appBlue,
                        blurRadius: 2,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    child: Material(
                      // ✅ Wrap BottomNavigationBar inside Material
                      color:
                          Colors
                              .transparent, // Allows parent Container to show the color
                      child: BottomNavigationBar(
                        backgroundColor:
                            Colors
                                .transparent, // Ensure transparency to inherit Container's color
                        selectedItemColor: AppColors.appBlue,

                        unselectedItemColor: AppColors.black,

                        selectedLabelStyle: const TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color:
                              Colors.white, // Custom color for selected label
                        ),
                        unselectedLabelStyle: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color:
                              Colors.black, // Custom color for unselected label
                        ),
                        iconSize: 35,
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: CircleAvatar(
                              backgroundColor:
                                  tabsRoute.activeIndex == 0
                                      ? AppColors.appBlue
                                      : Colors.white,
                              child: Icon(
                                Icons.home,
                                size: 18,
                                color:
                                    tabsRoute.activeIndex == 0
                                        ? Colors.white
                                        : AppColors.appDarkGrey,
                              ),
                            ),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: CircleAvatar(
                              backgroundColor:
                                  tabsRoute.activeIndex == 1
                                      ? AppColors.appBlue
                                      : Colors.white,
                              child: Icon(
                                Icons.menu_book,
                                size: 18,
                                color:
                                    tabsRoute.activeIndex == 1
                                        ? Colors.white
                                        : AppColors.appDarkGrey,
                              ),
                            ),
                            label: 'Campaign',
                          ),
                          BottomNavigationBarItem(
                            icon: CircleAvatar(
                              backgroundColor:
                                  tabsRoute.activeIndex == 2
                                      ? AppColors.appBlue
                                      : Colors.white,
                              child: Icon(
                                size: 18,
                                Icons.notification_add,
                                color:
                                    tabsRoute.activeIndex == 2
                                        ? Colors.white
                                        : AppColors.appDarkGrey,
                              ),
                            ),
                            label: 'Notifications',
                          ),
                          BottomNavigationBarItem(
                            icon: CircleAvatar(
                              backgroundColor:
                                  tabsRoute.activeIndex == 3
                                      ? AppColors.appBlue
                                      : Colors.white,
                              child: Icon(
                                Icons.person,
                                size: 18,
                                color:
                                    tabsRoute.activeIndex == 3
                                        ? Colors.white
                                        : AppColors.appDarkGrey,
                              ),
                            ),
                            label: 'Profile',
                          ),
                        ],
                        currentIndex: tabsRoute.activeIndex,
                        onTap: (int index) async {
                          tabsRoute.setActiveIndex(index);
                          vm.selectedIndex == index;
                        },
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
