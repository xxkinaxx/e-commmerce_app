part of '../pages.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Text('Wish List Page', style: primaryTextStyle,),
      ),
    );
  }
}
