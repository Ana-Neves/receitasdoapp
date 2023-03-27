import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recipe/consent/colors.dart';
import 'package:recipe/screen/recipeinstructionscreen.dart';

import 'recipeinstructionscreen.dart';

class RecipeInstructionsScreenWidget extends StatefulWidget {
  const RecipeInstructionsScreenWidget({Key? key}) : super(key: key);

  @override
  _RecipeInstructionsScreenWidgetState createState() =>
      _RecipeInstructionsScreenWidgetState();
}

class _RecipeInstructionsScreenWidgetState
    extends State<RecipeInstructionsScreenWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black.withOpacity(0.1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: () async {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [],
        centerTitle: false,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(0)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/images/torta1.jpeg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Torta de Frango',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontFamily: 'Popins',
                              color: Colors.black,
                            ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 20.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            '500 g de peito de frango sem pele\n1/2 litro de caldo de galinha\n4 colheres (sopa) de óleo\n1 dente de alho amassado\n1 cebola picada\n3 tomates sem pele e sem sementes\n1 xícara (chá) de ervilhas\nsal e pimenta-do-reino a gosto\n250 ml de leite\n3/4 de xícara (chá) de óleo\n2 ovos\n1/2 xícara (chá) de farinha de trigo\nsal a gosto\n1 colher (sopa) de fermento em pó\nqueijo ralado a gosto\n',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFE0D3B7),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontFamily: 'Poppins',
                                        fontSize: 36,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                              child: Text(
                                'Modo de Preparo',
                                style: Theme.of(context).textTheme.headline3,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                          child: Text(
                            'Cozinhe o peito de frango no caldo até ficar macio.\nSepare 1 xícara (chá) de caldo do cozimento e reserve.\nRefogue os demais ingredientes e acrescente as ervilhas por último.\nDesfie o frango, misture ao caldo e deixe cozinhar até secar.\nBata o leite, o óleo e os ovos no liquidificador em velocidade baixa.\nAcrescente aos poucos a farinha, o sal e o fermento.\nDespeje metade da massa em uma forma untada e adicione o recheio sobre ela.\nCubra com o restante de massa e o queijo ralado.\nLeve ao forno preaquecido (180° C) até dourar.\n',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}