part of '../pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        title: Text(
          'Profile',
          style: primaryTextStyle,
        ),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget menuItem(String title) {
      return Container(
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: backgroundColor4,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Text(title, style: primaryTextStyle,),
            Spacer(),
            Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,)
          ],
        ),
      );
    }

    Widget content(){
      return Expanded(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Account', style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold
              ),),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/edit-profile');
                },
                  child: menuItem('Edit Profile')
              ),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Your Orders')
              ),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Help')
              ),
              SizedBox(height: 20,),
              Text('General', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold
              ),),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Privacy & Policy')
              ),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Terms of Service')
              ),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Rate App')
              ),
              GestureDetector(
                  onTap: (){},
                  child: menuItem('Help Center')
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        content()
      ],
    );
  }
}
