import 'package:flutter/material.dart';
import 'package:porfolio/constants/styles.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,),
          child: Text('Knowledge', style: TextStyles.style20extrabold,),
        ),
        const KnowledgeText(knowledge: 'Flutter, Dart',),
        const KnowledgeText(knowledge: 'Git, Github',),
      ],
    );
  }

}
