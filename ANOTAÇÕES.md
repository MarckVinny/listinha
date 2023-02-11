# ANOTAÇÕES  

## Aula 01 -  

## Aula 02 -  

## Aula 03 -  

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
