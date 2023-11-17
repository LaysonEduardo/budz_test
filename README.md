# Budz Test


## Decisões de uso (Packages)

Com base na descrição do teste/task essas foram as decisões tomadas quanto aos packages
    
 - UI
    - flutter_svg: Utilizar as imagens em vetor para evitar perca de qualidade.
    - cached_network_image: Armazear imagens vindas da API em cache para evitar requisições desnecessárias em nosso storage.
   ---

 - Internationalization
    - intl: requesito do intl_utils.
    - intl_utils: adicionar suporte a outros idiomas. (Inglês e Português disponíveis no momento).  
   ---

 - Dependecy Injection/Navegation
    - flutter_modular: Modularizar o projeto para facilitar a manutenção e reutilização de código, facilitar a navegação de telas e injetar dependências.
   ---
 - State Management 
    - flutter_bloc (Requisito obrigatório)
   ---
 - HTTP
    - dio (Para demonstrar a implementação de services independentes).
   ---
 - Unit Tests   
    - http_mock_adapter (Para mockar o adaptador HTTP e manipular os retornos).
   --- 
