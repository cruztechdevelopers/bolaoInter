# Phase 2: Cupons e Experiencia do Usuario - Context

**Gathered:** 2026-03-26
**Status:** Ready for planning

<domain>
## Phase Boundary

Entregar a jornada completa do usuario para possuir cupons ativos e navegar pelo sistema autenticado. Inclui: checkout simulado com tela dedicada, painel de cupons fiel as referencias visuais, landpage completa, login/cadastro inline, navegacao autenticada com header fixo, e polish visual do admin. Cada cupom e uma "entrada" no bolao aberto unico (nao e sistema de criar boloes privados como na referencia).

</domain>

<decisions>
## Implementation Decisions

### Fluxo de compra de cupom
- **D-01:** Checkout com tela dedicada de confirmacao (nao compra em 1 clique). Tela mostra nome do bolao, valor do cupom (R$ 10,00 vindo do campo valor_cupom do torneio) e botao "Confirmar pagamento"
- **D-02:** Apos confirmacao do pagamento simulado, redireciona ao painel ("Meus Cupons") com mensagem de sucesso e novo cupom visivel na lista
- **D-03:** Valor do cupom exibido na tela de checkout, configurado no torneio (banco)

### Layout do painel e cards de cupom
- **D-04:** Card do cupom mostra: codigo, pontos totais, placares exatos, status (ativo/pendente), botao "Fazer Palpites". Sem campos de membros/liga (nao existem neste contexto de bolao aberto)
- **D-05:** Empty state com CTA destaque: mensagem + botao grande "Comprar primeiro cupom" centralizado
- **D-06:** Secao "Info do torneio ativo" abaixo dos cupons: card com dados do torneio Copa 2026, proxima rodada ou status geral
- **D-07:** Header do painel com saudacao personalizada ("Ola, [nome]") + descricao + botao comprar cupom
- **D-08:** UX/UI fiel as referencias visuais (cards arredondados, gradientes, espacamentos, tipografia, dark theme, green accent) — nao nos campos especificos da ref que nao se aplicam ao modelo de bolao aberto

### Navegacao autenticada
- **D-09:** Header fixo no topo com logo, links (Painel, Ranking) e menu do usuario (avatar/nome, sair)
- **D-10:** No mobile: header compacto + icone hamburger que abre menu lateral
- **D-11:** Tabs dentro do cupom: Palpites (sub-tabs: Grupos, Classificacao, Mata-Mata, Finais), Ranking (com destaque do cupom atual), Meus Resultados (historico de pontos deste cupom)
- **D-12:** Ranking global acessivel tanto pelo header quanto pela tab dentro do cupom. Mesmo ranking, mas quando acessado de dentro do cupom, destaca a linha daquele cupom
- **D-13:** Ranking publico (visivel sem autenticacao). Ja existe rota publica GET /torneios/{id}/ranking

### Codigo existente vs referencias
- **D-14:** Backend (controllers, services, models, rotas) mantido e ajustado se necessario. Frontend (views Vue) reescrito para ficar fiel as referencias
- **D-15:** Codigo do Codex para fases futuras (apostas, pontuacao) sera aproveitado e adaptado quando chegarmos nas Phases 3-4

### Landpage
- **D-16:** Landpage completa adaptada ao contexto: hero ("Bolao Copa 2026"), secao "Como funciona" (4 passos: cadastre-se, compre cupom, faca palpites, acompanhe ranking), secao de regras de pontuacao (dados do banco), secao "Compre seu cupom" (CTA unico com valor), FAQ estatico (hardcoded no frontend), footer simples
- **D-17:** Regras de pontuacao visiveis na landpage (vem do banco do torneio ativo)
- **D-18:** Secao "Compre seu cupom" substitui a secao de planos/precos da referencia

### Login e cadastro
- **D-19:** Login e cadastro inline na landpage via modal/overlay. Botoes "Entrar"/"Cadastrar" na landpage abrem modal com formulario
- **D-20:** Cadastro pede: nome, email, telefone (obrigatorio), senha. Campo telefone e novo (precisa migration e ajuste no backend)
- **D-21:** Rotas /entrar e /cadastro existentes podem redirecionar para landpage com modal aberto, ou serem removidas em favor dos modais

### Perfil do usuario
- **D-22:** Perfil basico no dropdown do header: nome, email, telefone, botao "Sair". Sem pagina dedicada no MVP
- **D-23:** Avatar com iniciais geradas (circulo verde com iniciais do nome, ex: "JS" para Joao Silva). Sem upload de foto

### Responsividade
- **D-24:** Abordagem mobile-first
- **D-25:** Grid de cupons: 1 coluna mobile, 2 colunas desktop (sm:grid-cols-2)
- **D-26:** Tabs de palpites: scroll horizontal no mobile (overflow-x-auto)
- **D-27:** Landpage mobile: todas as secoes mantidas, layout empilhado e fontes adaptadas

