
## SUMÁRIO

___

#### Aula 01  

#### Aula 02

#### Aula 03

#### Aula 04

- [Componentização](#aula-04---componentização)
- [.](.)

#### Aula 05

- [Navegação Modular](#aula-05---navegação-modular)  
  - [Navegação Nativa do Flutter - Sistema de Rotas](#navegação-nativa-do-flutter---sistema-de-rotas)
    - [Inicio](#aula5-inicio)
    - [Criando uma Nova Página](#aula5-criando-nova-pagina)
    - [Adicionando a Página de Configurações à Rota](#aula5-adicionando-pagina-configuracoes-rota)
    - [Item clicável no Menu Drawer](#aula5-item-clicavel-menu-drawer)
    - [Fechando o Drawer](#aula5-fechando-drawer)
    - [Criando a Página de Edição da Lista](#aula5-criando-pagina-edicao-lista)
    - [Adicionando a Página de Edição da Lista à Rota](#aula5-adicionando-pagina-edicao-lista-rota)
    - [Criando Ação de click no FloatingButton Nova Lista](#aula5-criando-click-floating-button-nova-lista)
  - [Flutter Modular - Sistema de Rotas](#flutter-modular---sistema-de-rotas)  
    - [Instalando o Flutter Modular](#aula5-InstalandoFlutterModular)
    - [Chamando o HomeModule() dentro do App principal](#aula5-ChamandoHomeModuleAppPrincipal)
    - [Escutando todas as Rotas](#aula5-EscutandoTodasRotas)
    - [Setando a Rota inicial do Modular](#aula5-SetandoRotaInicialModular)
    - [Resolvendo problemas internos na HomePage()](#ResolvendoProblemasInternosHomePage)

#### Aula 06  

- [Refatoração](#aula-06---refatoração)
  - [Dica - Self Explanatory Variable](#aula6-SelfExplanatoryVariable)

#### Aula 07

- [Gerenciamento e Distribuição de Estado](#gerenciamento-e-distribuição-de-estado)
  - [Definindo a ListView()](#definindo-a-listview)
    - [Título da Lista](#aula7-TituloLista)
    - [Caixa de Seleção](#aula7-CaixaSelecao)
    - [Botão Apagar Cache e Reiniciar App](#aula7-BotaoApagarCacheReiniciarApp)
    - [Finalizando o ListView](#aula7-FinalizandoListView)
  - [Criando um Gerenciamento de Estado](#criando-um-gerenciamento-de-estado)
    - [Iniciando o Gerenciamento](#aula7-IniciandoGerenciamento)
    - [Trasporte e Distribuição do Estado](#aula7-TrasporteDistribuicaoEstado)
    - [Como utilizar o Modular para distribuir a AppStore() para toda a Aplicação](#aula7-ComoUtilizarModularDistribuirAppStore)
    - [Criando o método changeThemeMode()](#aula7-CriandoMetodoChangeThemeMode)
    - [Encurtando código com método tear-offs](#aula7-EncurtandoCodigoMetodotear-offs)

#### Aula 08

- [Persistência de Dados](#persistência-de-dados)
  - [Dados das Configurações](#dados-das-configurações)
  - [Criando e definindo o método init()](#criando-e-definindo-o-método-init)
  - [Criando e definindo o método save()](#criando-e-definindo-o-método-save)
  - [Criando e definindo o método syncDate()](#criando-e-definindo-o-método-syncdate)
  - [Adicionando o filtro syncDate()](#adicionando-o-filtro-syncdate)
  - [Adicionando e definindo valor da variável syncDateText](#adicionando-e-definindo-valor-da-variável-syncdatetext)
  - [Definindo a formatação da Data de syncDateText](#definindo-a-formatação-da-data-de-syncdatetext)
  - [Formatando a Data para aparecer no final da linha](#formatando-a-data-para-aparecer-no-final-da-linha)
- [Criando Base de Dados do Realm](#criando-base-de-dados-do-realm)
  - [Modelo da Tabela na Base de Dados](#modelo-da-tabela-na-base-de-dados)
  - [Adicionando Valores padrão à Base de Dados](#adicionando-valores-padrão-à-base-de-dados)
  - [Criando uma instancia do config do Realm](#criando-uma-instancia-do-config-do-realm)
- [Criando Serviço de Configuração](#criando-serviço-de-configuração)
  - [Classe Abstrata](#aula8-ClasseAbstrata)
  - [Classe Concreta](#aula8-ClasseConcreta)
    - [Injeção de Dependência](#aula8-InjectDependencyConcreta)
    - [Método Obter Configuração - getConfiguration()](#aula8-MetodoObterConfig)
    - [Método Salvar Configuração - saveConfiguration()](#aula8-MetodoSalvarConfig)
    - [Método de Deletar Tudo - deleteAll()](#aula8-MetodoDeletarTudo)
    - [Adicionar Classe Concreta na Injeção de Dependência](#AddClasseConcretaInjectDependency)
  - [Iniciando o Banco de Dados](#iniciando-o-banco-de-dados)
  - [Salvando o Banco de Dados](#salvando-o-banco-de-dados)
  - [Função Apagar Cache](#função-apagar-cache)

#### Aula 09

- [Relacionamento de Tabelas no Realm](#relacionamento-de-tabelas-no-realm)
  - [Classe _Task](#aula9-ClasseTask)
  - [Classe _TaskBoard](#aula9-ClasseTaskBoard)
  - [Separando as Classes Task e TaskBoard](#separando-as-classes-task-e-taskboard)
- [Configurando Base de Dados Realm](#configurando-base-de-dados-realm)

#### Aula 10

- [Criação de Widget Customizado](#criação-de-widget-customizado)
  - [Criando o Widget TaskCard()](#criando-o-widget-taskcard)
  - [Componentização dos Itens da TaskCard()](#componentização-dos-itens-da-taskcard)
  - [Atribuindo Valor à Variável Dinamicamente](#atribuindo-valor-à-variável-dinamicamente)
  - [Função getProgress() - Barra de Progresso](#função-getprogress---barra-de-progresso)
    - [Teste Unitário](#teste-unitário)
  - [Cálculo da Barra de Progresso](#cálculo-da-barra-de-progresso)
  - [Criando um Enum com Propriedades](#criando-um-enum-com-propriedades)
  - [Criando o Método getStatus()](#criando-o-método-getstatus)
  - [Criando o Método getBackgroundColor()](#criando-o-método-getbackgroundcolor)
  - [Criando o Método getColor()](#criando-o-método-getcolor)
    - [CORREÇÃO ERRO OVERFLOW BARRA DE PROGRESSO](#aula10-erroOverflow)
  - [Modificando a HomePage()](#modificando-a-homepage)

___

# ANOTAÇÕES

___

## Aula 01 -  

## Aula 02 -  

## Aula 03 -  

[^ Sumário ^](#aula-04)

## Aula 04 - Componentização  

Para se realizar uma componentização, precisamos ver se o componente precisa ou não ser componentizado, pois, isso pode muitas vezes atrapalhar a leitura do código. Usar somente para diminuir o código não é muito viável, mas se for para diminuir a complexidade do componente, aí sim é viável.  

A pergunta que deve ser feita é:  
Os componentes que serão retirados da tela e serão separados, fazem parte de qual desses dois contextos?  
***Contexto global:*** onde ele é usando em mais de uma tela;  
***Contexto local:*** onde ele só é utilizado naquela página.  

Agora iremos criar a página Home, onde conterá o menu drawer, um user avatar, um segmented button, o card contendo a lista e por fim o floating button.  
E precisaremos verificar se devemos ou não separar *(componentizar)* algum componente.  

- Primeiro, precisamos criar uma pasta chamada ```home``` dentro de ```/lib/src/``` onde iremos salvas tudo relacionado a home, dentro dela.  
- Agora iremos criar o arquivo ```home_page.dart``` e todos os widgets relacionados serão colocados dentro da pasta home.  
- Dentro de home_page.dart, com o comando ```stl``` iremos criar um ```StatelessWidget``` com o nome de: ```HomePage```, onde será recriado o ```Scaffold()```

    ```dart
    import 'package:flutter/material.dart';

    class HomePage extends StatelessWidget {
      const HomePage({super.key});

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('LISTINHA'),
          ),
        );
      }
    }
    ```

  Agora podemos utilizar o widget ```HomePage()``` que acabamos de criar e chamá-lo em nosso ```app_widget.dart``` em nossa ```home:```

    ```dart
    ...
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
    >>>   home: const HomePage(),
        );
      }
    }
    ```

  Com isso, não precisamos mais do código gerado automaticamente quando o app foi criado.  

    ```dart
    import 'package:flutter/material.dart';
    import 'src/shared/app_widget.dart';

    void main() {
      runApp(const AppWidget());
    }
    ```

- Agora irenos criar o componente mais simples que será o ```FloatingActionButton()``` sendo que, a forma que ele será utilizado na aplicação a formas mais estendida, e para isso, iremos utilizar o ***construtor*** ``.extended`` do próprio FloatingButton, onde precisará de um ```icon: Icon(Icons.edit)``` e de um ```label: Text('Nova Lista'),```.

    ```dart
          floatingActionButton: FloatingActionButton.extended(
            icon: const Icon(Icons.edit),
            label: const Text('Nova Lista'),
            onPressed: ()=>{},
          ),
    ```

  Este componente precisa ser componentizado?  
  Não, ele não precisa, pois, ele já é bem abstraído e é de fácil leitura no código.

- Agora iremos construir o componente ```CircleAvatar()```, nele conterá uma letra do nome do usuário.  
Para isso, dentro do ```AppBar()```, iremos criar um action: que conterá o ```CircleAvatar(),``` e dentro dele conterá um ```child: Text('A'),``` com o texto contendo a letra da inicial do nome.  
Para que ele fique com o circulo pintado precisamos adicionar um ```backgroundColor: Theme.of(context).primaryColor``` pegando a cor do tema.  

  ```dart
        appBar: AppBar(
          title: const Text('LISTINHA'),
  >>>>    actions: [
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              child: const Text('A'),
            ),
          ],
        ),
  ```  

  E o botão, irá aumentar futuramente com mais componentes ficando assim mais complexo, então, convém que ele seja ***componentizado*** e como este componente será usado em outras partes do app, ele será criado ***globalmente***.  
  Para isso, iremos criar dentro de ```src/shared``` uma pasta chamada ```widgets``` e lá dentro iremos criar um componente chamado ```user_image_button.dart``` que será nosso ***CircleAvatar()***.  

    ```dart
    src/shared/widgets/user_image_button.dart

    import 'package:flutter/material.dart';

    class UserImageButton extends StatelessWidget {
      const UserImageButton({super.key});

      @override
      Widget build(BuildContext context) {
        return GestureDetector(
    >>    child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            child: const Text('A'),
          ),
        );
      }
    }
    ```
  
    E será chamado desta forma no arquivo ***home_page.dart*** foi adicionado um ```padding:``` à direita para que não fique grudado no canto da tela.  

    ```dart
    ...
            actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
    >>>>    child: UserImageButton(),
          ),
        ],
      ),
    ...  
    ```

- O próximo a ser criado será o seguimento de botões, que terá o componente ```Column()``` e em um de seus filhos ```children:``` serão colocados os botões dentro de ```SegmentedButton<int>()``` por enquanto os segmentos serão definidos como inteiros ```<int>``` e o selecionado ```selected:``` terá o valor ```0```.  
E os segmentos ```segments:``` terá uma lista ```[]``` de ```ButtonSegment()``` contendo ```value:``` e ```label:```.  
Logo depois serão criadas cópias destes segments criando assim os outros botões que serão: ***Todos, Pendentes, Concluídos e Desativados***.  
Foi adicionado um ```Padding()``` em toda a coluna para que não fique grudada nos outros componentes e nem na tela.

  ```dart
  home_page.dart

  ...
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SegmentedButton(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('Todos'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pendentes'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Concluídos'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Desativados'),
                  ),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            ),
          ],
        ),
      ),
  ...
  ```

  Para que o botão possa parecer corretamente selecionado, é preciso colocar uma função que escute a seleção setando o valor selecionado ```values```.

    ```dart
    ...
                ButtonSegment(
                  value: 3,
                  label: Text('Desativados'),
                ),
              ],
              selected: const {0},
    >>>>      onSelectionChanged: (values) {},
            ),
          ],
        ),
      ),
    ...
    ```

  O próximo passo será a criação do tema para o ```SegmentedButton()```.  
  Dentro de themes.dart, iremos adicionar o elemento ```segmentedButtonTheme:``` e adicionaremos o ```SegmentedButtonThemeData()``` e dentro iremos personalizar todos os seus elementos, lembrando, que cada um de seus segmentos é um ```ButtonStyle```.  
  - ***style: ButtonStyle*** - é o botão de cada segmento e dentro de ***ButtonStyle*** existem diversas propriedades que podem ser utilizadas;
  - ***textStyle:*** é a propriedade que edita o texto e ele recebe o ```MaterialStateProperty```;
  - ***MaterialStateProperty*** ele basicamente inicia algo, sempre esperando um ***tipo*** que pode ser ***nulo***, *que em nosso caso é um* ```TextStyle()?```, mas, ele sempre estará esperando que ```MaterialStateProperty``` retorne ```return``` uma função, e que ele tenha um ***Gerenciamento de Estado*** dentro dela, e através deste gerenciamento de estado ele trará as modificações necessárias para o projeto.  
  - O MaterialStateProperty pede um ```.resolveWith<TextStyle>``` tipado com um ***TextStyle***.  
  ```((states) => null)``` aqui, entramos no gerenciamento de estado propriamente dito:  
  Os estados ```states``` é uma lista de coisas que podem acontecer com os botões, que por enquanto, irá retornar somente um ***TextStyle()*** ```return = TextStyle()```.  
  Se o botão estiver selecionado ```selected``` o ```TextStyle()``` passará a ter o tamanho do texto nove ```fontSize = 9``` e se não estiver selecionado, terá o texto de tamanho onze ```fontSize = 11```.

    ```dart
    themes.dart

          segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return const TextStyle(
                    fontSize: 9,
                  );
                }
                return const TextStyle(
                  fontSize: 11,
                );
              },
            ),
          ),
        ),
    ```

    Criar o getter privado do ```_segmentedButtonTheme``` para poder adicionar nos temas light e dark.  

    ```dart
    themes.dart
    
    ...
    SegmentedButtonThemeData get _segmentedButtonTheme => SegmentedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (states) {
            if (states.contains(MaterialState.selected)) {
              return const TextStyle(
                fontSize: 8,
              );
            }
            return const TextStyle(
              fontSize: 11,
            );
          },
        ),
      ),
    );
    ```

    Adicionando no tema light e dark:  

    ```dart
    tema_light

    ...
          floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColorScheme.primary,
        foregroundColor: _lightColorScheme.onPrimary,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );
    ...

    ...
    tema_dark
    
    ...
          floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _darkColorScheme.primary,
        foregroundColor: _darkColorScheme.onPrimary,
      ),
      segmentedButtonTheme: _segmentedButtonTheme,
    );
    ...
    ```

    > ***Dica:*** para descobrir como os componentes e propriedades do Flutter funcionam, digite no google: flutter mais a propriedade ou componente + api que irá diretamente para a API da documentação do flutter.

    Em relação a componentização, esse nosso componente não precisa ser componentizado, pois, ele já é bem descritivo e de fácil leitura do código.  
    Agora, se o pensamento de componentizar algo for para diminuir linhas de código, é um pensamento errado e vai atrapalhar na manutenção do código mais adiante, então, só use a componentização se o componente estiver muito complexo (um componente dentro do outro) ou se for para utilizar em outro lugar também.

- ***Componente Drawer:*** dentro do componente ```Scaffold()``` definimos a propriedade ```drawer:``` ela precisa de um ```NavigationDrawer()``` e dentro dele definimos a propriedade ```children:``` contendo uma lista ```[]``` e dentro dela teremos um ```Text()``` que será o Título do menu e ainda dentro da lista de ***children: []*** teremos um ```NavigationDrawerDestination()```contendo as propriedades ```icon:``` contendo o ícone e ```label:``` contendo a descrição do item.  
  - Como o título do menu está colado em todos os cantos, será adicionado um ```Padding()``` no componente ```Text()``` para que fique mais condizente com o mockup e mais harmonioso.  
  Foi utilizado a propriedade ```padding:``` juntamente com o componente ```EdgeInsets.fromLTRB(16, 28, 16, 16),``` note, que foi utilizado o método ***.fronLTRB*** que são as definições de Left, Top, Right e Bottom, não sendo necessário usar os parâmetros nomeados e inserindo os valores correspondentes aos parâmetros posicionais.  
  Agora iremos estilizar o Título do Menu deixando ele em negrito, para isso, iremos utilizar a propriedade ```style:``` juntamente com o componente ```Theme.of(context).textTheme.titleSmall,``` onde, o Theme através do método ```.of(context)``` pega o tema do contexto ```.textTheme``` e aplica no título ```.titleSmall```, poderia ser usado diversos outros temas disponíveis.  
  - Agora iremos adicionar uma data ao item de sincronização e para isso, iremos cercar o ```Text()``` referente ao item de sincronização com uma ```Row()``` e iremos adicionar mais uma propriedade ```Text()``` contendo a data e a hora.  
  Foi utilizado um ```SizedBox()``` com 10 de largura ```width: 10``` e uma estilização utilizando o método ```.labelSmall``` assim como foi feito no Título.  
  
    Segue abaixo o código com tudo o que foi feito:  

    ```dart
    home_page.dart

    ...
          drawer: NavigationDrawer(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
              child: Text(
                'Opções',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            NavigationDrawerDestination(
              icon: const Icon(Icons.sync),
              label: Row(
                children: [
                  const Text('Sincronização'),
                  const SizedBox(width: 10),
                  Text(
                    '11/02/2023 às 16:16h',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            const NavigationDrawerDestination(
              icon: Icon(Icons.settings),
              label: Text('Configuração'),
            ),
          ],
        ),
    ...
    ```

  - Agora temos a pergunta: fazer ou não a componentização?  
  Como já vimos antes, sim, devemos fazer a componentização, pois, o componente ficou complexo só que desta vez iremos componentizá-lo localmente dentro da pasta ```home/widgets``` com o nome de ```custom_drawer.dart``` e depois iremos chamá-lo na propriedade ```drawer:``` da ***home_page.dart***.  

    ```dart
    custom_drawer.dart

    import 'package:flutter/material.dart';

    class CustomDrawer extends StatelessWidget {
      const CustomDrawer({super.key});

      @override
      Widget build(BuildContext context) {
        return NavigationDrawer(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
              child: Text(
                'Opções',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            NavigationDrawerDestination(
              icon: const Icon(Icons.sync),
              label: Row(
                children: [
                  const Text('Sincronização'),
                  const SizedBox(width: 10),
                  Text(
                    '11/02/2023 às 16:16h',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            const NavigationDrawerDestination(
              icon: Icon(Icons.settings),
              label: Text('Configuração'),
            ),
          ],
        );
      }
    }
    ```

[^ Sumário ^](#aula-04)

## Aula 05 - Navegação Modular

Um ***Sistema de Rotas*** é essencial em uma aplicação, pois, dependendo da maneira que ele for feito o usuário terá uma sensação de fluidez na aplicação quando estiver clicando entre as ***features*** *"recursos"* como por exemplo: ***modal, drawer, botões, pages, etc.***  
Como navegação entendemos, que um widget sobrepõe o outro *(no caso do drawer)* ou um widget substituindo outro *(no caso indo de uma página para outra)*.  
E no ***Flutter*** o ***Sistema de Rodas*** como diversas outras coisas é simples de ser feito.

### Navegação Nativa do Flutter - Sistema de Rotas

[^ Sumário ^](#aula-05)

Agora iremos ver como fazer um **Sistema de Navegação** no ***Flutter*** utilizando as rotas nativas do sistema.  

- ***Início:***<a id="aula5-inicio"></a>  
Vamos começar modificando o arquivo ```app_widget.dart``` dentro de ```lib\src\shared\```, iremos substituir a propriedade ```home: const HomePage(),``` pela propriedade ```routes:``` que conterá um map ```{}``` dentro irá receberá uma rota inicial ```'/' :``` e uma função anônima com um contexto ```(context)``` que irá chamar ```=>``` a página que irá estar trabalhando ```const HomePage()```.  

  ```dart
  app_widget.dart

  ...
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
  >>>>  routes: {
          '/': (context) => const HomePage(),
        },
      );
    }
  ...

[^ Sumário ^](#aula-05)

- ***Criando uma Nova Página:***<a id='aula5-criando-nova-pagina'></a>  
Vamos criar uma nova página ```configuration_page.dart```no caminho ```lib\src\configuration\``` e depois criar um ```StatefulWidget``` através do atalho ```stf```com o nome de ```ConfigurationPage```.  
Dentro do ``build`` iremos retornar ```return``` um ```Scaffold()``` que conterá uma propriedade ```appBar:``` e um componente ```AppBar()``` e que por sua vez, conterá uma propriedade ```title:``` com um ```const Text()``` que conterá o título, mas, como tudo já configurado previamente no ```themes.dart```, a página já será criada com as cores do tema.  

  ```dart
  configuration_page.dart

  import 'package:flutter/material.dart';
  import 'package:flutter/src/widgets/framework.dart';
  import 'package:flutter/src/widgets/placeholder.dart';

  class ConfigurationPage extends StatefulWidget {
    const ConfigurationPage({super.key});

    @override
    State<ConfigurationPage> createState() => _ConfigurationPageState();
  }

  class _ConfigurationPageState extends State<ConfigurationPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('LISTINHA'),
        ),
      );
    }
  }
  ```

  [^ Sumário ^](#aula-05)

- ***Adicionando a Página de Configurações à Rota:***<a id='aula5-adicionando-pagina-configuracoes-rota'></a>  
Agora iremos adicionar dentro de ```app_widget.dart```, a ***ROTA*** para a página que acabamos de criar.

  ```dart
  app_widget.dart

  ...
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routes: {
          '/': (context) => const HomePage(),
  >>>>    '/config': (context) => const ConfigurationPage(),
        },
      );
  ...
  ```

  [^ Sumário ^](#aula-05)

- ***Item clicável no Menu Drawer:***<a id='aula5-item-clicavel-menu-drawer'></a>  
Para que tudo funcione perfeitamente, precisamos fazer com que o ***item*** do Menu drawer ***Configurações*** vá para a página de configurações quando for clicado.  
Para isso, precisamos fazer com que ```NavigationDrawer()``` *"escute"* quando isso acontecer, através da propriedade ```onDestinationSelected:``` com o valor sendo ```(index){}``` e dentro, verificando ***se*** ```if``` ***index*** é igual a posição ***1*** ```(index == 1)``` *"que é a posição do item na lista"*, ***então*** ```{}```, poderemos acessar o ***sistema de navegação*** ```Navigator``` através do ***contexto*** ```.of(context)``` acessando o método ```.pushNamed``` que colocará a página de configurações imediatamente por cima através da ROTA ```('/config');```.  

  ```dart
  custom_drawer.dart

  ...
    Widget build(BuildContext context) {
      return NavigationDrawer(
  >>>>  onDestinationSelected: (index) {
          if (index == 1) {
            Navigator.of(context).pushNamed('/config');
          }
        },
  ...
  ```

  [^ Sumário ^](#aula-05)

  - ***Fechando o Drawer:***<a id='aula5-fechando-drawer'></a>  
  Como o ***Drawer*** também é um Sistema de Navegação, ele pode ser fechado antes de ir para a nossa ROTA, utilizando ```Navigator.of(context).pop();``` antes de ir para a página de Configurações, com isso, estaremos fechando o Drawer.  
  Consequentemente economizaremos recursos do dispositivo.  

    > ***DICA:***  
    Uma outra opção e a que irei deixar de exemplo é ao invés de usar o ***pop()*** e o ***pushNamed()*** separadamente, é usar o método que já vem com as duas opções juntas que é o ```Navigator.popAndPushNamed(context, '/config');``` que já pede o ***contexto*** e a ***ROTA*** no mesmo método.

[^ Sumário ^](#aula-05)

- ***Criando a Página de Edição da Lista:***<a id='aula5-criando-pagina-edicao-lista'></a>  
Dentro da pasta ```lib\src\home```, crie um arquivo chamado ```edit_task_board_page.dart``` e depois criar um ```StatefulWidget``` através do atalho ```stf```com o nome de ```EditTaskBoardPage```.  
Dentro do ``build`` iremos retornar ```return``` um ```Scaffold()``` que conterá uma propriedade ```appBar:``` e um componente ```AppBar()``` e que por sua vez, conterá uma propriedade ```title:``` com um ```const Text()``` que conterá o título, mas, como tudo já configurado previamente no ```themes.dart```, a página já será criada com as cores do tema automaticamente.

  ```dart
  edit_task_board_page.dart

  import 'package:flutter/material.dart';

  class EditTaskBoardPage extends StatefulWidget {
    const EditTaskBoardPage({super.key});

    @override
    State<EditTaskBoardPage> createState() => _EditTaskBoardPageState();
  }

  class _EditTaskBoardPageState extends State<EditTaskBoardPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('LISTINHA'),
        ),
      );
    }
  }
  ```

[^ Sumário ^](#aula-05)

- ***Adicionando a Página de Edição da Lista à Rota:***<a id='aula5-adicionando-pagina-edicao-lista-rota'></a>  
Agora iremos adicionar dentro de ```app_widget.dart```, a ***ROTA*** para a página que acabamos de criar.

  ```dart
  app_widget.dart

  ...
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        routes: {
          '/': (context) => const HomePage(),
  >>>>    '/edit': (context) => const EditTaskBoardPage(),
          '/config': (context) => const ConfigurationPage(),
        },
      );
  ...
  ```

  [^ Sumário ^](#aula-05)

- ***Criando Ação de click no FloatingButton Nova Lista***<a id='aula5-criando-click-floating-button-nova-lista'></a>  
Primeiramente, precisamos abrir o arquivo ```home_page.dart``` que se encontra no caminho ```lib\src\home```.  
Para o botão funcionar, precisamos fazer com que ```FloatingActionButton.extended()``` *"escute"* quando isso acontecer, através da propriedade ```onPressed:``` através de uma função anônima ```()```, ***então*** ```{}```, poderemos acessar o ***sistema de navegação*** ```Navigator``` através do ***contexto*** ```.of(context)``` acessando o método ```.pushNamed``` que colocará a página de edição imediatamente por cima através da ROTA ```('/edit');```  

  ```dart
  home_page.dart

  ...
          floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.edit),
          label: const Text('Nova Lista'),
          onPressed: () {
  >>>>      Navigator.of(context).pushNamed('/edit');
          },
        ),
      );
    }
  }
  ```

Olhando por um ponto de arquitetura, esse tipo de abordagem pode escalar negativamente, por exemplo neste trecho de código:

```dart
app_widget.dart

...
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      routes: {
>>>>    '/': (context) => const HomePage(),
>>>>    '/edit': (context) => const EditTaskBoardPage(),
        '/config': (context) => const ConfigurationPage(),
      },
    );
  }
}
```

Essas duas ROTAS fazem parte do mesmo recurso *"feature"* seria bom se pudéssemos colocar essas duas ROTAS no mesmo lugar e esta é a função do Flutter Modular, que veremos a seguir.

> Para projetos pequenos como esta lista que está sendo  criada, o sistema de navegação nativa do Flutter que  acabamos de ver, supre muito bem as necessidades do app.

[^ Sumário ^](#aula-05)

### Flutter Modular - Sistema de Rotas

Agora iremos entender como funciona o Sistema de Rotas do Flutter Modular.  
Primeiramente precisamos instalar o Flutter Modular em nosso projeto:

- ***Instalando o Flutter Modular***<a id="aula5-InstalandoFlutterModular"></a>  
No caminho ```lib\src``` crie um arquivo de nome ```app_module.dart```, este arquivo será responsável pelas ROTAS e pela injeção de dependências.  
Depois de criar, abra o mesmo arquivo e crie uma ***classe*** ```class``` chamada de ```AppModule``` que estende ```extends``` de ```Module``` que irá sobrescrever ```@override``` a lista de ROTAS ```routes```, ele funcionará da mesma forma, só que ao invés de usar maps ele é voltado a ***Orientação a Objetos***.  
No widget ```ChildRoute('/', child: (context, args) => const ConfigurationPage()),``` o "**/**" será somente para leitura e iremos definir o ConfigurationPage() de forma global.  
  - Como falamos antes, as ROTAS ```/``` e ```/edit``` fazem parte do mesmo recurso ***"feature"*** e seria bom se elas estivessem no mesmo lugar.  
  Então, é isso que iremos fazer agora:  
  - Dentro de ```lib\src\home``` crie um arquivo chamado ```home_module.dart``` e crie uma classe ```class``` de nome ```HomeModule``` que estende ```extends``` de ```Module``` que irá sobrescrever ```@override``` a lista ```[]``` de ROTAS ```routes```, que retorna uma uma função ```ChildRoute()``` que é onde iremos configurar nossas ROTAS ```/``` e ```/edit``` isoladamente.

[^ Sumário ^](#aula-05)

- ***Chamando o HomeModule() dentro do App principal***<a id="aula5-ChamandoHomeModuleAppPrincipal"></a>  
Vamos entender como chamamos o HomeModule() dentro do App principal, pois, essa feature *"recurso"* de HomeModule, pode ser chamado em múltiplos Apps, visto que está totalmente divida, seria como se tivesse um App dentro do outro.  
Dentro do ```app_module.dart```, iremos fazer a chamada da feature através da função ```ModuleRoute()``` no primeiro argumento se adiciona o ```/``` e em ```module:``` diz com que módulo ele irá concatenar ao aplicativo em questão que em nosso caso é ```HomeModule()```.  

  ```dart
  app_module.dart
  
  ...
  class AppModule extends Module {
    @override
    List<ModularRoute> get routes => [
  >>>>    ModuleRoute('/home', module: HomeModule()),
          ChildRoute(
            '/config',
            child: (context, args) => const ConfigurationPage(),
          ),
        ];
  }
  ```  

- ***Escutando todas as Rotas***<a id="aula5-EscutandoTodasRotas"></a>  
Para o Modular escutar e realmente trabalhar dentro de tudo relacionado as ROTAS, é preciso iniciá-no no ```app_widget.dart``` substituindo a propriedade ```routes:``` por outras duas propriedades mas antes, precisamos fazer uma alteração em ***MateriaApp()*** e adicionar um construtor ```.router``` que então acessamos a API nova do Flutter chamada Navigator 2.0 que é onde o Modular se instala:  
  - routerDelegate: Modular.routerDelegate,
  - routeInformationParser: Modular.routeInformationParser,  

  ```dart
  app_widget.dart

  ...
      Widget build(BuildContext context) {
        return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
  >>>>  routerDelegate: Modular.routerDelegate,
  >>>>  routeInformationParser: Modular.routeInformationParser,
        );
    }
  }
  ```

  Com com essas duas propriedades adicionadas, o Modular está instalado no projeto, mas, para que ele escute toda a aplicação, dando dispose onde for preciso, pois, ele saberá que módulo está aberto e assim que sair irá desligar tudo, tidos os binds, todas as classes, tudo automaticamente.  

  Então ele precisa ser adicionado na raiz da aplicação, no ```main.dart``` envolvendo a aplicação principal ```AppWidget()``` com um widget e renomeando para ```ModularApp()``` para que possa escutar toda a aplicação.  

  O ```ModularApp()``` recebe dois argumentos, um ```module:``` que em nosso caso é o ```AppModule()``` e o App principal que em nosso caso é o ```AppWidget()```.  

  ```dart
  main.dart

  import 'package:flutter/material.dart';
  import 'package:flutter_modular/flutter_modular.dart';
  import 'src/app_module.dart';
  import 'src/shared/app_widget.dart';

  void main() {
    runApp(
      ModularApp(
  >>>>  module: AppModule(),
  >>>>  child: const AppWidget(),
      ),
    );
  }
  ```  

[^ Sumário ^](#aula-05)

- ***Setando a Rota inicial do Modular***<a id="aula5-SetandoRotaInicialModular"></a>  

  Quando se concatena um módulo a outro projeto, pode-se escolher qual o nome que se dará a este módulo que em nosso caso é o ```/home```.  

  ```dart
  app_module.dart

  ...
  class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
  >>>>  ModuleRoute('/home', module: HomeModule()),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
  }
  ```

  Mas, dentro do módulo ```HomeModule()``` não muda nada, continua como estava, porém, o acesso a ele se dará através de um ```/home/``` ou ```/home/edit```, por isso precisamos ter esse cuidado a partir de agora quando se trabalha desta forma.  

  ```dart
  home_page.dart

  ...
  class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
  >>>>  ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute(
          '/edit',
          child: (context, args) => const EditTaskBoardPage(),
        ),
      ];
  }
  ```
  
  Foi adicionado ao ```AppWidget()``` o ```Modular.setInitialRoute('/home/');``` para setar o valor inicial da rota para ***/home/*** sendo quê:  
  - ```/home``` para ele acessar o módulo;  
  - ```/``` é referente ao filho de ***home*** que poderia ser o ```/edit```.  

  Mas nesse caso queremos o ```/``` mesmo, pois, faz referência ao ***ChildRouter()*** do ***AppModule()***:  
  ```ChildRoute('/', child: (context, args) => const HomePage()),```  

  ```dart
  app_widget.dart

  ...
        @override
      Widget build(BuildContext context) {
  >>>>  Modular.setInitialRoute('/home/');

        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: ThemeMode.light,
  ...
  ```  

[^ Sumário ^](#aula-05)  

- ***Resolvendo problemas internos na HomePage()***<a id="ResolvendoProblemasInternosHomePage"></a>  

  Internamente na home_page.dart pode ocorrer algum problema caso não tenhamos cuidado:  

  O ```/edit```, está fazendo alusão ao ***/edit*** e como estamos dentro do ***módulo home***, precisaríamos colocar ```/home/edit``` para que pudesse funcionar corretamente.  

  Mas o Modular é tão fascinante, que ele consegue perceber que está dentro do módulo, pois, ele conhece a ***Árvore de Widgets*** referente à configuração feita em ***main.dart*** *(cercando o AppWidget() com o ModularApp())*

  ```dart
  home_page.dart

  ...
        floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.edit),
        label: const Text('Nova Lista'),
        onPressed: () {
  >>>>    Navigator.of(context).pushNamed('./edit');
        },
      ),
  ...
  ```  

  Portanto, se estiver dentro do Módulo podemos utilizar o ***posix*** *(Imita o estilo do sistema de arquivos Unix.)*.  
  Isso significa que, se sabemos que estamos dentro do Módulo, utilizamos o ***PONTO*** ```./edit``` para identificar que estamos dentro do ***Módulo***.  
  Então, independente do nome que for dado na hora que estiver adicionando a ***Rota*** ```ModuleRoute('/home', module: HomeModule()),``` no ***AppModule()***, irá continuar funcionando perfeitamente.

[^ Sumário ^](#aula-05)  

## Aula 06 - Refatoração

Uma das coisas que desenvolvedor deve fazer depois de criar uma ***feature*** *"recurso"*, é olhar para o código e ver o que precisa ser alterado.  
Esse processo se chama ***REFATORAÇÃO*** e isso é muito importante para qualquer projeto.  
O correto, não é só fazer o código funcionar, mas sim, pensar numa manutenção futura no código, então, vamos dar inicio a refatoração.  

O primeiro ponto a ser observado, é refatorar o arquivo ***user_image_button.dart***, pois, precisamos corrigir os valores das propriedades ```backgroundColor:``` e ```foregroundColor:```.  

- O ***Theme.of(context).primaryColor*** é um Componente do Material Design 2 e foi especificado no [README](README.md) do projeto para se utilizar somente Componentes pré-construídos do Material Design 3.  
Da forma que foi escrito até o presente momento, está funcionando, mas não é a forma que deveria estar escrito.
Então, devemos modificar o valor destas propriedades para que fiquem condizentes com Material Design 3 e a documentação do Projeto.  

  ```dart
  user_image_button.dart

  ...
    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        child: CircleAvatar(
    >>>>  backgroundColor: Theme.of(context).colorScheme.primary,
    >>>>  foregroundColor: Theme.of(context).colorScheme.onPrimary,
          child: const Text('A'),
        ),
      );
    }
  ```

  Como pode ser observado, os valores das propriedades ```backgroundColor:``` e ```foregroundColor:``` foram modificados para usarem o ```.colorScheme``` do Material Design 3 que seria ```Theme.of(context).colorScheme.primary,``` e ```Theme.of(context).colorScheme.onPrimary,``` respectivamente, mas ainda não está da melhor forma, podemos melhorar ainda mais o código.  

> ***DICA:***<a id='aula6-SelfExplanatoryVariable'></a>  
Casos como esse, em que se repete um elemento diversas vezes no código, é interessante o uso de um recurso do ***Clean Code*** chamado ***Self Explanatory Variable*** que significa: Variável de Auto Explicação.  

Criar uma variável ```final theme``` para guardar o valor de ```Theme.of(context)``` e usar a variável ***theme*** em seu lugar.  

```dart
user_image_button.dart

...
      Widget build(BuildContext context) {
>>>>    final theme = Theme.of(context);

        return GestureDetector(
          child: CircleAvatar(
>>>>        backgroundColor: theme.colorScheme.primary,
>>>>        foregroundColor: theme.colorScheme.onPrimary,
            child: const Text('A'),
          ),
        );
...
```  

Ou até mesmo, criar uma variável ```final colorScheme``` e guardar o de ```theme.colorScheme``` e usar a variável ***colorScheme*** em seu lugar.  

```dart
user_image_button.dart

...
      Widget build(BuildContext context) {
        final theme = Theme.of(context);
>>>>    final colorScheme = theme.colorScheme;

        return GestureDetector(
          child: CircleAvatar(
>>>>        backgroundColor: colorScheme.primary,
>>>>        foregroundColor: colorScheme.onPrimary,
            child: const Text('A'),
          ),
        );
...
```  

Mas por qual motivo estamos utilizando duas linhas de código a mais?  
Isto é o que o ***Clean Code*** diz: *seu próprio código dis o que ele faz*, ***"auto explicativo"***.  
No fim das contas, a técnica de escrita de código é mais para mostrar para o próximo desenvolvedor *"que pode ser vocês mesmo no futuro"*, do quê, ter menos código ou funcionar com menos código.  
A ideia de funcionar com menos código ou com menos *"boilerplate"* como podem dizer por aí, pode ser uma questão totalmente arquitetural e também de *"Clean Code"*.  
Ou seja. as pessoas irão ver e entender esse código melhor, mesmo ele tendo um *"boilerplate"* maior.  

[^ Sumário ^](#aula-06)  

## Aula 07

### Gerenciamento e Distribuição de Estado

Uma das principais coisas feitas no Flutter, é controlar o Estado ***"State"*** da Tela ***(view, page, etc.)*** por esse motivo, construiremos a ***Tela de Configurações*** ``configuration_page.dart`` onde teremos um Controle de Estado baseado no tema ***theme***.

### Definindo a ListView()  

- O primeiro passo é abrir o aquivo ***configuration_page.dart*** que se encontra no caminho ***lib\src\configuration***.  

- Depois, precisamos adicionar a propriedade ``body:`` para que possamos começar a dar forma ao corpo da Tela em si, pois, no momento ela só possui uma ***AppBar()***.  

- Na definição do body, temos duas opções no momento, usar uma ***Column()*** ou usar um ***ListView()*** *(que nos possibilita ter um scroll)* caso a tela seja pequena, irei optar por usar um ``ListView()``.  

- Os itens da ***Lista*** ``[]`` serão **Filhos** ``children:`` do ***ListView()***:  

[^ Sumário ^](#aula-07)

- ***Título da Lista***:<a id='aula7-TituloLista'></a>  
  Adicione um ``Text()`` contendo o texto referente ao ***Título*** ``'Configurações',`` ainda dentro o ***Text()*** iremos definir o ***estilo*** ``style:`` do ***Título*** pegando o ***contexto*** ``Theme.of(context)`` do ***Tema*** ``.textTheme`` e aplicamos o ***estilo*** que queremos ``.titleLarge,`` repita esse procedimento para os outros dois ***Text()***, ***Tema*** e ***Controle de Dados*** respectivamente modificando apenas o estilo.  
  
  ```dart
  configuration_page.dart

  ...
        body: ListView(
        children: [
  >>>>    Text(
            'Configurações',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
  ...
  ```  

  > ### ***Obs.:*** adicione um ***SizedBox()*** entre o ***Título*** e o ***Tema***  

  ```dart
  configuration_page.dart
  
  ...
      const SizedBox(
              height: 23,
            ),
  ...
  ```  

[^ Sumário ^](#aula-07)

- ***Caixa de Seleção***:<a id='aula7-CaixaSelecao'></a>  
  Adicione um ***Componente de Seleção*** ``RadioListTile<ThemeMode>()`` que será do ***Tipo*** ``ThemeMode``, dentro ele possui 3 propriedades:  

  ``value:`` por enquanto receberá o ``ThemeMode.light``, mas será modificado mais a frente.  

  ``groupValue:`` também receberá o ``ThemeMode.light``.  

  ``onChanged:`` irá receber o ***ThemeMode*** ``(mode) {},`` na hora de mudar.  

  Adicione a propriedade ``title:`` que receberá um ``Text()`` contendo o valor do ***Título*** ``'Sistema',`` em seguida será definido o ***estilo*** ``style:`` do ***Título*** pegando o ***contexto*** ``Theme.of(context)`` do ***Tema*** ``.textTheme`` e aplicamos o ***estilo*** que queremos ``.bodyLarge,``, repita o processo para as outras duas ***Caixas de Seleção*** ``Claro`` e ``Escuro``.  

  ```dart
  configuration_page.dart
  
  ...
          RadioListTile<ThemeMode>(
            title: Text(
              'Sistema',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            value: ThemeMode.light,
            groupValue: ThemeMode.light,
            onChanged: (mode) {},
          ),
  ...
  ```  

  > ### ***Obs.:*** adicione um ***SizedBox()*** entre o ***Caixa de Seleção*** e o ***Controle de Dados*** e entre o ***Controle de Dados*** e o ***Botão "Apagar Cache e Reiniciar App"***  

  ```dart
  configuration_page.dart
  
  ...
      const SizedBox(
              height: 23,
            ),
  ...
  ```  

[^ Sumário ^](#aula-07)

- ***Botão - Apagar cache e reiniciar app***<a id='aula7-BotaoApagarCacheReiniciarApp'></a>  
  Logo após o ***Text()*** do ***Controle de Dados***, adicione um Componente chamado ``OutlinedButton()`` ele possui duas propriedades que precisamos definir seus valores:  
  ``onPressed:`` por enquanto receberá um função anonima.  
  ``child:`` receberá um ``Text()`` que conterá o texto do botão ``'Apagar Cache e Reiniciar App'``.  

  ```dart
  configuration_page.dart
  
  ...
        OutlinedButton(
          onPressed: () {},
          child: const Text('Apagar Cache e Reiniciar App'),
        ),
  ...
  ```  
  
  [^ Sumário ^](#aula-07)

- ***Finalizando o ListView()***<a id='aula7-FinalizandoListView'></a>  
  Para finalizar, adicionaremos um ***Padding()*** ao ***Componente ListView()*** para que não grude nas laterais.  

  Posicione o cursor encima do ***Componente ListView*** e pressione ***CTRL+PONTO*** que irá abrir o menu suspenso e escolha ``Wrap with Padding`` e na propriedade ``padding:`` defina seu valor para ``const EdgeInsets.all(20),`` para que fique com 20px em todos os lado.  

  Mas se preferir definir valores diferentes para cada lado, pode usar também o método ``const EdgeInsets.fromLTRB(16, 10, 20, 0),`` que utiliza parâmetros posicionais ***LTRB***.  

  Abaixo o código completo do ``body:`` com o ``Padding()`` e o ``ListView()`` com todos os seu ***Filhos*** ``children:``.  

  ```dart
  configuration_page.dart
  
  ...
          body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                'Configurações',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                'Tema',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              RadioListTile<ThemeMode>(
                title: Text(
                  'Sistema',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                value: ThemeMode.light,
                groupValue: ThemeMode.light,
                onChanged: (mode) {},
              ),
              RadioListTile<ThemeMode>(
                title: Text(
                  'Claro',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                value: ThemeMode.light,
                groupValue: ThemeMode.light,
                onChanged: (mode) {},
              ),
              RadioListTile<ThemeMode>(
                title: Text(
                  'Escuro',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                value: ThemeMode.light,
                groupValue: ThemeMode.light,
                onChanged: (mode) {},
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                'Controle de Dados',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 23,
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Apagar Cache e Reiniciar App'),
              ),
            ],
          ),
        ),
      );
    }
  }
  ...
  ```

[^ Sumário ^](#aula-07)

### ***Criando um Gerenciamento de Estado***  

***Gerenciar um Estado*** ``State``, significa escolher uma ***Classe/Componente*** para salvar o ***Estado da Aplicação***.  
Um Componente muito utilizado para realizar essa tarefa é o ***Store***.  

- ***Iniciando o Gerenciamento:*** <a id='aula7-IniciandoGerenciamento'></a>  
  Crie uma pasta chamada ***Store*** no caminho ``lib\src\shared`` e depois crie uma ***Classe*** chamada ``app_store.dart``, pois, ela irá guardar todas as alterações globais de Estado da Aplicação.  

  Com o arquivo aberto, crie a ***Classe*** de nome ``AppStore``, essa será a ***Classe*** responsável pelo ***Gerenciamento de Estado***.  

  Para mudar o Tema, é necessário ter um ***Componente Reativo*** para que quando algo mude, quem estiver escutando este Componente Reativo realize a modificação.  

  Então, para que isso ocorra precisamos adicionar uma ***variável*** ``final themeMode`` que irá receber o ``ValueNotifier()`` que irá receber como valor padrão o ``ThemeMode.system``.  <a id='themeMode'></a>
  
    ```dart
    app_store.dart
    
    ...
    import 'package:flutter/material.dart';

    class AppStore {
      final themeMode = ValueNotifier(ThemeMode.system);
    }
    ...
    ```  

    De fato só esta ***Classe*** já é o Gerenciamento de Estado, pois, mudou a variável ***themeMode*** mudou o Estado do Tema da aplicação.  

    > ## Assistir [aqui](https://www.youtube.com/watch?v=zV1X9vwYcdI&list=PLlBnICoI-g-eG0eVkHu2IaO48TljxPjPq) as aulas de ValueNotifier()  

[^ Sumário ^](#aula-07)

- ***Trasporte e Distribuição do Estado:*** <a id='aula7-TrasporteDistribuicaoEstado'></a>  
  Como fazer o transporte e distribuição deste Estado?  
  Para isso, será utilizado novamente o ***Modular*** onde já foram feitas as ***Rotas*** e dentro teremos os ``Binds`` ***"vínculos"***.  
  - Abra o ***Modular*** a partir do arquivo ``app_module.dart`` e iremos adicionar os ***Binds***, use o auto-complete escrevendo ``binds`` e apertando **ENTER**.  
  No código que aparecer, substitua ``super.binds`` por colchetes ``[]`` dentro, podemos adicionar propriedades que irão se ***auto-resolver*** e serem entregues em qualquer parte da Aplicação, principalmente se estiver no ***AppModule***, e cada ***Módulo*** tem seu próprio ***bind***.  
  - Para registrar o ***AppStore()*** no ***Modular***, é preciso adicionar dentro dos colchetes ``[]`` ``Bind`` que implementa um ***método*** ``.singleton(i)`` que ***persiste/entrega*** ``=> AppStore()`` como uma única instancia.  
  Ele também resolve outros problemas de fabricação da instancia, mas no momento não iremos precisar.  
  
    ```dart
    app_module.dart
    
    ...
    class AppModule extends Module {
      @override
      //*todo: implement binds
      List<Bind> get binds => [
            //! Versão antiga
            // Bind.singleton((i) => AppStore())

            //? Versão nova a partir de março/2023 Flutter_Modular: ^6.0.0-alpha.5
            AutoBind.singleton(AppStore.new)
          ];
    ...
    ```  

    Utilizando a nova versão ``AutoBind.singleton(AppStore.new)`` ele se ***auto-resolve*** e fica disponível para toda a Aplicação.  

  [^ Sumário ^](#aula-07)

  - Como utilizar o ***Modular*** para ***distribuir a AppStore()*** para toda a ***Aplicação*** e como fazer para ***receber a AppStore*** onde for preciso?<a id='aula7-ComoUtilizarModularDistribuirAppStore'></a>  

  - Será preciso receber a ``AppStore()`` na ***configuration_page.dart*** para poder modificar o ***Tema*** e outas informações.  
  - Será preciso receber a ``AppStore()`` na ***app_widget.dart*** para quando ele for modificado, ele altere a propriedade ``themeMode:``.  

    Então para fazer a distribuição da ***AppStor()*** dentro de ***AppWidget()*** prosseguimos da seguinte forma:  

  - Primeiro abrimos o arquivo ***app_widget.dart***.  
  - Dentro do ``build`` adicione uma ***variável*** ``final`` chamada ``appStore`` que ***receberá*** ``=`` através do ***contexto*** ``context`` o ***valor*** ``.watch<>()`` que ***escutará*** ``<AppStore>`` que está no Modular, da forma que está não irá fazer nada.  
  - Para que funcione como deve, precisamos modificar o valor da propriedade themeMode: para obter a ***variável*** que ***escuta*** ``appStore`` as modificações do ***Tema*** ``.themeMode`` e ***atribuir o valor*** do Tema modificado ``.value,``.  
  - Mas, reativamente aqui não acontece nada, para que ocorra reatividade, precisamos adicionar um filtro que para o ``appStore`` distribuir, somente o que for necessário reativamente, então, dentro dos parenteses ``()`` iremos adicionar a reatividade.  
  - Adicione um ***seletor*** ``(store) =>`` e nesta store vamos selecionar um ***Objeto Listenable Reativo*** ``.themeMode,`` ou seja, ele irá alterar quando ***themeMode*** for alterado.  

    ```dart
    app_widget.dart
    
    ...
      class AppWidget extends StatelessWidget {
        const AppWidget({super.key});

        // This widget is the root of your application.
        @override
        Widget build(BuildContext context) {
          Modular.setInitialRoute('/home/');
    >>>>  final appStore = context.watch<AppStore>(
            (store) => store.themeMode,
          );

          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
    >>>>    themeMode: appStore.themeMode.value,
            theme: lightTheme,
            darkTheme: darkTheme,
            routerDelegate: Modular.routerDelegate,
            routeInformationParser: Modular.routeInformationParser,
          );
        }
      }
    ...
    ```  

    > ## Se é um StatelessWidget, como que funciona a reatividade?  
    >
    > ### Funciona porquê: ``context.watch<AppStore>()`` vai obter de ``Inherited Widget`` que seria Widget Herdado, é o Inherited Widget que irá fazer o Gerenciamento de Estado que está lá no Modular, igual ao Provider

    Então, podemos ter quantas reatividades quisermos dentro da ***classe AppStore()***, pois, lá no ***filtro*** *(que acabamos de ver acima)*, o ***appStore*** irá filtrar só a reatividade que for necessária, que no nosso caso é o ***themeMode***.  

  - ***Continuando dentro do configuration_page.dart:***  
    Quando appStore registrar a modificação do Tema, em ``RadioListTile<ThemeMode>()`` a propriedade ``groupValue:`` irá receber o valor selecionado ``appStore.themeMode.value,`` em cada uma das caixas de seleção ***(system, light ou dark)*** que será utilizado.  
    Agora, para que funcione, precisamos adicionar na propriedade ``onChanged:`` o valor ``(mode) {appStore.themeMode.value`` recebendo ``=`` o mode que pode ser nulo ``mode!;},`` mas que dificilmente fique nulo em nosso caso.  <a id='onChanged'></a>

    ```dart
    configuration_page.dart
    
    ...
            value: ThemeMode.dark,
    >>>>    groupValue: appStore.themeMode.value,
    >>>>    onChanged: (mode) {
              appStore.themeMode.value = mode!;
            },
    ...
    ```  

    Então, no momento em que a Caixa de Seleção for clicada ``onChanged:``, ``appStore`` irá alterar o valor ``value:`` do mode ``mode!`` que no exemplo acima seria o Tema ``dark``.  
    Ao alterar o ``mode``, o ``appStore`` modifica a variável dentro da ***Classe*** ``AppStore()`` que irá gerenciar o estado do ``AppWidget()`` realizando as modificações necessárias em toda a aplicação.  

  [^ Sumário ^](#aula-07)  

  - ***Criando o método changeThemeMode():***<a id='aula7-CriandoMetodoChangeThemeMode'></a>  
    Melhorando um pouco a lógica para que, tenha um método para realizar a modificação.  

    Criando o método sem retorno ***changeThemeMode()*** ``void changeThemeMode(``ele irá receber um ``ThemeMode?`` possivelmente nulo, que terá o nome de ``mode) {``, se ``if`` mode for diferente de nulo ``(mode != null)`` então ``{``o valor do tema ``themeMode.value`` será atribuído ``=`` ao mode ``mode;}`` para ele ativar a reatividade.  

    ```dart
    app_store.dart
    
    ...
        class AppStore {
          final themeMode = ValueNotifier(ThemeMode.system);
    >>>>  void changeThemeMode(ThemeMode? mode) {
            if (mode != null) {
              themeMode.value = mode;
            }
          }
        }
    ...
    ```
  
  [^ Sumário ^](#aula-07)  

  - ***Encurtando código com método tear-offs*** <a id='aula7-EncurtandoCodigoMetodotear-offs'></a>  

    Como a ***Classe*** ``AppStore()`` está sendo distribuída ***globalmente*** pelo pelo Modular através do [Bind](#aula7-TrasporteDistribuicaoEstado) feito no inicio, podemos usar o ***tear-offs*** no ``onChange:`` e encurtar o código usando o valor ``appStore.changeThemeMode,`` ao invés de usar [esse](#onChanged) no ``configuration_page.dart`` ou em qualquer outro lugar.  

    > ## O guia ***Effective Dart*** também se refere a cortes "tear-offs" e os descreve com menos jargão
    >
    > ### Se você se referir a um método em um objeto, mas omitir os parênteses, o Dart fornecerá um “corte” tear-off, um fechamento que usa os mesmos parâmetros do método e o invoca quando você o chama  

    Além de se usar um código reduzido, já fica preparado para outro método que será usado no futuro, o método ``save()`` que irá salvar localmente o estado do Tema.  

    ```dart
    app_store.dart
    
    ...
        class AppStore {
          final themeMode = ValueNotifier(ThemeMode.system);
          void changeThemeMode(ThemeMode? mode) {
            if (mode != null) {
              themeMode.value = mode;
    >>>>      save();
            }
          }

    >>>>  void save() {
            //*todo: salvar os dados na base local
          }
        }
    ...
    ```

[^ Sumário ^](#aula-07)

### ***Aula 08***

### ***Persistência de Dados***

A partir de agora vamos iniciar a persistência de dados locais com todos os dados que temos.  
Para isso, iremos utilizar a Base de Dados local Realm síncrona, que irá nos auxiliar a salvar os dados de configuração e as listas posteriormente.
  
#### ***Dados das Configurações:***

Para iniciar a definição da ***Base de Dados das Configurações***, precisamos abrir a ***Classe AppStore***, pois é nela que iremos configurar os métodos do ***Realm***, para isso abra o arquivo ***app_store.dart***.  

Nela, já começamos adicionando o método save() mas ainda não definimos suas funcionalidades, mas iremos defini-las mais a frente.  

[^ Sumário ^](#aula-08)

#### ***Criando e definindo o método init():***

O ***AppStore()*** precisa iniciar,já que ele vai obter os dados da internet, então iremos criar o método ``void init(){}``.  

#### ***Criando e definindo o método save():***

O ***AppStore()*** precisa salvar os dados localmente, então iremos criar o método ``void save(){}``.

#### ***Criando e definindo o método syncDate():***

Um ponto que precisamos prestar atenção, é que o item Sincronizar do Menu Drawer, possui data e hora para serem salvas ao sincronizar os dados, então precisamos fazer igual foi feito no [themeMode](#themeMode):  

Então, para que isso ocorra precisamos adicionar uma ***variável*** ``final`` chamada ``syncDate`` que irá receber ``=`` o ***valor*** ``ValueNotifier<>()`` do ***Tipo*** ``<DateTime?>`` possivelmente nulo, e irá iniciar com o ***valor*** nulo ``(null)``.  

```dart
app_store.dart

...
final syncDate = ValueNotifier<DateTime?>(null);
...
```  

Com o syncDate iniciado com o valor nulo, já podemos começar a definir a modificação do método.  
Vamos começar definindo a modificação do método ``void`` chamado ``setSyncDate(``que receberá um ``DateTime`` de ``date){``e vai atribuir o valor da ``syncDate.value =`` ao ``date;`` e após esse processo ele irá ***salvar*** ``save();}``.  

```dart
app_store.dart

...
void setSyncDate(DateTime date) {
  syncDate.value = date;
  save();
}
...
```  

[^ Sumário ^](#aula-08)

#### ***Adicionando o filtro syncDate():***

Agora que acabamos de criar o método ***syncDate***, precisamos abrir o arquivo ***custom_drawer.dart***, e adicionar o filtro para escutar somente o método ***syncDate()***.  

Para isso, será precisado chamar o ***AppStore()*** através da variável ``final`` de nome ``appStore`` que recebe ``=`` o valor ``context.watch<`` que escuta as modificações de Estado recuperando o ``AppStore>(`` e o Modular como visto antes, nos permite filtrar o que queremos escutar, com ``(store) => store.syncDate,)`` e o syncData fará a alteração.  
Através da variável que acabamos de declarar, podemos ter acesso ao método syncDate() da seguinte forma:  
Adicionamos a variável ``final`` de nome ``syncDate`` que recebe ``=`` o valor ``appStore.syncDate.value,``.  

```dart
custom_drawer.dart

...
    final syncDate = appStore.syncDate.value;
...
```  

[^ Sumário ^](#aula-08)

#### ***Adicionando e definindo valor da variável syncDateText***

Adicionamos a variável ``var`` de nome ``syncDateText`` que recebe o valor padrão ``'nunca';`` assim, mesmo que o valor seja ***nulo***, sempre irá aparecer o ***valor padrão nunca***.  
Nunca trabalhe com valores nulos, sempre adicione um valor padrão.

```dart
custom_drawer.dart

...
  var syncDateText = 'nunca';
...
```  

A seguir, vamos adicionar o valor da variável syncDateText no Componente Text() que irá renderizar a data no item Sincronização.  

```dart
custom_drawer.dart

...
      Text(
>>>>    syncDateText,
        style: Theme.of(context).textTheme.labelSmall,
      ),
...
```

Agora iremos fazer o teste para verificar se o valor é nulo ou não, mas antes será preciso instalar um package de internacionalização que entre outras coisas, faz a formatação da data conforme queremos, para isso, no terminal na pasta do projeto, digite: ``flutter pub add intl``.  

[^ Sumário ^](#aula-08)

#### ***Definindo a formatação da Data de syncDateText***

Se ``if (syncDate`` for diferente ``!=`` de nulo ``null)`` então ``{``iremos adicionar a formatação da data com a variável ``final`` de nome ``format`` que recebe ``= DateForma(``que usará a string para formatar a data e a hora ``"dd"`` para dia ``"/MM"`` para mês ``"/yyyy"`` para o ano às e ``"hh"`` para hora e ``":mm"`` para minutos ``" h"`` para o h das horas.  
Essa é a formatação desejada quando se receber um ``date``, mas para isso, precisamos atribuir à variável ``syncDateText`` que ela receba ``=`` essa formatação ``format.format(``recebendo a data ``syncDate))}``.  

```dart
custom_drawer.dart

...
if (syncDate != null) {
  final format = DateFormat('dd/MM/yyyy às hh:mmh');
  syncDateText = format.format(syncDate);
}
...
```

[^ Sumário ^](#aula-08)

#### ***Formatando a Data para aparecer no final da linha:***

Para que a data fique melhor apresentada, iremos substituir o ``SizedBox()`` por um ``Spacer()`` que é um Componente Flex do Flutter, mas por album motivo o ***NavigationDrawer()***, não fornece o tamanho da largura para a ``Row()``*(o Row() precisa de um tamanho de largura, já que é o eixo principal dele)*, então precisamos envolve-lo com um ``SizedBox(width: 215)`` adicionando uma largura a ele para que o ***Spacer()*** ou qualquer outro flex funcione corretamente. Mas só faça isso quando o Widget não fornecer a largura para o Componente.  

```dart
custom_drawer.dart

...
    NavigationDrawerDestination(
      icon: const Icon(Icons.sync),
>>>>  label: SizedBox(
>>>>    width: 215,
        child: Row(
          children: [
            const Text('Sincronização'),
>>>>        const Spacer(),
            Text(
              syncDateText,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    ),
...
```

[^ Sumário ^](#aula-08)

### ***Criando Base de Dados do Realm***

Primeiro precisamos criar a pasta onde será salvo a configuração do Realm, no caminho ``lib\src\shared\services`` iremos criar a pasta de nome ``realm`` que estará disponível globalmente, e dentro criaremos o arquivo chamado ``realm_config.dart`` onde serão definidas as configurações do Realm.  
Na [documentação](https://pub.dev/packages/realm) do Realm no pub.dev, encontramos as configurações que precisamos definir, mas por enquanto vamos usar somente a configuração, ``var config = Configuration.local([Car.schema]);`` onde faremos as alterações necessárias.  
Este, é um arquivo onde passamos os ***esquemas*** ``scheme`` de modelos e esses ***esquemas*** ``scheme`` são auto-gerados.  

[^ Sumário ^](#aula-08)

#### ***Modelo da Tabela na Base de Dados***

Primeiro precisamos criar uma pasta chamada ``models`` no caminho ``lib\src\shared\services\realm`` e dentro dela criar um arquivo chamado ``configuration_model.dart``,  que vai representar um modelo da tabela na base do banco de dados, onde, serão salvas as configurações do banco de dados.
O Realm, utilizará essa arquivo para criar um tipo de tabela dentro dele.  
Para funcionar, precisamos criar uma ***Classe privada*** ``_`` com o mesmo nome do arquivo ``ConfigurationModel`` e depois será preciso criar as propriedades que serão as colunas desta tabela.  

- ``late`` sempre deve declarado com late no inicio, pois, não iremos atribuir nenhum valor no momento;
- ``String`` pois o DateTime só aceita Tipos primitivos;
- ``themeModeName`` nome da primeira coluna que será criada;  
- ``DateTime?`` Tipo da segunda coluna que pode ser uma data nula ``?``;  
- ``syncDate`` nome da segunda coluna.
- ``@RealmModel`` adicionar a anotação para que o Realm reconheça essa Classe como uma tabela.
- ``part "configuration_model.g.dart";`` é preciso adicionar esse part com o mesmo nome de arquivo com a única diferença é que tem que adicionar o ***.g*** antes do ***.dart***, para que o Realm crie o arquivo da tabela corretamente.  

```dart
configuration_model.dart

...
import 'package:realm/realm.dart';

part 'configuration_model.g.dart';

@RealmModel()
class _ConfigurationModel {
  late String themeModeName;
  late DateTime? syncDate;
}
...
```

Agora precisamos rodar um comando ``flutter pub run realm  generate`` no terminal para que o Realm gere a tabela, lembrando que toda vez que for adicionado ou modificar qualquer propriedade na Classe.  
Com esse comando, ele gera um modelo público do mesmo modelo que criamos de forma privada, para que possamos acessar os dados fora da Classe Privada.  

Agora, abrimos o arquivo ``realm_config.dart`` e adicionamos a ***Classe Pública*** recém criada ``ConfigurationModel`` na definição do ``config``.  

```dart
realm_config.dart

...
      import 'package:realm/realm.dart';

      import 'configuration_model.dart';

>>>>  var config = Configuration.local([
        ConfigurationModel.schema,
      ]);
...
```  

[^ Sumário ^](#aula-08)

#### ***Adicionando Valores padrão à Base de Dados:***

E é só isso a configuração do ***Realm***, Classe e configuração, e pode se fazer quantas Classes forem necessárias, lembrando sempre de adicionar suas respectivas configurações dentro do ``array``.  
O Realm tem outras propriedades, como por exemplo a ``initialDataCallback:`` que inicia a Base de Dados, podendo adicionar valores padrão para ela.  
Para adicionar um valor padrão, é igual a adicionar um item no array (na lista), e atribui o valor da instancia que acabou de ser criada.  
Adicione a propriedade ``initialDataCallback:`` que recebe como valor uma Função ``(realm){``que adiciona ``realm.add(``e atribui a instancia que acabou de ser criada ``ConfigurationModel(``recebendo o valor do themeModeName ``'system'))}`` como valor padrão, assim, quando o Aplicativo iniciar, o Realm vai atribuir ao themeMode (ao Tema) o valor padrão ou Tema Padrão, ***system***  que é o tema do sistema.

```dart
realm_config.dart

...
    import 'package:realm/realm.dart';
    import 'configuration_model.dart';

    LocalConfiguration config = Configuration.local(
      [
        ConfigurationModel.schema,
      ],
>>>>  initialDataCallback: (realm) {
        realm.add(ConfigurationModel('system'));
      },
    );
...
```

[^ Sumário ^](#aula-08)

#### ***Criando uma instancia do config do Realm:***

Para criar a instancia do config do Realm, precisamos abrir o AppModule() que é o arquivo de injeção de dependência app_module.dart e adicionar um Bind para o config.  
Com o ***AppModule()*** aberto, dentro do registro de dependências, adicione um ``AutoBind`` de instância ``.instance`` do Tipo ``<Realm>(``instanciando o ``Realm`` e passando o config``(config))`` como parâmetro.  
Desta forma, o Realm está pronto para ser usando em qualquer registro.  

```dart
app_module.dart

...
  List<Bind> get binds => [
      //! Versão antiga
      // Bind.singleton((i) => AppStore())

      //? Versão nova a partir de março/2023
      //? Flutter_Modular: ^6.0.0-alpha.5
      // Bind.instance<Realm>(Realm(config)),
>>>>  AutoBind.instance<Realm>(Realm(config)),
      AutoBind.singleton(AppStore.new),
    ];
...
```  

[^ Sumário ^](#aula-08)

### ***Criando Serviço de Configuração***

Crie uma pasta chamada services dentro do caminho ``lib\src\configuration`` e crie um arquivo ``chamado configuration_service.dart``.  
Como nossa [arquitetura](ARCHITECTURE.md#entidades) pede que se use ***Classes Abstratas***, obrigatoriamente deve-se criar uma Classe Abstrata ``abstract class`` chamada ``ConfigurationService{}`` e atribuir os métodos que serão utilizados.  

- ***Classe Abstrata:***<a id='aula8-ClasseAbstrata'></a>  

- O método que irá retornar o ``ConfigurationModel`` que será o ``getConfiguration();``
- O método qua irá salvar, ``void saveConfiguration(``recebendo a String com o nome do Tema ``String themeModeName``, e um ``DateTime`` possivelmente nulo ``?`` recebendo um date ``syncDate);``
- O método que deleta tudo ``void deleteAll();``  

  ***Código Completo da Classe Abstrata***<a id='aula8-CodeCompletoClasseAbstrata'></a>

  ```dart
  configuration_service.dart
  
  ...
  abstract class ConfigurationService {
    ConfigurationModel getConfiguration();
    void saveConfiguration(
      String themeModeName,
      DateTime? syncDate,
    );
    void deleteAll();
  }
  ...
  ```

Agora precisamos criar uma implementação de uma Classe Concreta para a classe abstrata criada acima, para poder usar seus métodos.  

[^ Sumário ^](#aula-08)

- ***Classe Concreta:***<a id='aula8-ClasseConcreta'></a>  
Crie a ***classe concreta*** com o mesmo nome, mas adicionando ***Impl*** (de implementação) ao final do nome para facilitar a identificação, ``class ConfigurationServiceImpl`` e então, implementa ``implements`` o contrato que acabou de ser feito acima ``ConfigurationService {}`` feito isso, todos os métodos criados acima, serão implementados automaticamente.  

[^ Sumário ^](#aula-08)

- ***Injeção de Dependência:***<a id='aula8-InjectDependencyConcreta'></a>  
Adicione o ***Realm*** por injeção de dependência:  
Adicione uma variável ``final`` do Tipo ``Realm`` que recebe o nome ``realm;``.  

- ***Construtor:***  
Inicie a variável ***realm*** no ***Construtor***:  
``ConfigurationServiceImpl(this.realm);``  

- ***Método Obter Configuração - getConfiguration():***<a id='aula8-MetodoObterConfig'></a>  
Para obter alguma informação usando o Realm.  
Dentro do  ``getConfiguration(){``ele irá retornar ``return`` uma lista com todas as informações ``realm.all<``Tipo do modelo que estamos trabalhando ``ConfigurationModel>()`` e pegamos o primeiro item ``.first`` da lista.  
``return realm.all<ConfigurationModel>().first;``

[^ Sumário ^](#aula-08)  

- ***Método Salvar Configuração - saveConfiguration():***<a id='aula8-MetodoSalvarConfig'></a>  
Primeiro criamos a variável ``final`` chamada ``model`` que recebe ``=`` o valor de  ``getConfiguration();``.  

  ```dart
  configuration_service.dart
  
  ...
        void saveConfiguration(String themeModeName, DateTime? syncDate) {
  >>>>  final model = getConfiguration();
  ...
  ```  

  Depois que tiver o valor do ``model``, através do ``real.write((){})`` que possui uma ***Função setState ((){})*** podemos alterar as informações deste modelo e escolher qual será salvo no Banco de Dados.  
  - ``model.syncDate`` recebe ``=`` o valor de ``syncDate;``;  
  - ``model.themeModeName`` recebe ``=`` o valor de ``themeModeName;``.  

  ```dart
  configuration_service.dart
  
  ...
      @override
      void saveConfiguration(String themeModeName, DateTime? syncDate) {
        final model = getConfiguration();
  >>>>  realm.write(() {
  >>>>    model.syncDate = syncDate;
  >>>>    model.themeModeName = themeModeName;
        });
      }
  ...
  ```  

  Desta forma, as informações são salvas de forma síncrona na Base de Dados.  
  
  [^ Sumário ^](#aula-08)

- ***Método de deletar tudo - deleteAll():***<a id='aula8-MetodoDeletarTudo'></a>  
Para deletar tudo, é muito simples ``realm.deleteAll();`` somente isso!  

  ***Código Completo da Classe Abstrata***  

  ```dart
  configuration_service.dart
  
  ...
  class ConfigurationServiceImpl implements ConfigurationService {
    final Realm realm;

    ConfigurationServiceImpl(this.realm);

    @override
    //*todo: pega o primeiro item da lista
    ConfigurationModel getConfiguration() {
      return realm.all<ConfigurationModel>().first;
    }

    @override
    void saveConfiguration(String themeModeName, DateTime? syncDate) {
      final model = getConfiguration();
      //*todo: salva o Tema e a data no Banco de Dados
      realm.write(() {
        model.syncDate = syncDate;
        model.themeModeName = themeModeName;
      });
    }

    @override
    void deleteAll() {
      realm.deleteAll();
    }
  }
  ...
  ```  
  
  [^ Sumário ^](#aula-08)

### ***Injeção de Dependência:***

- ***Adicionar Classe Concreta na Injeção de Dependência:***<a id='AddClasseConcretaInjectDependency'></a>  
Com a configuração de serviço terminada, só é preciso adicionar o ***ConfigurationServiceImpl()*** no arquivo de infeção de dependência.
Com o ***AppModule()*** aberto, dentro do registro de dependências, adicione um ``AutoBind`` de fábrica ``.factory(`` recebendo uma nova instância ``ConfigurationServiceImpl.new),``, pode ser usado o factory, pois, ele sempre irá criar uma nova instância quando ele for iniciado.  
Neste caso não importa, pois não existe nada dentro que precise impedir a reconstrução.  
Só será possível usar a injeção de dependência se obter pela classe abstrata, ConfigurationService nunca pela implementação, para que isso ocorra, iremos Tipar a instância ``<ConfigurationService>``.
Isso nos dá mais segurança, pois, quando precisar usar a injeção de dependência, só vai ser possível acessando pela Classe Abstrata.

```dart
app_module.dart

...
  List<Bind> get binds => [
      //! Versão antiga
      // Bind.singleton((i) => AppStore())

      //? Versão nova a partir de março/2023
      //? Flutter_Modular: ^6.0.0-alpha.5
      // Bind.instance<Realm>(Realm(config)),
      AutoBind.instance<Realm>(Realm(config)),
>>>>  AutoBind.factory<ConfigurationService>(ConfigurationServiceImpl.new),
      AutoBind.singleton(AppStore.new),
    ];
...
```  

O Realm será adicionado automaticamente ao ConfigurationService que também será adicionado automaticamente ao AppStore().  
Da mesma forma que foi feito com o Realm, iremos adicionar o ConfigurationService na injeção de dependência no AppStore, adicionando uma variável ``final`` do Tipo ``ConfigurationService`` chamada ``_ConfigurationService,`` e adiciona ao Construtor da Classe ``AppStore(this._configurationService);``.  

```dart
app_store.dart

...
      class AppStore {
      final themeMode = ValueNotifier(ThemeMode.system);
      final syncDate = ValueNotifier<DateTime?>(null);
>>>>  final ConfigurationService _configurationService;

      //*todo: construtor da classe
>>>>  AppStore(this._configurationService);
...
```

> ### E isso que é bom no Modular, ele vai injetar automaticamente o ConfigurationService dentro do Construtor e vai entender tudo e resolver todas as instâncias isso é Injeção de Dependência.

[^ Sumário ^](#aula-08)

### ***Iniciando o Banco de Dados:***

Para iniciar o ***Banco de Dados*** precisamos abrir o ``AppStore()`` ***app_store.dart*** e adicionar no método ``void init()`` com as definições a seguir:  

- Adicione uma variável ``final`` chamada ``model`` que recebe ``=`` o valor do ***getConfiguration***.  
``final model = _configurationService.getConfiguration();``.  
- Chamo diretamente a variável ``syncDate.value`` e atribuo ``=`` o valor de ``mode.syncDate,``, já fica globalmente quando iniciar.  

```dart
app_store.dart

...
      void init() {
        final model = _configurationService.getConfiguration();
>>>>    syncDate.value = model.syncDate;
      }
...
```

- Já o ``themeMode``, é um caso especial porquê ele é um ***enum*** e para obter um enum, será preciso criar uma variável que irá retornar um ***ThemeMode***.  
Crie uma variável privada do Tipo ``ThemeMode`` chamada ``_getThemeModeByName(``que recebe o ***name*** ``String name){`` e ao receber o enum que precisamos, retorna ``return`` o ``ThemeMode`` no ***ThemeMode***, tem uma propriedade chamada ***value*** que é um array "lista" com todos os ``.values`` do enum e que vamos obter o primeiro item da lista onde``.firstWhere(``cada ``mode) =>`` terá um mode.name e terá que ser igual ``==`` ao ``name);}`` que foi passado como String e é esse valor que será passado para o ***getThemeMode*** que em nosso caso os valores são ***(system, claro ou escuro)***.  

Agora que terminamos de criar o ***_getThemeModeByName()***, precisamos definir o ***themeMode*** no método ***init()***.  
Chamamos o ``themeMode.value`` diretamente como fizemos com o syncDate, e atribuímos ``=`` a ele o valor da variável privada que acabamos de criar ``_getThemeModeByName(``e atribuímos o valor da String ``model.themeMode.name);``  

```dart
app_store.dart

...
    void init() {
      final model = _configurationService.getConfiguration();
      syncDate.value = model.syncDate;
>>>>  themeMode.value = _getThemeModeByName(model.themeModeName);
    }
...
...
>>>>  ThemeMode _getThemeModeByName(String name) {
        return ThemeMode.values.firstWhere((mode) => mode.name == name);
      }
...
```  

> ***Agora que momento irá iniciar?  
> No mesmo momento em que iniciar a Classe AppStore() pois ele estará inserido no Construtor da Classe.  
> Com isso, ele inicia o Sistema de Injeção.***

[^ Sumário ^](#aula-08)

### ***Salvando o Banco de Dados***

Para salvar o ***Banco de Dados*** precisamos abrir o ``AppStore()`` ***app_store.dart*** e adicionar no método ``void save()`` com as definições a seguir:  

- O ***save()*** é muito simples de se definir, pois ele já está sendo chamado nos métodos ***changeThemeMode()*** e ***setSyncDate()***.  
- Dentro do método ``save()``, iremos definir o ``_configurationService`` pegando os valores do Tema e da Data ``.saveConfiguration(``recebendo uma String contendo o nome do Tema ``themeMode.value.name``, e recebendo o valor do ***date*** data ``syncDate.value);``  

```dart
app_store.dart

...
void save() {
  _configurationService.saveConfiguration(
    themeMode.value.name,
    syncDate.value,
  );
}
...
```

Com isso, toda vez que houver uma modificação no ***Tema*** ou na ***Data,*** o método ***save()*** será chamado e as alterações serão gravadas, agora nosso ***Gerenciamento de Estado*** está completo.  

> ### Dica:
>
> ***Função: é todo procedimento que retorna algo;  
> Método: é todo procedimento sem retorno.***

[^ Sumário ^](#aula-08)

### ***Função Apagar Cache:***

Para apagar o cache, precisamos criar uma ***Função*** chamada ***deleteApp()***.  

- Abra o arquivo ***app_store.dart*** e crie uma Função void chamada ``deleteApp(){``que irá retornar ``_configurationService.deleteAll();}``  

```dart
app_store.dart

...
void deleteApp() {
  _configurationService.deleteAll();
}
...
```  

E o deleteApp() vai ser chamado na Página de Configurações, abrindo o arquivo configuration_page.dart no Componente OutlinedButton() na propriedade onPressed: iremos adicionar o valor appStore.deleteApp, e fazer a chamada da Função.

```dart
configuration_page.dart

...
    OutlinedButton(
      onPressed: appStore.deleteApp,
      child: const Text('Apagar Cache e Reiniciar App'),
    ),
...
```  

[^ Sumário ^](#aula-09)

### Aula 09

### Relacionamento de Tabelas no Realm

Pra criar um relacionamento entre Tabelas no Realm, precisamos seguir umas regras:  

- ***@PrimaryKey()***: para fazer o Relacionamento entre as Tabela e precisa de um identificador único;
- ***Uuid***: é o identificador único da Tabela, do próprio Realm;
- ***<_Class>***: o relacionamento, precisa ser feito somente com as ***Classes Privadas*** *(com underline na frente)*;  

O relacionamento é feito com as Classes Privadas e não com as Classes geradas ``<_Task>`` em nosso exemplo a seguir.  

Vamos precisar criar duas Classes para poder fazer o Relacionamento entre elas:

[^ Sumário ^](#aula-09)

- ***Classe _Task***: onde serão salvas as Tarefas;<a id='aula9-ClasseTask'></a>  
Primeiro, criamos um arquivo chamado `task_model.dart` no caminho ***lib\src\shared\services\realm*** que será nossa Classe;  
  - `@RealmModel()`: Identifica que é Classe é uma Tabela para o Real;  
  - `class _Task{}`: Cria a Classe Privada com o mesmo nome do arquivo;  
  Dentro cria as propriedades da Tabela:  
  - `@PrimaryKey()`: não esquecendo de usar o a notação ***notation***  acima da propriedade Uuid para identifica-la como a ***chave primária***;  
  - `late Uuid id;`: ***Uuid*** é o id nativo do Realm e terá o nome de ***id***;  
  - `late String description;`: variável que conterá a descrição da tarefa e terá o nome ***description***;  
  - `bool complete = false;`: variável que checa se a tarefa foi ou não cumprida, recebe o valor padrão ***false*** *(não cumprida)*.  

    ```dart
    task_model.dart
    
      import 'package:realm/realm.dart';

      part "task_model.g.dart";

      @RealmModel()
      class _Task {
        @PrimaryKey()
        late Uuid id;
        late String description;
        bool complete = false;
      }
    ...
    ```

  Quando for fazer o Relacionamento, uma das propriedades acima, precisa ser identificada como sendo a ***Chave Primária*** *(como foi dito antes)*, para poder identificar toda a Tabela, e o ***id*** foi escolhido para ser a ***Chave Primária***, por isso recebeu a notation ***@PrimaryKey()***, posteriormente a então "Tabela" ***_Task()*** pode ser usada em outras Classes um ***array*** *(lista)* desta própria Task.

[^ Sumário ^](#aula-09)

- ***Classe _TaskBoard***:<a id='aula9-ClasseTaskBoard'></a> onde serão gerenciadas as tarefas;  
Por enquanto a ***Classe _TaskBoard*** será criada no mesmo arquivo ***task_model.dart***, mas, futuramente será criado um arquivo separado para ela.  
  - `@RealmModel()`: Identifica que é Classe é uma Tabela para o Real;  
  - `class _TaskBoard{}`: Cria a Classe Privada que irá gerenciar as Tarefas;  
  - `@PrimaryKey()`: não esquecendo de usar o a notação ***notation***  acima da propriedade Uuid para identifica-la como a ***chave primária***;  
  - `late Uuid id;`: ***Uuid*** é o id nativo do Realm e terá o nome de ***id***;  
  - `late String title;`: variável que conterá o Título da tarefa e terá o nome ***title***;  
  - `late List<_Task> tasks;`: relaciona uma lista ***List*** de ***<_Task>*** com o nome de ***tasks***;  
  - `bool enable = false;`: variável que checa se a tarefa está ou não habilitada, recebe o valor padrão ***true*** *(habilitada)*;  
  - ``part "task_model.g.dart";``: é preciso adicionar esse part com o mesmo nome de arquivo com a única diferença é que tem que adicionar o ***.g*** antes do ***.dart***, para que o Realm crie o arquivo da tabela corretamente.  
  
    ```dart
    task_model.dart
    
    ...
      class _TaskBoard {
        @PrimaryKey()
        late Uuid id;
        late String title;
        late List<_Task> tasks;
        bool enable = true;
      }
    ...
    ```  

  Agora precisamos rodar um comando ``flutter pub run realm  generate`` no terminal para que o Realm gere a tabela, lembrando que toda vez que for adicionado ou modificar qualquer propriedade na Classe.  
  Com esse comando, ele gera um modelo público do mesmo modelo que criamos de forma privada, para que possamos acessar os dados fora da Classe Privada.  

  > ***TAREFA:***  
  > *Modificar o arquivo recém criado, separando as Classes, mas, que uma enxergue as Classes Privadas como se fizessem parte do mesmo arquivo.*  
  > ***Dica:*** *usar part e part of.*  

[^ Sumário ^](#aula-09)

### Separando as Classes Task e TaskBoard

Para que os arquivos funcionem separado mas como se ainda fossem um só, compartilhando as ***Classes Privadas*** entre si, eles precisam usar uma propriedade chamada `part '';`, na Classe principal contendo o arquivo da segunda Classe.  

```dart
task_model.dart

...
      import 'package:realm/realm.dart';

      part 'task_model.g.dart';
>>>>  part 'task_board_model.dart';

      @RealmModel()
      class _Task {
        @PrimaryKey()
        late Uuid id;
        late String description;
        bool complete = false;
      }
...
```  

Já na segunda Classe, ela precisa usar a propriedade chamada `part of '';`, contendo o arquivo da primeira Classe, com uma observação que não precisa importar nenhum outro arquivo que esteja sendo importado na ***Classe Principal***.  

```dart
task_board_model.dart

...
>>>>  part of 'task_model.dart';

      @RealmModel()
      class _TaskBoard {
        @PrimaryKey()
        late Uuid id;
        late String title;
        late List<_Task> tasks;
        bool enable = true;
      }
...
```

[^ Sumário ^](#aula-09)

### Configurando Base de Dados Realm

Para que as Tabelas funcionem, precisamos adiciona-las a Base de Dados do Realm, para isso, abra o arquivo ***realm_config.dart*** no caminho `lib\src\shared\services\realm` e adicione o `Task.schema` referente a ***Classe _Task*** e o `TaskBoard.schema` referente a ***Classe _TaskBoard***.  

```dart
realm_config.dart

...
    import 'package:listinha/src/shared/services/realm/models/task_model.dart';
    import 'package:realm/realm.dart';
    import 'models/configuration_model.dart';

    LocalConfiguration config = Configuration.local(
      [
        ConfigurationModel.schema,
>>>>    Task.schema,
>>>>    TaskBoard.schema,
      ],
      initialDataCallback: (realm) {
        realm.add(ConfigurationModel('system'));
      },
    );
...
```

[^ Sumário ^](#aula-10)

### Aula 10

### Criação de Widget Customizado

Nesta aula, iremos criar a Tela de TaskBoard onde criaremos e personalizaremos o Widget TaskCard, seguindo esse passo a passo, será possível criar qualquer Tela.  
Mas antes de começar a criar nosso Widget, precisamos fazer uma alteração na HomePage().  

#### Criando o Widget TaskCard

Primeiro precisamos criar um arquivo chamado `task_card.dart`, como ele é um ***Widget*** da página ***home***, iremos criar o arquivo no caminho `lib\src\home\widgets`.  

- Dentro, iremos criar um `StatelessWidget` com o atalho `stl`;
- Receberá o nome de `TaskCard`;
- Dentro do `Widget build(BuildContext context)` irá retornar `return` um Componente `Container`, onde será criado nosso ***Widget TaskCard***.

  ```dart
  task_card.dart

  ...
      import 'package:flutter/material.dart';

      class TaskCard extends StatelessWidget {
        const TaskCard({super.key});

        @override
        Widget build(BuildContext context) {
          return Container();
        }
      }
  ...
  ```  

  Dentro do ***Container()*** é onde será criada a interface do nosso Widget onde estarão as informações que serão visualizadas pelo usuário.  
  De agora em diante, todos os Componentes serão criados dentro do Componente `Container()` "dentro dos parenteses".

- Adicione a propriedade `padding:` com o valor `EdgeInsets.symmetric(),`;
  - Com os valores na `vertical: 12,` que dará o espaçamento no topo e na base.
  - Com os valores na `horizontal: 16,` que dará o espaçamento na esquerda e na direita.
- Inicialmente vamos dar uma altura `height:` com o valor de `150,` para o Container;
- Vamos dar uma cor inicial para podermos enxergar o Container `color:` com o valor `Colors.red.shade100,`;  
- Agora adicionaremos uma propriedade `decoration:` com o valor `BoxDecoration()` onde adicionaremos o arredondamento das bordas;
- Dentro do `BoxDecoration()` adicionaremos a propriedade `borderRadius:` com o valor `BorderRadius.circular(20),`;
- Agora adicionaremos os itens do Card que serão: o ícone, o Status, o Título, a Barra de Progresso e o Texto de Progresso;
  - Para iniciar, ainda dentro do Container, vamos adicionar a propriedade `child:` com um Componente `Column(),` que conterá nossos itens;
  - Adicione a propriedade `crossAxisAlignment:` para alinhar o eixo Vertical no inicio `CrossAxisAlignment.start,`;
  - Dentro da ***Column*** na propriedade `children: []` vamos adicionar uma `Row(),` que conterá os itens `icon` e `status`;
  - Dentro da ***Row*** na propriedade `children: []` vamos adicionar um `Icon(),` contendo o ícone `Icons.access_time_outlined`;
  - Adicione um `Spacer(),` para que o ***Text()*** vá para o final da ***Row()***;
  - Ainda dentro de ***children: []***, vamos adicionar um `Text(),` que conterá o ***Status da Tarefa*** `'status'`;
  - Adicione um `Spacer(),` para que o ***Text(), a Barra de Progresso e o Texto de Progresso*** vá para o final da ***Column()***;
  - Fora da ***Row()***, mas ainda dentro da ***Column()***, vamos adicionar um `Text(),` que conterá o ***Título da Tarefa*** `'Título da Tarefa'`;
  - Adicione uma Barra de Progresso `LinearProgressIndicator(),`
    - Dentro adicione uma cor `color: Colors.red,`;
    - E adicione um valor qualquer para a barra `value: 0.6,`;
  - Adicione um `Text(),` contendo o Texto de Progresso `'1/4'`.
  
    ```dart
    task_card.dart
    
    ...
        Widget build(BuildContext context) {
        return Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.red.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.access_time_outlined),
                  Spacer(),
                  Text('Status'),
                ],
              ),
              Spacer(),
              const Text('Título da Tarefa'),
              const LinearProgressIndicator(
                color: Colors.red,
                value: 0.6,
              ),
              const Text('1/4'),
            ],
          ),
        );
      }
    }
    ...
    ```

[^ Sumário ^](#aula-10)
#### Componentização dos Itens da TaskCard()

Precisaremos saber algumas informações sobre os itens que acabamos de criar acima e ver o que vamos precisar componentizar.  
Iremos fazer uso novamente do ***Self Explanatory Variable*** que significa: *Variável de Auto Explicação*.  

- Faremos a declaração de todas as variáveis que usaremos no Card dentro do Build;

  ```dart
  task_card.dart

  ...
    Widget build(BuildContext context) {
      final theme = Theme.of(context);
      final backgroundColor = theme.colorScheme.primaryContainer;
      final color = theme.colorScheme.primary;

      final progress = 0.25;
      final title = 'Título Exemplo';
      final statusText = 'Status Exemplo';
      final progressText = '1/4';
      final iconData = Icons.access_time_outlined;
  ...
  ```

- Agora faremos as substituições das variáveis em seus respectivos lugares;

  ```dart
  task_card.dart

  ...
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        height: 130,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(iconData),
                const Spacer(),
                Text(statusText),
              ],
            ),
            const Spacer(),
            Text(title),
            LinearProgressIndicator(
              color: color,
              value: progress,
            ),
            Text(progressText),
          ],
        ),
      );
    }
  }
  ...
  ```  

O que foi feito nos dois passos acima, é que foram identificados os itens que iriam ser adicionados nas variáveis e o próximo passo será procurar uma forma de resolve-los.  
Uma forma de resolve-los, é recebendo o módulo feito na aula passada que é o TaskBoard, para isso, adicione uma variável `final` do Tipo `TaskBoard` chamada `board;` fora do Build do nosso Componente.  
E fazer com que o ***Construtor*** receba nossa variável ***board***, a adicionando com um `required this.board`.

```dart
task_card.dart

...
  class TaskCard extends StatelessWidget {
      
    final TaskBoard board;

    const TaskCard({super.key, required this.board});
...
```  

Agora abra o ***home_page.dart***, pois, precisamos adicionar dentro do `itemBuilder:` localizado dentro do body: uma variável `final board` que irá receber `=` uma tarefa `TaskBoard(`que receberá um `Uuid.v4(),` e um ***title*** da tarefa `'Nova Lista de Tarefas'),` para que possamos testar nosso TaskCard.  
Mas para isso, precisamos adicionar nosso modelo no `TaskCard()` de retorno, a propriedade `board:` com seu valor `board,` que é nosso modelo.  
Então, é dessa forma que iremos Componentizar, vamos receber um ***board*** `final board = TaskBoard(Uuid.v4(),'Nova Lista de Tarefas');` e transforma-lo em um ***Widget*** `return TaskCard(board: board);` a cada item da ***ListView()***.  

[^ Sumário ^](#aula-10)

#### Atribuindo Valor à Variável Dinamicamente

Abra o arquivo ***task_card.dart***;  
Com o a variável ***board*** `final TaskBoard board;` em mãos, já temos nosso ***objeto*** para resolver algumas coias.  
Através desta variável teremos acesso aos dados contantes na ***Classe TaskBoard***, por isso vamos pegar os valores das variáveis dinamicamente, a seguir faremos as alterações.  
Poderia pegar o valor da variável diretamente no Widget sem precisar criar uma variável pra armazenar seu valor, sim poderia, mas criando as variável ou o ***Self Explanatory Variable*** o cérebro aprende mais fácil.  
Pois não a quantidade de código (menos) que importa, mas sim, o processo para que aconteça que importa, então, precisa criar um processo que seja de fácil assimilação para o cérebro.  
Então, com o uso das ***Variáveis Auto Explicativas***, fica melhor para fixar o processo na cabeça.  

[^ Sumário ^](#aula-10)

#### Função getProgress() - Barra de Progresso

- `final progress = 0.25;`  
Precisamos obter a partir da ***Lista de Tasks***, pois o `TaskBoard` ***task_board_model.dart*** tem uma ***tasks*** `late List<_Task> tasks;`.  
Obtemos a Lista Completa e fazemos um cálculo para saber o quanto falta para completar a lista.  
Cada uma das variáveis pode ser uma Função, vamos ver como fica cada uma delas.  

> ***DICA:***  
> A Função não ***getProgress()*** precisa receber nada, mas, por uma questão de ***Paradigma Funcional*** *(Stateless)* é bom que se receba o que irá trabalhar fora do ***Build***.  
> Sabemos que temos acesso as informações globalmente, mas, é bom deixar as informações o mais Stateless possível.  
> Ou seja, dentro do ***escopo*** *(das chaves ***{ }***)* não é bom que se acesse nada de fora.  

- Abra o aquivo ***task_card.dart*** fora do `Build`, crie uma ***Função*** que retorne um `doble getProgress(List<Task> tasks){},` dessa forma, podemos realizar o cálculo corretamente.  
- Podemos realizar o cálculo, rodando na Aplicação ou utilizando a ***Ferramenta de Testes*** *(clicando com o botão direito do mouse em cima do arquivo e depois em ***Go to Test***)*.  
- Os Testes de Unidade, não são para garantir que seu código está funcionando, existe ***cobertura de testes 100%*** e o código não vai estar funcionando, ainda vai ter ***bugs***.  
- Para que serve os testes: serve para ajudar na programação, ao invés de ficar fazendo testes direto na Tela, testamos somente a Função ou o Método para saber se está funcionando da forma que se espera.  
- Nós iremos realizar o teste da Função que acabamos de criar `doble getProgress(List<Task> tasks){},` para saber se ela está funcionando baseado em uma Lista de Tasks.  
- Para isso, `final progress` espera receber `=` a Lista de Tasks `getProgress(board.tasks);`  
- Para poder obter esse algoritmo, precisamos realizar os testes:  
  
  [^ Sumário ^](#aula-10)

  #### Teste Unitário
  
  - Abra o arquivo `task_card_test.dart` no caminho `test\src\home\widgets\` para poder criar nosso teste.  
  - Dentro do arquivo de testes, dentro do main(){}, crie uma Função chamada `test('task card ...', () {});` para realizar os testes em nosso arquivo.  
  - Dentro do escopo *(chaves {})* crie nosso algoritmo de teste.  
  - Crie uma variável `final` chamada `tasks` que recebe `=` uma Lista `[]` de tasks.
  - Crie 4 Listas de Tarefas *(utilizando o Paradigma Funcional)* para poder realizar o cálculo.  
  - Duas ***tarefas*** `Task(` que recebe um ***id*** `Uuid.v4(),` que recebe uma ***descrição*** `'',` que recebe um ***status*** `complete: true),`.  
  - Duas ***tarefas*** `Task(` que recebe um ***id*** `Uuid.v4(),` que recebe uma ***descrição*** `''),` que não recebe um ***status*** pois o padrão é `false`.  
  - Desta forma, espera-se que o resultado seja ***50%*** ou seja, ***0.5***.  

    > ***DICA:***  
    > O progress vai receber um TaskCard que vai receber um board, e essa board pode ser um ***Mockup***, pode fazer com que a variável ***board*** seja possivelmente nula `final TaskBoard? board;` ou podemos criar um modelo *(como foi feito no `itemBuilder:`)* da ***home_page.dart***.  

  - Como isso não importa no momento, pois, só irá servir para nosso mockup, porquê o que vai nos interessar mesmo é o método `getProgress(tasks)`, então, crie um modelo antes da Função de teste:  
  `final board = TaskBoard(Uuid.v4(), 'Nova Lista de Tarefas');`.
  - Crie uma variável final chamada progress que recebe = um TaskCard(e recebe uma board: board).getProgress(tasks).  
  - O resultado esperado desta Função é que seja de 50%, então:  
  `expect(progress, 0.5);`  
  Então, agora temos as informações, temos a verificação a ser executada e o resultado esperado, então, agora posemos começar a escrever o algoritmo sem precisar pensar em Tela.  
  
    ```dart
    task_card_test.dart
    
    ...
      void main() {
      final board = TaskBoard(
        Uuid.v4(),
        'Nova Lista de Tarefas',
      );
      test('task card ...', () {
        final tasks = [
          Task(Uuid.v4(), '', complete: true),
          Task(Uuid.v4(), '', complete: true),
          Task(Uuid.v4(), ''),
          Task(Uuid.v4(), ''),
        ];

        final progress = TaskCard(board: board).getProgress(tasks);

        expect(progress, 0.5);
      });
    }
    ```

[^ Sumário ^](#aula-10)

#### Cálculo da Barra de Progresso

- Volte para o arquivo ***task_card.dart***;  
- Dentro do escopo ***{ }*** da ***Função getProgress()*** vamos criar nosso Algoritmo;  
- Para realizar o cálculo:
- Crie uma variável `final` chamada `completas` que receberá `=` as Tarefas `tasks.where((task)` e verifico `=>` se todas as Tarefas estão Completas `task.complete)` se todas são ***true*** e pego o tamanho total da lista `.length;`.
- Para realizar o cálculo a Função irá retornar `return` o tamanho das Listas Completas `completas` dividido `/` pelo tamanho das Tarefas `tasks.length;`;  

  ```dart
  task_card.dart

  ...
    double getProgress(List<Task> tasks) {
      final completas = tasks.where((task) => task.complete).length;
      return completas / tasks.length;
    }
  ...
  ```  

- Agora que obtemos o valor do `progress`, podemos realizar outros cálculos:  
- Com a mesma ***Função getProgress()***, podemos criar a Função `getProgressText()` que irá retomar o mesmo resultado com uma diferença que será em forma de ***String***.  

  ```dart
  task_card.dart

  ...
    String getProgressText(List<Task> tasks) {
      final completas = tasks.where((task) => task.complete).length;
      return '$completas/${tasks.length}';
    }
  ...
  ```  

- Com isso, conseguimos retornar os valores corretos nas variáveis ***progress*** e ***progressText***;  

  ```dart
  task_card.dart

  ...
      Widget build(BuildContext context) {
        final theme = Theme.of(context);
        final backgroundColor = theme.colorScheme.primaryContainer;
        final color = theme.colorScheme.primary;

  >>>>  final progress = getProgress(board.tasks);
  >>>>  final progressText = getProgressText(board.tasks);
  ...
  ```  

[^ Sumário ^](#aula-10)

#### Criando um Enum com Propriedades

Será criada uma Função que retornará um Enum, contendo os ***ícones*** com seus respectivos ***Status*** *(Pendentes, Concluídos e Desativados)*.  
Usaremos a nova versão do Enum, pois agora, temos a possibilidade de adicionar propriedades e Construtor.

- Ainda do arquivo ***task_card.dart***, mas, fora da Classe TaskCard, crie a Classe Enum `enum` chamada `TaskCardStatus`.  

- Adicione as propriedades relacionadas ao status da tarefa, recebendo 2 argumentos posicionais ***icon*** e **text**;
  - `pending(Icons.access_time_outlined, 'Pendente'),`: responsável por notificar quando a tarefa não foi concluída e está ***pendente*** e adiciona o ícone e o texto do status.
  - `completed(Icons.check,'Concluída'),`: responsável por notificar quando a tarefa foi ***concluída*** e adiciona o ícone e o texto do status.
  - `disabled(Icons.cancel_outlined,'Desativada');`: responsável por notificar quando a tarefa foi ***desativada*** e adiciona o ícone e o texto do status.  
- Adicione as variáveis que irão guardar as informações dos ícones e dos status.  
  - `final IconData icon;`: cria uma variável `final` do Tipo `IconData` chamada `icon`;
  - `final String text;`: cria uma variável final do Tipo `String` chamada `text`;  
- Adicione o Construtor da Classe enum TaskCardStatus.
  - `const TaskCardStatus(this.icon, this.text);`  

  ```dart
  task_card.dart

  ...
    enum TaskCardStatus {
      pending(Icons.access_time_outlined, 'Pendentes'),
      completed(Icons.check, 'Concluídos'),
      disabled(Icons.cancel_outlined, 'Desativadas');

      final IconData icon;
      final String text;

      const TaskCardStatus(this.icon, this.text);
    }
  ...
  ```  

[^ Sumário ^](#aula-10)

#### Criando o Método getStatus()

Com esse Método, podemos obter os status das tarefas através da lógica a seguir.  

- Dento da ***Classe TaskCard***, crie o Método `getStatus(TaskCard board, double progress){}` do Tipo `TaskCardStatus`;
- Que retorna um `board` do Tipo `TaskBoard` e um `progress` do Tipo `double` *(para não precisar refazer a cálculo do progress)*;  
- Dentro do escopo *{ }*, crie a lógica:

  - `if(!board.enable)`: se o board.enabled for false "!board", então;
  - `{return TaskCardStatus.disabled;}`: retorna o status desativado;
  - `else if (progress < 1.0)`: senão, se o progress for menor que 1.0, então;
  - `{return TaskCardStatus.pending;}`: retorna o status pendente;
  - `else {return TaskCardStatus.completed;}`: senão, retorna o status concluído.

    ```dart
    task_card.dart

    ...
        TaskCardStatus getStatus(TaskBoard board, double progress) {
          if (!board.enable) {
            return TaskCardStatus.disabled;
          } else if (progress < 1.0) {
            return TaskCardStatus.pending;
          } else {
            return TaskCardStatus.completed;
          }
        }
    ...
    ```  
  
- Agora adicione ao ***Self Explanatory Variable*** uma variável `final` chamada `status` que recebe `=` o status da tarefa `getStatus(`recebendo o TaskBoard `board`, e o cálculo do progresso `progress);`, e que irá guardar as informações do status.  
- Substitua o valor da variável `IconData` por `status.icon`;
- Substitua o valor da variável `textStatus` por `status.text`;

    ```dart
    task_card.dart

    ...
        Widget build(BuildContext context) {
          final theme = Theme.of(context);
          final backgroundColor = theme.colorScheme.primaryContainer;
          final color = theme.colorScheme.primary;

          final progress = getProgress(board.tasks);
          final progressText = getProgressText(board.tasks);
    >>>>  final status = getStatus(board, progress);
          final title = board.title;
    >>>>  final iconData = status.icon;
    >>>>  final statusText = status.text;
    ...
    ```  

[^ Sumário ^](#aula-10)

#### Criando o Método getBackgroundColor()

Com esse Método, podemos obter as cores relativas a cada um dos status ***(Pendente, Concluído e Desativado)*** através da lógica a seguir.

- Dentro da ***Classe TaskCard***, crie um Método do Tipo `Color` chamado `getBackgroundColor`;
  - Que irá receber `(TaskCardStatus status,` modificará a cor em relação ao status;
  - Recebendo também o `themeData theme)`modificando a cor em relação ao Tema;  
- Dentro do escopo *{ }* crie um ***switch/case*** contendo a lógica.
  - `switch(status){`: `switch` compara os valores da variável `status`;
    - `{case TaskCardStatus.pending:`: caso o ***status*** seja ***Pendente***, então:
    - `return theme.colorScheme.primaryContainer;`: aplique a cor do Tema `.primaryContainer`;
    - `{case TaskCardStatus.completed:`: caso o ***status*** seja ***Concluído***, então:
    - `return theme.colorScheme.tertiaryContainer;`: aplique a cor do Tema ***tertiaryContainer***;
    - `{case TaskCardStatus.disabled:`: caso o ***status*** seja ***Desativado***, então:
    - `return theme.colorScheme.errorContainer;}}`: aplique a cor do Tema `errorContainer`;
  
  ```dart
  task_card.dart
  
  ...
      Color getBackgroundColor(TaskCardStatus status, ThemeData theme) {
        switch (status) {
          case TaskCardStatus.pending:
            return theme.colorScheme.primaryContainer;
          case TaskCardStatus.completed:
            return theme.colorScheme.tertiaryContainer;
          case TaskCardStatus.disabled:
            return theme.colorScheme.errorContainer;
        }
      }
  ...
  ```

[^ Sumário ^](#aula-10)

#### Criando o Método getColor()

Assim como foi feito no Método getBackgroundColor() iremos fazer o mesmo no Método getColor().  
Iremos obter as cores da Barra de Status, relativas a cada um dos status (Pendente, Concluído e Desativado) através da lógica a seguir.  

- Dentro da ***Classe TaskCard*** e abaixo do Método ***getBackgroundColor()***, crie um Método do Tipo `Color` chamado `getColor`;
  - Que irá receber `(TaskCardStatus status,` modificará a cor em relação ao status;
  - Recebendo também o `themeData theme)`modificando a cor em relação ao Tema;  
- Dentro do escopo *{ }* crie um ***switch/case*** contendo a lógica.
  - `switch(status){`: `switch` compara os valores da variável `status`;
    - `{case TaskCardStatus.pending:`: caso o ***status*** seja ***Pendente***, então:
    - `return theme.colorScheme.primary;`: aplique a cor do Tema `.primary`;
    - `{case TaskCardStatus.completed:`: caso o ***status*** seja ***Concluído***, então:
    - `return theme.colorScheme.tertiary;`: aplique a cor do Tema ***tertiary***;
    - `{case TaskCardStatus.disabled:`: caso o ***status*** seja ***Desativado***, então:
    - `return theme.colorScheme.error;}}`: aplique a cor do Tema `error`;
  
    ```dart
    task_card.dart
    
    ...
        Color getColor(TaskCardStatus status, ThemeData theme) {
          switch (status) {
            case TaskCardStatus.pending:
              return theme.colorScheme.primary;
            case TaskCardStatus.completed:
              return theme.colorScheme.tertiary;
            case TaskCardStatus.disabled:
              return theme.colorScheme.error;
          }
        }
    ...
    ```  

- Agora modificamos os valores das variáveis `backgroundColor` e `color`:  
  - final backgroundColor: para receber `=` as ***cores do Tema*** relativas ao ***status*** `getBackgroundColor(status, theme);`;  
  - `final color:` para receber `=` as ***cores do Tema*** para a Barra de Progresso relativas ao ***status*** `getColor(status, theme);`.
  
    ```dart
    task_card.dart

    ...
          Widget build(BuildContext context) {
          final theme = Theme.of(context);

          final progress = getProgress(board.tasks);
          final progressText = getProgressText(board.tasks);
          final status = getStatus(board, progress);
          final title = board.title;
          final iconData = status.icon;
          final statusText = status.text;
    >>>>  final backgroundColor = getBackgroundColor(status, theme);
    >>>>  final color = getColor(status, theme);
    ...
    ```

- ***Conclusão:***  
Foram resolvidas todas as questões, todas as informações vindas da ***Classe TaskBoard*** foram convertidas em ***Widgets*** e todos as Funções podem ser testadas.  

[^ Sumário ^](#aula-10)

- ***CORREÇÃO ERRO OVERFLOW BARRA DE PROGRESSO***<a id='aula10-erroOverflow'></a>

  - `if (tasks.isEmpty) return 0;`: Se a lista de tarefas esticar vazia, atribua o valor 0;

```dart
task_card.dart

...
      double getProgress(List<Task> tasks) {
>>>>    if (tasks.isEmpty) return 0;
        final completas = tasks.where((task) => task.complete).length;
        return completas / tasks.length;
      }
...
```

[^ Sumário ^](#aula-10)

#### Modificando a HomePage()

- Abra o arquivo ***home_page.dart*** no caminho `lib\src\home`;
- Dentro da propriedade `body:` iremos trocar o Componente `Column()` por um Componente chamado `Stack()`.  
Este componente é responsável por empilhar vários componentes um em cima do outro, com isso podemos deixar o `TaskCard()` por baixo dos ***Botões Segmentados*** `SegmentedButton()`;  

  ```dart
  home_page.dart

  ...
        body: Center(
  >>>>    child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SegmentedButton(
                  segments: const [
                    ButtonSegment(
  ...
  ```  

- Agora precisamos alinhar os Botões centralizados no top, para isso vamos envolver o Componente `Padding()` com um Widget ***CTRL+PONTO*** e escolher `Wrap with widget` e depois renomear par `Align();`
- Adicione a propriedade `alignment:` com o valor `Alignment.topCenter,` que fará com que os botões fiquem centralizados no topo da Tela;  

  ```dart
  home_page.dart

  ...
        body: Center(
          child: Stack(
            children: [
  >>>>        Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SegmentedButton(
  ...
  ```  

- Agora adicione o Componente que irá ficar por trás da Barra de Botões;
- Acima do alinhamento `Align()`, adicione o Componente `ListView.builder()` que irá conter o nosso Componente `TaskCard()`;
- Dentro do ***ListView.builder()*** vamos definir a propriedade `itemBuilder: (`que recebe um contexto que não será passado `_,` e um `index){},`;
- Para que a lista não fique infinita, iremos adicionar a propriedade `itemCount:` com o valor de `100,`, ou seja, uma lista de 100 itens;
- E irá retornar `return` o `TaskCard();`

  ```dart
  home_page.dart

  ...
        body: Center(
          child: Stack(
            children: [
  >>>>        ListView.builder(
  >>>>          itemCount: 100,
  >>>>          itemBuilder: (_, index) {
  >>>>            return TaskCard();
                },
              ),
  ...
  ```  
  
  Com isso temos o Container() vermelho, mas ainda não podemos ver, pois está sem separação.  

- Para adicionar uma separação, usaremos o Componente `ListView.separated()` ao invés do ***ListView.builder()***;
- Como separador usaremos a propriedade `separatorBuilder: (context, index) {},` onde podemos retornar `return` qualquer Widget;
- E vamos usar o `SizedBox()` com a propriedade `height:` altura com o valor `20,`;  

  ```dart
  home_page.dart

  ...
          ListView.separated(
  >>>>      separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
  ...
  ```

- Para que fique parecido com um ***Card***, adicionaremos a propriedade `padding:` com o valor `EdgeInsets.fromLTRB(20, 50, 20, 90),` onde ***.fromLTRB*** significa ***Left, Top, Right e Bottom***;

  ```dart
  home_page.dart

  ...
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 90),
  ...
  ```
