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

- Continuemos, o próximo a ser criado será o seguimento de botões, que será o componente ```Column()``` e dentro dele serão colocados os botões dentro de ```SegmentedButton<int>()``` por enquanto os segmentos serão definidos como inteiros ```<int>``` e o selecionado ```selected:``` terá o valor 0.  
E os segmentos ```segments:``` terá uma lista ```[]``` de ```ButtonSegment()``` contendo ```value:``` e ```label:```.  
Logo depois serão criadas cópias destes segments criando assim os outros botões que serão: ***Todos, Pendentes, Concluídos e Desativados***.

    ```dart
    ...
          body: Column(
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
              ),
            ],
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
