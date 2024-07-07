----------------------------------------------------------------------------------
Instalar e remover aplicativos pelo terminal:

* apt install *name*

* apt remove *name*

Caso for um softwere baixado pelo navegador

cd /Downloads

* sudo dpkg --remove *name*.deb

* sudo dpkg --install *name*.deb

sudo apt clean --> limpa os repositorios.

sudo apt autoremove --> limpar pacoted que nao estao sendo usados.

----------------------------------------------------------------------------------
ls --> lista o conteudo

cd --> entrar ou sair de diretorios

parametros: -l ou --long

cat --> pega o conteudo de um arquivo e joga na tela.

{

at: Ele joga o conteúdo do arquivo na tela, certo? Se voce quiser ver o mesmo arquivo, mas ao contrário (da ultima linha pra primeira), voce pode usar o comando que 'cat' escrito ao contrário: 'tac'. Exemplo para um arquivo de 4 linhas, onde cada linha tem uma letra do alfabeto, na ordem:

> cat file.txt
a
b
c
d

> tac file.txt
d
c
b
a

}

pwd --> ver a caminho.

mkdir --> cria uma pasta.

touch --> cria um arquivo do 0.

history --> mostra o historico dos comandos.

Para criar diversas pastas faca o comando: mkdir -p Linux/Terminal 

Criar sem ficar dando cd nas pastas: touch Linux/Terminal/text.txt

Quando voce estiver dentro de muitas pastas, faca isso para voltar: ~/Documents

Para remover um arquivo/pasta use o "rm" --> rm Linux/Terminal/text.txt ou rmdir Linux/Terminal

Deletar diversas pastas uma dentro da outra: rm -rf



