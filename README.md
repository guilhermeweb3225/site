# Copiando o site AgroFácil

URL: https://agrofacil-simples-gestao-01682.lovable.app/

### O que eu gerei para você
- `index.html`: página local que carrega o site ao vivo em um iframe (útil para visualização rápida).
- `mirror_site.sh`: script com comando `wget` sugerido para **baixar uma cópia estática** do site.
- `README.md`: este arquivo com instruções.

### Limitação importante
O site parece ser uma aplicação cliente-side (JavaScript + frameworks) hospedada em `lovable.app`. Ferramentas automáticas que apenas baixam HTML podem não capturar:
- arquivos gerados dinamicamente por JavaScript
- assets carregados de CDNs (JS, CSS, imagens)
- rotas de SPA que só existem no cliente

Por isso, o método mais confiável para obter **todo o código fonte original** é:
1. Ter acesso ao repositório (GitHub/GitLab) do projeto, ou
2. Ter o arquivo exportado do builder (se foi criado em uma plataforma como Lovable), ou
3. Fazer login no painel da plataforma que hospedou o site e exportar o projeto.

### Como criar uma cópia estática local (método rápido)
Abra um terminal e execute:

```bash
bash mirror_site.sh
```

Isso executará um comando `wget` que tenta espelhar o site, baixando páginas e recursos necessários.

### Se quiser que eu tente mais:
- Posso tentar baixar uma cópia estática (vou precisar de permissão para acessar o site e posso falhar em recursos JS).
- Se você me fornecer o repositório ou arquivos fonte, eu organizo tudo numa pasta pronta pra rodar.
