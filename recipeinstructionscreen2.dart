import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recipe/consent/colors.dart';
import 'package:recipe/screen/recipeinstructionscreen2.dart';

import 'recipeinstructionscreen2.dart';

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
                            'assets/images/massa.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Massa',
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontFamily: 'Poppins',
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
                            '500 g de carne moída\nSal, orégano e tempero verde a gosto.\n1 tomate\n1 cebola pequena\n1/2 pimentão\n2 colheres de massa de tomate ou 1 xícara de molho de tomate pronto.\nManjericão a gosto\nSal\n1 pacote de 500g de macarrão fresco\n',
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
                            'Misture a carne moída com os temperos.\nFaça bolinhas.\nColoque em uma travessa e leve ao microondas por cerca de 5 minutos.\nEnquanto cozinha as almôndegas, pique o tomate, a cebola e o pimentão.\nRefogue tudo.\nQuando o tomate desmanchar, acrescente o molho de tomate ou a massa de tomate, o manjericão (eu uso o desidratado mesmo) e 1/2 xícara de água. Deixe refogar.\nQuando terminar os 5 minutos do cozimento das almôndegas, retire a água que sobrar das almôndegas (eu não uso, quando esfria fica uma película de gordura e fico feliz de ter evitado de ingeri-la).\nAcrescente as almôndegas ao molho e deixe apurar um pouco mais.\nSalgue a gosto.\nFaça o macarrão conforme a embalagem.\nDepois de cozido o macarrão e acrescente o molho.\n',
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
