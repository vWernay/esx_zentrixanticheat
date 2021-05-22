# esx_zentrixanticheat
É um anticheat para o framework ESX que funciona no FiveM. Quer dizer, vamos lá. Isso é meio óbvio pelo nome, não é kkk?

>ATENÇÃO
**Esse script está desatualizado e desotimizado, em breve lançarei uma nova versão.**

Não há tópico de suporte para esta versão nos fóruns do FiveM. Se precisar de ajuda, envie o problema aqui. 
~~EM BREVE NOS TÓPICOS DO FIVEM.~~

Esse script foi feito por muitos trabalhos anteriores, mas principalmente, os dois scripts a seguir foram vitais para criar isso e devem ser agradecidos por seu trabalho:

**es_admin2** https://github.com/TanguyOrtegat/es_admin2

**Zentry_Anticheat** https://github.com/Muulfz/ZentryAnticheat_FiveM

**Este script requer o framework ESX e suas dependências.**

**Instalação:** Coloque a pasta no diretório de resources e configure o script de acordo com o seu servidor, adicione "ensure esx_zentrixanticheat" no server.cfg, e inicie o servidor.

**Configuração:** O arquivo de configuração que são os: **webhook.lua** e **checkcheater.lua** permite que você defina seu webhook, as armas bloqueadas e as props bloqueadas.

**O que ele faz:** banirá usuários e enviara nos logs os jogadores que tentarem usar **eventos** proibidos como spawn de dinheiro, os carros da blacklist serão excluídos, caso o player pegue uma arma blacklist ele enviará no discord o **nome** e o **id** do jogador que fez isto. 

**Controle de Banimentos:** Os banimentos ficam guardados na pasta: **data/bans.txt**. Para desbanir um jogador é só remover os identificadores dele.

# Observações
Nos arquivos: **client/main.lua** e **server/main.lua** controlam os eventos proibidos, antes de iniciar o script abra eles e vejam se algum dos eventos estão sendo usados em seu servidor para evitar punições falsas.
