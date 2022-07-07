import 'package:flutter/material.dart';

import '../theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Theme'),
        ),
        body: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: customColors.success,
                    primary: Colors.white,
                  ),
                  child: const Text('Success'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: customColors.info,
                    primary: Colors.white,
                  ),
                  child: const Text('Info'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: customColors.warning,
                    primary: Colors.white,
                  ),
                  child: const Text('Warning'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: customColors.error,
                    primary: Colors.white,
                  ),
                  child: const Text('Error'),
                ),
              ],
            ),
          ),
        ));
  }
}
