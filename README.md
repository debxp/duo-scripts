# Pós-instalação do Debian sid/testing + i3wm

## Atenção! 

Estes scripts pressupõem uma instalação nova e sem qualquer ambiente de trabalho ou gerenciador de janelas.

Ao final, após um reboot, deve ser possível entrar no i3wm automaticamente depois do login.

## Requisitos

1. Após a instalação, ainda no primeiro boot, certifique-se de estar com o sources.list configurado para o Debian Unstable (sid) ou Testing!
2. Atualize o sistema.
3. Certifique-se de ter uma conexão ativa com a internet e um usuário autorizado a utilizar o sudo.
3. Instale o git:

```
sudo apt install git
```

## Instalação

1. Clone este git na pasta do usuário (`/home/nome_do_usuário`):

```
git clone https://github.com/debxp/duo-scripts.git
```

2. Entre na pasta `duo-scripts/sid-i3` e execute pelo menos os scripts:

```
00-system-basic.sh
01-i3wm-essential.sh
02-apps-utils.sh
99-settings.sh
```

Os demais scripts são opcionais.

3. Reinicie a máquina com o comando abaixo:

```
sudo reboot
```

4. Faça o login e o i3 deverá iniciar automaticamente.



