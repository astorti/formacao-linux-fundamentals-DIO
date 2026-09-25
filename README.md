<hr>

<img src="./assets/linux-fundamentals.png"/>

### **FORMAÇÃO LINUX FUNDAMENTALS**

Repositório para estudo dos conceitos aprendidos durante o curso **Formação Linux Fundamentals**, oferecido pela plataforma de ensino **Digital Innovation One - DIO**.

### **Links**
[Digital Innovation One](https://www.dio.me)<br>
[Formação Linux Fundamentals](https://www.dio.me/curso-linux)<br>
[Linux Foundation](https://www.linuxfoundation.org/)

### **Ferramentas**
![ubuntu](https://img.shields.io/badge/ubuntu_server-E95420.svg?style=for-the-badge&logo=ubuntu&logoColor=white)

### **Conceitos Desenvolvidos**

#### **Introdução ao Sistema Operacional Linux**

- **Conceitos de Sistema Operacional**
    - kernel
        - faz a ponte entre o usuário e o hardware
        - não possui ambiente gráfico
    - Sistemas Operacionais Domésticos
        - Linux, Microsoft Windows, Mac OS
    - Sistemas Operacionais Servidores
- **Linux**
    - muito utilizado no segmento de **servidores** e por **desenvolvedores**
    - desenvolvido por **Linus Torvalds**
    - inspirado no **Unix**
    - mantido por uma comunidade internacional **Linux Foundation** e distribuido gratuitamente
    - utiliza ambiente gráfico ou terminal para acessar o kernel
    - Linux possui diversos ambientes gráficos e podem ser trocados (Gnome, KDE Plasma, etc)
    - **Distribuições**
        - consiste em um kernel Linux com aplicativos especificos e são mantidos por empresas ou comunidades
        - Principais distribuições:
            Debian, Ubuntu, Red Hat, Fedora, Suse, etc
    - **Sistemas Embarcados**
        - Android, Raspberry Pi
        - Televisões, smartwatches, etc
    - **Modelo Cliente-Servidor**
        - Servidor: fornece um recurso ou serviço (ex.: site, banco de dados) através de um Sistema Operacional de Servidor
        - Cliente: quem solicita o serviço através de um Sistema Operacional Desktop
- **Máquinas virtuais**
    - Instalação do **Ubuntu Server** na máquina virtual

#### **Acesso Remoto a Máquinas Linux**
- Como obter o ip da máquina

    Terminal: `ip a`

- Como acessar a máquina virtual remotamente através de um Linux

    Terminal: `ssh nome-do-usuario-maquina-virtual@ip-da-maquina-virtual`

#### **Comandos Iniciais**
- `reboot`
- `date`
- `clear` ou  teclas: `Ctrl` + `l`
- `systemctl poweroff`

#### **Trabalhando com Arquivos**

- **Navegação de Diretórios**
    - `pwd`: informa o diretorio atual
    - `cd /`: acessa o diretório raiz
    - `cd ~`: acessa o diretório do usuário
    - `ls`: lista diretorios e arquivos contidos no diretorio atual 
    - `cd nome_diretorio`: avança para o diretorio "nome_diretorio" a partir do diretório atual
    - `cd nome_diretorio/nome_diretorio`: avança dois diretorios a partir do diretorio atual
    - `cd ..`: volta para o diretorio anterior
    - `cd ../..`: volta dois diretórios
    - **Dica**: quando estiver utilizando o comando "cd", o uso do `tab` completa o nome do diretório seguinte ou lista os possíveis diretórios acessíveis

- **Filtrar a exibição de arquivos**

    - `ls | more`: apresenta os arquivos/diretórios em lista vertical e utilizar `enter` para selecionar o próximo da lista (útil quando o diretório possui muitos arquivos/diretórios e não possui barra de rolagem)
    - `ls nome_do_diretório/arquivo`: informa se a pasta atual possui o nome_do_diretório/arquivo
    - `ls *`: lista os diretórios com seus respectivos arquivos
    - `ls a*`: lista os diretórios iniciados com a letra a e os diretorios iniciados com a letra a com seus respectivos arquivos
    - listar arquivos com sequencia numerica:
        - exemplo `ls nome-do-arquivo[1-5]*` ou `ls nome-do-arquivo[1,3,5]*`
        - exemplo `ls nome-do-arquivo[^1,5]*` : lista todos menos o 1 e o 5

- **Criar um arquivo**
    - `touch nome-do-arquivo.extensão`: criar o arquivo dentro da pasta atual
        - exemplo: `touch teste.txt`

- **Busca de arquivos**

    - **ls**
        - `ls /nome-da-pasta/nome-arquivo`<br/>
    Buscar um nome parcial
        - `ls /nome-da-pasta/arquivo*`<br/>
    
    - **find**
        - `find -name "nome-do-arquivo"`
        - `find -name "nome-do-arquivo*"`

- **Criar diretórios**
    
    - Na pasta aberta no terminal
        - `mkdir novo-diretório`
        - `mkdir "novo diretorio"`
    - Criar multiplos diretórios
        - `mkdir novo-diretorio1 novo-diretorio2`
    - Em pasta diferente do terminal
        - `mkdir /home/diretorio/novo-diretorio`
        - `mkdir /home/diretorio/diretorio/novo-diretorio`

- **Remover diretórios**

    - Na pasta em que o diretório se localiza
        - `rmdir nome-do-diretorio`
        - `rmdir "nome do diretorio"`
    - Remover multiplos diretorios
        - `rmdir diretorio1 diretorio2`

- **Remover arquivos**

    - Na pasta que o arquivo se localiza
        - `rm nome-do-arquivo`
    - Remover todos com mesma extensão
        - `rm *.extensão`
    - Remover vários arquivos com nomes similares
        - `rm arquivo*`


- **Edição de Arquivos**
    - Editores
        - vi
            - `vi nome-do-arquivo`
            - Para editar o arquivo: `i`
            - Para sair do modo de edição: teclar `Esc`
            - Para habilitar o menu do vi: teclar `:`
            - Para salvar o arquivo: `w`
            - Para sair do editor vi: `q`
        - nano
            - `nano nome-do-arquivo`: O nano já entra em modo de edição.
            - Para salvar: `Ctrl + o` e `Enter`
            - Para sair: `Ctrl + x`

#### **Comando history**
- Para ver o comandos realizados no terminal
    - `history`
- Para ver uma quantidade específica dos ultimos comandos:
    - `history 30`
    - `history 5`
- Para executar um comando a partir da listagem do history
    - `!numero-do-comando-na-lista-do-history`
    - Exemplo: `!50`
- Para executar o último comando digitado no terminal
    - `!!`
- Para executar o último comando a partir de um parâmetro
    - `!?parametro?`
    - Exemplo: `!?teste?`: Neste comando será executado o último comando do history que contêm o termo "teste"
- Para listar todos os comandos do history a partir de um parâmetro
    - `history | grep "parametro"`
    - Exemplo: `history | grep "install"`
- Para exibir o history com data e hora dos comando
    - `export HISTTIMEFORMAT="%c "`
    - `history`

#### **Trabalhando com usuários**

- **Criando e Excluindo usuários**

    - Para criar um usuario
        - `useradd username`
    - Para criar um usuario com pasta home e informar nome do usuario
        - `useradd username -m -c "Nome Completo"`
    - Para criar senha do novo usuario
        - `passwd usename`
    - Para informar o bash (terminal) a ser usado pelo usuario
        - `chsh -s /bin/bash username`
    - Para criar usuario informando o bash
        - `useradd username -m -c "Nome Completo" -s /bin/bash`

    - Para excluir um usuario
        - `userdel -r -f username`

- Editando informações do usuário
    
    - Para modificar o cadastro de um usuário incluindo o nome completo
        - `usermod username -c "Nome Completo"`
    - Para adicionar data de expiração da senha
        - `passwd username -e data`
    - Para solicitar ao usuário alterar a senha após o próximo acesso
        - `passwd username -e`

- Script

    - um arquivo de script tem a extensão .sh
    - o arquivo inicia com `#!/bin/bash
    - comando para permitir que o script seja executado: `chmod +x nome-do-arquivo.sh`
    - para executar o arquivo de script: `./nome-do-arquivo.sh`

        **Prática**: [create_users.sh](https://github.com/astorti/formacao-linux-fundamentals-DIO/tree/main/scripts/create_users.sh)

- Grupos de Usuários

    - Para ver arquivo que contém todos os grupos
        + `cat /etc/group`
    - Para adicionar um usuario a um grupo
        + `usermod -g grupo1 username`
    - Para adicionar um usuario a vários grupos
        + `usermod -G grupo1,grupo2 username`
    - Para adicionar um usuario a um novo grupo sem sair de outros grupos
        + `usermod -G grupo1,grupo2,novo-grupo username`
    - Para excluir um usuário de um grupo
        + `gpasswd -d username grupo1`

- Criar novo grupo
    
    - Para criar um novo grupo
        + `groupadd nome-do-grupo`
    - Para excluir um grupo
        + `groupdel nome-do-grupo`
        
- Sistemas de Permissões
    + Arquivos iniciam com `-`
        * Exemplo: `-`rwxrwxrwx
    + Pastas iniciam com `d`
        * Exemplo: `d`rwxrwxrwx
    * Grupos
        - Primeiro Grupo (pertence ao proprietário)
            + d`rwx`rwxrwx
        - Segundo Grupo (pertence ao grupo)
            + drwx`rwx`rwx
        - Terceiro Grupo (pertence a outros)
            + drwxrwx`rwx`
    * Legendas
        - `r`: read (leitura)
        - `w`: write (escrita)
        - `x`: execute (execução)
    * Exemplos
        - `drwxr-xr-x. 1 user1 group1   0 set 23 00:00  Downloads`
            + `d`: diretório (Downloads) 
            + `rwd`: proprietário user1 tem permissão de leitura, escrita e execução (abrir diretório)
            + `r-x`: pertecentes ao grupo tem permissão de somente leitura e execução (abrir diretório)
            + `r-x`: Outros usuários tem permissão de somente leitura e execução (abrir diretório)
        - `-rw-r--r--. 1 user1 user1  0 set 15 00:00  exemplo.txt`
            + `-`: arquivo (exemplo.txt) 
            + `rw-`: proprietário user1 tem permissão de leitura e escrita (arquivo de texto não é executável)
            + `r--`: pertecentes ao grupo tem permissão de somente leitura
            + `r--`: Outros usuários tem permissão de somente leitura
    * Alterar proprietário e grupo de um diretório ou arquivo
        - `chown username2:group2 /diretorio/`
            + Exemplo:
                * antes:`drwxr-xr-x. 1 user1 group1   0 set 23 00:00  Downloads`
                * comando: `chown user2:group3 /Downloads/`
                * após: `drwxr-xr-x. 1 user2 group3   0 set 23 00:00  Downloads`
    * Alterar permissões de pastas e arquivos
        - valores: `r` = 4, `w` = 2, `x` = 1, `-` = 0
        - todas as permissões: `rwx` = 7
        - leitura e escrita: `rw-` = 6
        - leitura e execução: `r-x` = 5
        - somente leitua: `r--` = 4
        - nenhuma permissão: `---` = 0
    * Fazer a soma para o proprietário, para o grupo e para outros
    * Com esses valores, fazer a troca de permissão com o comando:
        - `chmod 760 /diretorio ou arquivo/`
        - Exemplo: 
            + antes: `-rw-r--r--. 1 user1 user1  0 set 15 00:00  exemplo.sh`
            + comando: `chmod 750 /exemplo1.txt/`
            + após: `-rwxr-x---. 1 user1 user1  0 set 15 00:00  exemplo.sh`
            + Observação: em arquivos de scripts (.sh), para dar permissão de execução somente para o proprietário do arquivo, pode utilizar o comando:
                * `chmod +x exemplo1.sh`
                * Para remover permissão
                * `chmod -x exemplo1.sh`

#### Gerenciamento de Pacotes Linux

- **Ubuntu/Debian**
	+ Gerenciadores de pacotes
		+ `apt-get`
		+ `apt`
	+ Para listar pacotes disponíveis
		+ `apt list`
	+ Para listar pacotes instalados
		+ `apt list --insttaled`
	+ Para lista pacotes disponíveis para atualização
		+ `apt list --upgradeable`
	+ Buscar um pacote através de um parâmetro
		+ `apt search parâmetro`
		+ Exemplo: `apt search gimp`
	+ Para instalar pacotes
		+ `apt install nome-do-pacote`
		+ Exemplo: `apt install gimp`
	+ Para desinstalar pacotes
		+ `apt remove nome-do-pacote`
		+ Exemplo: `apt remove gimp`
	+ Para atualizar o sistema operacional
		+ `apt update`
		+ `apt upgrade`
			
			Observação: ambos comando devem ser utilizados para a atualização
		
- **Fedora/RedHat**
	+ Gerenciadore de pacotes
		* `yum`
		* `dnf`
	+ Buscar um pacote através de um parâmetro
		+ `dnf search parâmetro`
		+ Exemplo: `dnf search gimp`
	+ Para instalar pacotes
		+ `dnf install nome-do-pacote`
		+ Exemplo: `dnf install gimp`
	+ Para desinstalar pacotes
		+ `dnf remove nome-do-pacote`
		+ Exemplo: `dnf remove gimp`
	+ Para atualizar o sistema operacional
		+ `dnf update`