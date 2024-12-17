# archlinux-post-script
 
# Script de Pós-Instalação do Arch Linux

Este script automatiza a instalação e configuração de pacotes e programas essenciais após uma instalação limpa do Arch Linux.

## Recursos

* Instala pacotes básicos do Arch Linux, como `gnome-terminal`, `zsh`, `neofetch`, etc.
* Instala o gerenciador de pacotes `yay` para acesso ao AUR.
* Configura o Zsh como shell padrão com Oh My Zsh, Spaceship Prompt, Zsh Autosuggestions e Zsh Syntax Highlighting.
* Instala pacotes adicionais como `google-chrome`, `visual-studio-code-bin`, `firefox`, etc.
* Configura serviços como `thermald`, `power-profiles-daemon`, `acpid`, etc.
* Instala drivers para Intel, incluindo drivers de vídeo, mídia e microcódigo.
* Configura OpenVPN com NetworkManager.
* Instala Pyenv para gerenciamento de versões do Python.
* E muito mais!

## Como usar

1. Clone este repositório: `git clone https://github.com/seu_usuario/seu_repositorio.git`
2. Navegue até o diretório do repositório: `cd seu_repositorio`
3. Torne o script executável: `chmod +x pos-instalacao.sh`
4. Execute o script: `./pos-instalacao.sh`

## Personalização

* **Edite o script:** Abra o arquivo `pos-instalacao.sh` em um editor de texto e modifique-o de acordo com suas preferências.
* **Adicione pacotes:** Inclua os pacotes que você deseja instalar nas seções apropriadas do script.
* **Remova pacotes:** Remova os pacotes que você não precisa do script.
* **Modifique configurações:** Ajuste as configurações do sistema, como drivers, serviços e personalização do terminal, conforme necessário.

## Observações

* Este script foi projetado para uma instalação limpa do Arch Linux.
* Certifique-se de ter uma conexão com a Internet ativa durante a execução do script.
* Faça um backup do seu sistema antes de executar o script, para o caso de algo dar errado.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests para relatar problemas, sugerir melhorias ou adicionar novos recursos.

## Licença

Este script é licenciado sob a [MIT License](LICENSE).
