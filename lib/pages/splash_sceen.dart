import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              'headline1',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'headline2',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'headline3',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'headline4',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'headline5',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'headline6',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'subtitle1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'subtitle2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'bodyLarge',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'bodyMedium',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'bodySmall',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'bodyText1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'bodyText2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              'bodyText2',
            ),
            Text(
              'button',
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              'caption',
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              'overline',
              style: Theme.of(context).textTheme.overline,
            ),
            Text(
              'labelLarge',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              'labelMedium',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              'labelSmall',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              'displayLarge',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'displayMedium',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'displaySmall',
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
