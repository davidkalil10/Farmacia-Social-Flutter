import 'package:farmacia_social/widgets/faq.dart';
import 'package:flutter/material.dart';

class Duvidas extends StatefulWidget {
  const Duvidas({Key? key}) : super(key: key);

  @override
  _DuvidasState createState() => _DuvidasState();
}

class _DuvidasState extends State<Duvidas> {
  late List<NewItem> items = [];

  _carregarPerguntas() {
    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Tenho remédios que não utilizo mais. Como faço para doá-los?",),
            NewPanelItem(value: "Basta se cadastrar em nossa plataforma e criar um anúncio dos medicamentos?",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "O que preciso para solicitar um medicamento?",),
            NewPanelItem(value: "Com a receita em mãos, busque o medicamento que necessita e solicite-o",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Como posso enviar minha receita médica?",),
            NewPanelItem(value: "Ao encontrar o medicamento que necessita, você deverá anexá-la ao realizar o pedido",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Gostaria de ser um parceiro, como faço?",),
            NewPanelItem(value: "Primeiramente, seja bem vindo(a) 😄. Entre em contato conosco que retornaremos em breve",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Quais estados/cidades são cobertos?",),
            NewPanelItem(value: "A principio atendemos apenas São Paulo capital, porém logo estaremos por todo o país!",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Posso solicitar remédios para terceiros?",),
            NewPanelItem(value: "Não. Apenas o titular da receita pode solicitar o medicamento",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Em que farmácia irei retirar os medicamentos?",),
            NewPanelItem(value: "Após confirmação do pedido, enviaremos a você o dia, horário e endereço para retirar o medicamento",isQuestion: false,))
    );

    items.add(
        NewItem(
            false,
            NewPanelItem(value: "Como sei que os remédio está em perfeita condição?",),
            NewPanelItem(value: "Todos os medicamentos doados passam por uma triagem em uma de nossas farmácias parceiras, e só depois você será notificado para retirar caso tudo esteja OK",isQuestion: false,))
    );


  }

  @override
  void initState() {
    super.initState();
    _carregarPerguntas();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;
        double alturaBanner = largura < 960 ? 150 : 300;

        return Scaffold(
          body: Container(
            padding: EdgeInsets.fromLTRB(16, (16 + alturaBarra), 16, 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: alturaBanner,
                    //color: Colors.lightBlueAccent,
                    child: Center(
                      child: Text(
                        "Como podemos te ajudar?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ExpansionPanelList(
                      children: [
                        ExpansionPanel(
                          canTapOnHeader: true,
                            isExpanded: items[0].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[0].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[0].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[1].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[1].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[1].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[2].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[2].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[2].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[3].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[3].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[3].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[4].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[4].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[4].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[5].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[5].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[5].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[6].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[6].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[6].body,),
                            )),
                        ExpansionPanel(
                            canTapOnHeader: true,
                            isExpanded: items[7].isExpanded,
                            headerBuilder: (_, isOpen) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: items[7].header,
                              );
                            },
                            body: Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, left: 16, bottom: 16),
                              child: Align(alignment: Alignment.centerLeft,child: items[7].body,),
                            )),
                      ],
                      dividerColor: Colors.blueGrey,
                      expandedHeaderPadding: EdgeInsets.all(8),
                      // animationDuration: Duration(milliseconds: 500),
                      expansionCallback: (i, isOpen) {
                        setState(() {
                          items[i].isExpanded = !isOpen;
                        });
                      })
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
