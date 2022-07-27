import 'package:flutter/cupertino.dart';
import 'package:flutterfire_ui/auth.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providerConfigs: const [
        EmailProviderConfiguration(),
      ],
      actions: [
        AuthStateChangeAction<SignedIn>(
          (context, _) {
            Navigator.of(context).pop();
          },
        ),
      ],
      avatarSize: 24,
    );
  }
}
