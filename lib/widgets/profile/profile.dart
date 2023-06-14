import 'package:flutter/material.dart';
import 'package:simblue/models/user.dart';
import 'package:simblue/theme/colors.dart';

class ProfileWidget extends StatelessWidget {
  final User user;

  const ProfileWidget(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset("assets/images/default_user.png", width: 44.0, height: 44.0),
      const SizedBox(width: 16.0),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(user.name, style: Theme.of(context).textTheme.labelMedium),
        const SizedBox(height: 4.0),
        Text(user.email,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.apply(color: Palette.gray700))
      ]),
    ]);
  }
}
