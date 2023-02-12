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

___

## ANOTAÇÕES

___

## Aula 01 -  

## Aula 02 -  

## Aula 03 -  

## Aula 04 - Componentização  

[^ Sumário ^](#aula-04)

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
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SegmentedButton(
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
  -  ```/home``` para ele acessar o módulo;  
  -  ```/``` é referente ao filho de ***home*** que poderia ser o ```/edit```.  

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
