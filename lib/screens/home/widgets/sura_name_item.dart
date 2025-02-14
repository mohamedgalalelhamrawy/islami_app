import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/screens/home/models/sura_details_args.dart';
import 'package:islami_app/screens/home/widgets/sura_details_screen.dart';
import 'package:islami_app/utils/app_styles.dart';
import 'package:provider/provider.dart';

class SuraNameItem extends StatelessWidget {
  const SuraNameItem({super.key, required this.name, required this.verses,required this.index});
  final int verses;
  final String name;
  final int index;
  @override
  Widget build(BuildContext context) {
        var provider = Provider.of<AppConfigProvider>(context);
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, SuraDetailsScreen.routeName, arguments: SuraDetailsArgs(index, name));
            },
            child: Text(
              name,
              style: provider.appTheme == ThemeMode.light? AppStyles.titles :AppStyles.titles.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Text(
            verses.toString(),
            style: provider.appTheme == ThemeMode.light? AppStyles.titles :AppStyles.titles.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
