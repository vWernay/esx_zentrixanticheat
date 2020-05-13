# esx_zentrixanticheat
É um anticheat para a framework ESX em execução no FiveM. Quero dizer, vamos lá. Isso é meio óbvio pelo nome, não é kk?

Não há tópico de suporte para esta versão nos fóruns do FiveM. Se precisar de ajuda, envie um problema aqui. 
EM BREVE NOS TÓPICOS DO FIVEM.

Esse script é gerado por muitos trabalhos anteriores, mas principalmente, os dois recursos a seguir foram vitais para criar isso e devem ser agradecidos por seu trabalho duro:

**es_admin2** https://github.com/TanguyOrtegat/es_admin2

**Zentry_Antciheat** https://github.com/Muulfz/ZentryAnticheat_FiveM

**Este recurso requer a framework ESX e suas dependências.**

**Instalação:** Coloque a pasta no diretório de resources e configure o script de acordo com o seu servidor, adicione "esx_zentrixanticheat" no server.cfg, e inicie o servidor.

**Configuração:** o arquivo de configuração que são os: **webhook.lua** e **checkcheater.lua** permite que você defina seu webhook, as armas bloqueadas e as props bloqueadas, os steamIDs da lista de permissões que não são incluídos na lista de permissões automática com base no grupo deles e defina seus objetos, veículos e armas na lista negra.

**O que ele faz:** banirá usuários e enviara nos logs os jogadores que tentarem usar **eventos** proibidos como spawn de dinheiro, os carros da blacklist serão excluídos, caso o player pegue uma arma blacklist ele enviará no discord o **nome** e **id** do jogador que fez isto. 

**Controle de Banimentos:** Os banimentos ficam guardados na pasta: **data/bans.txt**. Para desbanir um jogador é só remover os identificadores dele.

# Observações
Nos arquivos: **client/main.lua** e **server/main.lua** controlam os eventos proibidos, antes de iniciar o script abra eles e vejam se algum dos eventos estão sendo usados no seu servidor.
