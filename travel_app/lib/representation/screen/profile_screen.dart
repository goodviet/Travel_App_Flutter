import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helper.dart';
import 'package:travel_app/representation/page/mongo_log.dart';
import 'package:travel_app/representation/screen/dangky_screen.dart';
import 'package:travel_app/representation/screen/home_screen.dart';
import 'package:travel_app/representation/screen/signin_screen.dart';
import 'package:travel_app/representation/widgets/app_bar_container.dart';

import 'signup_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, this.token});
  static final String routeName = '/profile_screen';
final token;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    late String email;
    void initState() {
    // TODO: implement initState
    super.initState();
    // Map<String, dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);
    // email = jwtDecodedToken['email'];
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWidget(
      titlestring: "Tài khoản cá nhân",
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: ImageHelper.loadFromAsset(
                    AssetHelper.acc_1,
                  ),
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Text(
                "Minh Dat",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                // email,
                '',
              
                style: TextStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(SignupScreen.routeName);
                    Navigator.of(context).pushNamed(SiginScreen.routeName);
                  },
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 240, 195, 60),
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              // MENU
              ProfileMenuWidget(
                title: 'Cài đặt',
                icon: Icons.settings,
                onPress: (() {}),
              ),
              ProfileMenuWidget(
                title: 'Tài khoản',
                icon: Icons.account_balance,
                onPress: (() {}),
              ),
              // ProfileMenuWidget(
              //   title: 'Thông báo',
              //   icon: Icons.notifications_active,
              //   onPress: (() {}),
              // ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                  title: "Thông tin",
                  icon: Icons.medical_information,
                  onPress: (() {})),
              ProfileMenuWidget(
                title: "Đăng xuất",
                icon: Icons.logout,
                onPress: (() {}),
                endIcon: false,
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    // var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return ListTile(
      onTap: () {},
      leading: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromARGB(255, 99, 159, 208)),
        child: Icon(
          icon,
        ),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 190, 186, 186)),
              child: const Icon(
                Icons.arrow_right_alt,
                size: 18,
              ),
            )
          : null,
    );
  }
}