### Feedback visual e estados
- **D-28:** Toast notifications para sucesso/erro (canto top-right, somem apos segundos)
- **D-29:** Skeleton screens para loading states (placeholders animados no formato dos cards)
- **D-30:** Fade suave (200-300ms) nas transicoes entre paginas

### Admin panel
- **D-31:** Ajustes visuais do admin na Phase 2 para alinhar ao mesmo tema/componentes do usuario final

### Claude's Discretion
- Implementacao especifica dos skeleton screens (componente reutilizavel ou inline)
- Design exato dos toasts (biblioteca ou componente proprio)
- Detalhes de animacao do menu hamburger mobile
- Estrutura interna dos componentes Vue (composables, composicao)

</decisions>

<canonical_refs>
## Canonical References

**Downstream agents MUST read these before planning or implementing.**

### Visual References
- `referencias/Landpage.png` — Design da landpage completa (hero, como funciona, modo VIP, planos, FAQ, footer). Adaptar conteudo para bolao aberto
- `referencias/Captura de tela 2026-03-26 140401.png` — Regras de pontuacao (Placar Exato +10pts, etc.) e secao de palpites mata-mata
- `referencias/Captura de tela 2026-03-26 140722.png` — Painel "Meus Boloes" com card de bolao, membros, valor, botao "Fazer Palpites"
- `referencias/Captura de tela 2026-03-26 140806.png` — Tela de palpites com tabs (Palpites/Ranking/Membros), fase de grupos, ranking ao vivo

### Existing Code (maintain backend, rewrite frontend)
- `backend/app/Http/Controllers/PedidoCheckoutController.php` — Checkout controller existente (manter)
- `backend/app/Http/Controllers/CupomController.php` — Cupom controller existente (manter)
- `backend/app/Services/ServicoCheckout.php` — Servico de checkout (manter)
- `backend/routes/api.php` — Rotas API existentes (manter, adicionar se necessario)
- `frontend/src/services/api.ts` — Fetch wrapper com token automatico (manter)
- `frontend/src/stores/autenticacao.ts` — Store de autenticacao Pinia (manter/estender)
- `frontend/src/style.css` — Tema escuro Tailwind com cores definidas (manter)

### Requirements
- `.planning/REQUIREMENTS.md` — CUP-01 a CUP-05, UI-01, UI-02

</canonical_refs>

<code_context>
## Existing Code Insights

### Reusable Assets
- `requisicaoApi()` em `frontend/src/services/api.ts` — Fetch wrapper com token automatico, tratamento de erros de validacao
- `usarAutenticacaoStore` em `frontend/src/stores/autenticacao.ts` — Store Pinia com login, logout, carregarUsuario, guards
- Tema Tailwind em `frontend/src/style.css` — Cores (primary #10b981, bg #0a0a0a, etc.), inputs e selects estilizados globalmente
- Router guards em `frontend/src/router/index.ts` — Meta requerAutenticacao e requerAdministrador ja implementados

### Established Patterns
- Backend: Controllers thin, logica em Services (ServicoCheckout, ServicoApostas)
- Frontend: Views usam Composition API com `<script setup lang="ts">`, refs reativos, onMounted para carga inicial
- API: Respostas JSON com chave do recurso (`{ cupons: [...] }`, `{ pedido: {...} }`)
- Dominio em portugues: tabelas, models, controllers, rotas, variaveis

### Integration Points
- Router: adicionar rota /checkout e possivelmente remover /entrar e /cadastro (modais na landpage)
- Backend: adicionar campo `telefone` na tabela usuarios (migration) e no CadastrarUsuarioRequest
- Header/Nav: componente novo que envolve todas as views autenticadas
- Landpage: reescrever InicioView.vue completamente

</code_context>

<specifics>
## Specific Ideas

- "Boloes la e o cupom aqui" — o modelo de referencia e de boloes privados, o modelo deste projeto e bolao aberto com cupons como entradas independentes. Fidelidade e no UX/UI (visual), nao nos conceitos de negocio
- Referencia mostra badge "Convide a galera!" e "Liberar vagas" — nao se aplicam ao bolao aberto, ignorar
- Referencia mostra "1/25 MEMBROS" — nao se aplica, substituir por informacao relevante (pontos, status)
- Na ref, card tem icone de trofeu e nome "Inter Copa do mundo" — usar branding "Inter World Cup" com icone de trofeu

</specifics>

<deferred>
## Deferred Ideas

- Pagina de perfil dedicada com edicao de dados — pode entrar em v2
- Upload de avatar/foto de perfil — v2
- Bottom navigation no mobile como alternativa ao hamburger — avaliar feedback
- FAQ configuravel pelo admin — v2 se necessario

</deferred>

---

*Phase: 02-cupons-e-experiencia-do-usuario*
*Context gathered: 2026-03-26*
