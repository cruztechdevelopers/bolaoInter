# Phase 2: Cupons e Experiencia do Usuario - Discussion Log

> **Audit trail only.** Do not use as input to planning, research, or execution agents.
> Decisions are captured in CONTEXT.md — this log preserves the alternatives considered.

**Date:** 2026-03-26
**Phase:** 02-cupons-e-experiencia-do-usuario
**Areas discussed:** Fluxo de compra, Layout do painel, Navegacao autenticada, Codigo existente vs referencias, Landpage, Login/cadastro, Responsividade, Feedback visual, Perfil do usuario, Footer/branding, Admin panel

---

## Fluxo de compra de cupom

| Option | Description | Selected |
|--------|-------------|----------|
| Compra direta (1 clique) | Manter como esta: botao cria pedido e simula pagamento automaticamente | |
| Tela de checkout com confirmacao | Redireciona para tela dedicada com resumo e botao confirmar | ✓ |
| Modal de confirmacao inline | Modal sobre o painel com resumo rapido | |

**User's choice:** Tela de checkout com confirmacao
**Notes:** Mais realista para quando PIX real entrar

| Option | Description | Selected |
|--------|-------------|----------|
| Redireciona ao painel | Volta para Meus Cupons com mensagem de sucesso | ✓ |
| Redireciona ao cupom | Vai direto para tela do cupom recem-comprado | |
| Confirmacao na propria tela | Fica na tela de checkout mostrando sucesso | |

**User's choice:** Redireciona ao painel (Recommended)

| Option | Description | Selected |
|--------|-------------|----------|
| Valor fixo configurado no torneio | Mostra valor do banco (R$ 10,00) | ✓ |
| Sem valor | Checkout so mostra nome e botao | |

**User's choice:** Sim, valor fixo configurado no torneio

---

## Layout do painel e cards de cupom

| Option | Description | Selected |
|--------|-------------|----------|
| Fiel a referencia | Reproduzir card como na imagem, adaptar campos | |
| Simplificado para MVP | Card simples: codigo, pontos, status, botao | |

**User's choice:** Free-text: "A diferenca e q esse projeto e um bolao aberto, e a referencia e um sistema de criar boloes. Mas qd falo fielmente a referencia, e os detalhes de ux, ui. mas no contexto correto. Boloes la e o cupom aqui."
**Notes:** Fidelidade visual (UX/UI), nao nos conceitos de negocio que nao se aplicam

Card info: Pontos totais ✓, Placares exatos ✓, Status do cupom ✓, Valor pago ✗
Empty state: CTA com botao destaque ✓
Secao extra: Info do torneio ativo ✓
Header: Saudacao personalizada ("Ola, [nome]") ✓

---

## Navegacao autenticada

| Option | Description | Selected |
|--------|-------------|----------|
| Header fixo com menu | Logo, links, menu usuario no topo | ✓ |
| Bottom nav + header | Barra inferior mobile + header desktop | |
| Sidebar colapsavel | Menu lateral | |

**User's choice:** Header fixo com menu

Tabs dentro do cupom: Palpites ✓, Ranking ✓, Meus Resultados ✓

| Option | Description | Selected |
|--------|-------------|----------|
| Header compacto + hamburger | Logo + hamburger no mobile | ✓ |
| Header completo responsivo | Mesmo header com texto menor | |
| Bottom nav no mobile | Barra inferior com icones | |

Ranking: mesmo ranking com cupom destacado ✓, publico (sem autenticacao) ✓

---

## Codigo existente vs referencias

| Option | Description | Selected |
|--------|-------------|----------|
| Refatorar frontend, manter backend | Backend funcional manter, reescrever views Vue | ✓ |
| Reescrever tudo | Ignorar codigo existente | |
| Ajustes minimos | Apenas CSS/Tailwind | |

Fases futuras: Aproveitar e adaptar codigo do Codex ✓

---

## Landpage

| Option | Description | Selected |
|--------|-------------|----------|
| Adaptar conteudo da ref | Estrutura visual completa, textos para bolao aberto | ✓ |
| Landpage simples | Hero basico + botoes | |
| Sem landpage | Direto no login | |

Regras de pontuacao na landpage: Sim ✓
Secao VIP substituida por: "Compre seu cupom" (CTA unico) ✓
FAQ: Estatico no frontend ✓

---

## Login e cadastro

| Option | Description | Selected |
|--------|-------------|----------|
| Tela dedicada centralizada | Card centralizado sobre fundo escuro | |
| Split screen | Metade branding, metade formulario | |
| Inline na landpage | Formulario na propria landpage | ✓ |

**User's choice:** Inline na landpage (via modal/overlay)

Campos cadastro: Nome, email, telefone (obrigatorio), senha ✓
Telefone: Obrigatorio ✓

---

## Perfil do usuario

Perfil basico no dropdown do header ✓ (sem pagina dedicada)
Avatar com iniciais geradas ✓ (circulo verde, sem upload)

---

## Responsividade

Abordagem: Mobile-first ✓
Grid cupons: 1 col mobile, 2 desktop ✓
Tabs palpites: Scroll horizontal ✓
Landpage mobile: Todas secoes adaptadas ✓

---

## Feedback visual e estados

Feedback: Toast notifications ✓
Loading: Skeleton screens ✓
Transicoes: Fade suave 200-300ms ✓

---

## Footer e branding

Footer simples (logo + copyright + links basicos) ✓
Branding: Inter World Cup ✓

---

## Admin panel

Ajustes visuais na Phase 2 para consistencia ✓

---

## Claude's Discretion

- Implementacao dos skeleton screens
- Design dos toasts
- Animacao do hamburger menu
- Estrutura interna dos componentes Vue

## Deferred Ideas

- Pagina de perfil dedicada — v2
- Upload de avatar — v2
- Bottom navigation mobile — avaliar feedback
- FAQ configuravel — v2
