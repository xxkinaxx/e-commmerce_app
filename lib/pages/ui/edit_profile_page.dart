part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context); 
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined, color: Colors.white,
          ),
        ),
        title: Text('Edit Profile', style: primaryTextStyle.copyWith(
          fontSize: 20,
          fontWeight: semiBold,
        ),),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/image_profile.png'),
              ),
            ),
            Text('Kina Mekoichi', style: primaryTextStyle,)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
