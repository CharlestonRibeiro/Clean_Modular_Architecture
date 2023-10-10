# <div align="center"> Arquitetura do Projeto Flutter </div>

## Arquitetura Clean Modular 

### Sobre

Esta arquitetura segue os princípios da Clean Architecture proposta por Robert C. Martin, adaptada para Flutter. A organização em módulos separados facilita o desenvolvimento, manutenção e escalabilidade de aplicações Flutter.

### Nome da Arquitetura

A arquitetura proposta é chamada de **"Clean Modular"**, que combina os princípios da Clean Architecture com uma organização modular.

## 📂 Estrutura de Diretórios, Camadas Principais

📂 **lib**  
├─ 📂 **src**  
│ ├─ 📂 **core**  
│ ├─ 📂 **data**  
│ ├─ 📂 **domain**  
│ ├─ 📂 **external**  
│ ├─ 📂 **modules**  
│ └─ 📄 **app_mvc.dart**  
└─ 📄 **main.dart**  

#### Descrição das Camadas

- **Core**: Componentes centrais e compartilhados em toda a aplicação.
- **Data**: Lida com dados, seja buscando de uma API externa ou de um banco de dados local.
- **Domain**: Contém as entidades e regras de negócios.
- **External**: Recursos externos, como API e banco de dados.
- **Modules**: Os módulos da aplicação, onde cada funcionalidade tem seu próprio módulo para melhor organização e manutenção.

- ### `src`

Dentro da pasta `src`, encontramos os principais componentes e módulos da aplicação.

#### `core`

- **colors**: Define a paleta de cores usada em toda a aplicação.
- **errors**: Classes e funções para tratamento de erros globais.
- **images**: Contém todas as imagens e recursos visuais.
- **routes**: Gerencia as rotas e a navegação da aplicação.
- **themes**: Estilos e temas globais.
- **urls**: Endereços URLs para requisições à API.
- **widgets**: Widgets customizados reutilizáveis.

#### `data`

- **dto**: Data Transfer Objects usados para transferência de dados.
- **errors**: Tratamento específico de erros relacionados a dados.
- **repositories**: Repositórios que fazem a ligação entre as fontes de dados e a lógica de negócios.
- **sources**: Diferentes fontes de dados, como API ou banco de dados.

#### `domain`

- **entities**: Entidades centrais da aplicação.
- **interfaces**: Interfaces que definem contratos para outras implementações.
- **use_cases**: Casos de uso que representam ações específicas que podem ser realizadas.

#### `external`

- **client**: 
  - **dio_client.dart**: Cliente para requisições HTTP usando o pacote Dio.
  - **errors**: Erros específicos da camada externa.

#### `modules/home`

- **components**: Componentes visuais específicos do módulo "home".
- **home_controller.dart**: Controlador que gerencia a lógica e o estado da tela inicial.
- **home_module.dart**: Configuração e injeção de dependências do módulo.
- **home_page.dart**: A tela inicial que o usuário vê.
- **home_states.dart**: Estados possíveis para a tela inicial.

### 🌍 Arquivo Raiz

- **app_clean_architecture.dart**: Configuração e inicialização da aplicação com a arquitetura limpa.

### 📂 Estrutura de Diretórios

📂 **lib**  
├─ 📂 **src**  
│ ├─ 📂 **core**  
│ │ ├─ 📂 **colors**  
│ │ ├─ 📂 **errors**  
│ │ ├─ 📂 **images**  
│ │ ├─ 📂 **routes**  
│ │ ├─ 📂 **themes**  
│ │ ├─ 📂 **urls**  
│ │ └─ 📂 **widgets**  
│ ├─ 📂 **data**  
│ │ ├─ 📂 **dto**  
│ │ ├─ 📂 **errors**  
│ │ ├─ 📂 **repositories**  
│ │ └─ 📂 **sources**  
│ ├─ 📂 **domain**  
│ │ ├─ 📂 **entities**  
│ │ ├─ 📂 **interfaces**  
│ │ └─ 📂 **use_cases**  
│ ├─ 📂 **external**  
│ │ ├─ 📂 **client**  
│ │ └─ 📂 **errors**  
│ └─ 📂 **modules**  
│ │ └─ 📂 **home**  
│ │ ├─ 📂 **components**  
│ │ ├─ 📄 **home_controller.dart**  
│ │ ├─ 📄 **home_module.dart**  
│ │ ├─ 📄 **home_page.dart**  
│ │ └─ 📄 **home_states.dart**  
└─ 📄 **app_clean_architecture.dart**  

### 🌟 Conclusão

A arquitetura "Clean Modular" é robusta e flexível, permitindo a separação clara de responsabilidades e facilitando a manutenção e escalabilidade do projeto. A organização modular garante que cada funcionalidade ou recurso seja isolado, tornando o código mais limpo e compreensível.


