# Comandos Básicos de Linux

## Instalar e Remover Aplicativos pelo Terminal

- **Instalar um aplicativo**:

  ```bash
  sudo apt install <nome_do_aplicativo>
  ```

- **Remover um aplicativo**:
  ```bash
  sudo apt remove <nome_do_aplicativo>
  ```

### Caso o software tenha sido baixado pelo navegador

- Mover para a pasta Downloads:

  ```bash
  cd ~/Downloads
  ```

- **Instalar um pacote .deb**:

  ```bash
  sudo dpkg --install <nome_do_pacote>.deb
  ```

- **Remover um pacote .deb**:

  ```bash
  sudo dpkg --remove <nome_do_pacote>
  ```

- **Limpar os repositórios**:

  ```bash
  sudo apt clean
  ```

- **Remover pacotes não utilizados**:
  ```bash
  sudo apt autoremove
  ```

## Comandos para Listar Conteúdo

- **Listar o conteúdo**:

  ```bash
  ls
  ```

- **Listar o conteúdo em formato de lista**:

  ```bash
  ls -l
  ```

- **Listar o conteúdo oculto e normal**:

  ```bash
  ls -a
  ```

- **Listar o conteúdo em ordem reversa**:

  ```bash
  ls -r
  ```

- **Paginar a listagem**:
  ```bash
  ls | more
  ```

## Comandos para Navegação e Manipulação de Arquivos e Diretórios

- **Entrar ou sair de diretórios**:
  ```bash
  cd <diretório>
  ```
- **Voltar nos diretórios**:
  ```bash
  cd ..
  ```
- **Voltar para o diretório padrão do sistema**:

  ```bash
  cd /
  ```

- **Mostrar o caminho atual**:

  ```bash
  pwd
  ```

- **Criar uma pasta**:

  ```bash
  mkdir <nome_da_pasta>
  ```

- **Criar um arquivo vazio**:

  ```bash
  touch <nome_do_arquivo>
  ```

- **Mostrar o histórico dos comandos**:

  ```bash
  history
  ```

- **Criar diversas pastas de uma vez**:

  ```bash
  mkdir -p Linux/Terminal
  ```

- **Criar um arquivo sem navegar até o diretório**:

  ```bash
  touch Linux/Terminal/text.txt
  ```

- **Voltar para a pasta inicial**:

  ```bash
  cd ~/Documents
  ```

- **Remover um arquivo ou pasta**:

  ```bash
  rm Linux/Terminal/text.txt
  ```

- **Remover diretórios e seus conteúdos recursivamente**:

  ```bash
  rm -rf <nome_do_diretorio>
  ```

- **Remover uma pasta vazia**:
  ```bash
  rmdir Linux/Terminal
  ```

## Caracteres Curinga e Busca

- **Asterisco (\*)**: Usado para fazer referência a um conjunto de caracteres.

  ```bash
  ls /etc/*.conf  # Mostra todos os arquivos com extensão .conf
  ls /etc/*x*  # Mostra todos os arquivos que têm 'x' em qualquer posição
  ```

- **Interrogação (?)**: Representa exatamente um caractere.

  ```bash
  ls /etc/?as*  # Primeiro caractere qualquer, seguido por 'as' e qualquer sequência
  ls /etc/???a*  # Três primeiros caracteres quaisquer, seguidos por 'a' e qualquer sequência
  ```

- **Colchetes ([ ])**: Faixa de caracteres.

  ```bash
  ls /etc/p[a-i]*  # Arquivos com 'p' seguido por letras de 'a' a 'i'
  ```

- **Chaves ({ })**: Busca por padrões específicos.
  ```bash
  ls /etc/?{am,ul}  # Busca por padrões 'am' ou 'ul'
  ```

## Outros Comandos Úteis

- **Visualizar conteúdo de um arquivo**:

  ```bash
  cat <nome_do_arquivo>
  ```

- **Visualizar conteúdo de um arquivo em ordem inversa**:

  ```bash
  tac <nome_do_arquivo>
  ```

- **Paginador de arquivo na tela**:

  ```bash
  less <nome_do_arquivo>
  ```

- **Manual de comandos**:

  ```bash
  man <comando>
  ```

- **Mover ou renomear um arquivo**:

  ```bash
  mv <origem> <destino>
  ```

- **Mover todos os arquivos do diretório para o outro especificado**:

  ```bash
  mv /<origem>/* /<destino>
  ```

- **Copiar um arquivo**:

  ```bash
  cp <origem> <destino>
  ```

- **Copia todos os arquivos do dretório atual para o diretório especificado**:

  ```bash
  cp */<origem> <destino>
  ```

- **Copiar todos os arquivos e subdiretórios para a pasta especifica**:
  ```bash
  cp -R /<origem>/* /<destino>
  ```
