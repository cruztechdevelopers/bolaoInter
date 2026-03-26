# Phase 2: Cupons e Experiencia do Usuario - Research

**Researched:** 2026-03-26
**Domain:** Frontend UI rewrite (Vue 3 + Tailwind), minor backend schema changes, checkout flow
**Confidence:** HIGH

## Summary

Phase 2 transforms the functional MVP from Phase 1 into a polished user experience. The backend is largely complete -- checkout controller, service, cupom controller, and API routes all exist and work. The primary work is a comprehensive frontend rewrite: landpage with all sections, auth modals, dedicated checkout page, enhanced painel with skeleton/toast/empty-state patterns, responsive header with mobile menu, and tab navigation within cupom views.

Two backend changes are required: (1) adding a `telefone` field to the `usuarios` table and registration flow, and (2) adding a `valor_cupom` field to the `torneios` table so the checkout page can display the configured price. The existing `ServicoCheckout` already defaults to 10 but should read from the torneio's `valor_cupom` field.

**Primary recommendation:** Split into 3 plans: (1) backend schema changes + API adjustments, (2) landpage + auth modals + checkout page rewrite, (3) painel/cupom views rewrite + header/nav + toast/skeleton infrastructure + admin polish.

<user_constraints>
## User Constraints (from CONTEXT.md)

### Locked Decisions
- D-01: Checkout com tela dedicada de confirmacao (nao compra em 1 clique). Tela mostra nome do bolao, valor do cupom (R$ 10,00 vindo do campo valor_cupom do torneio) e botao "Confirmar pagamento"
- D-02: Apos confirmacao do pagamento simulado, redireciona ao painel ("Meus Cupons") com mensagem de sucesso e novo cupom visivel na lista
- D-03: Valor do cupom exibido na tela de checkout, configurado no torneio (banco)
- D-04: Card do cupom mostra: codigo, pontos totais, placares exatos, status (ativo/pendente), botao "Fazer Palpites". Sem campos de membros/liga
- D-05: Empty state com CTA destaque: mensagem + botao grande "Comprar primeiro cupom" centralizado
- D-06: Secao "Info do torneio ativo" abaixo dos cupons: card com dados do torneio Copa 2026, proxima rodada ou status geral
- D-07: Header do painel com saudacao personalizada ("Ola, [nome]") + descricao + botao comprar cupom
- D-08: UX/UI fiel as referencias visuais (cards arredondados, gradientes, espacamentos, tipografia, dark theme, green accent)
- D-09: Header fixo no topo com logo, links (Painel, Ranking) e menu do usuario (avatar/nome, sair)
- D-10: No mobile: header compacto + icone hamburger que abre menu lateral
- D-11: Tabs dentro do cupom: Palpites (sub-tabs: Grupos, Classificacao, Mata-Mata, Finais), Ranking (com destaque do cupom atual), Meus Resultados (historico de pontos deste cupom)
- D-12: Ranking global acessivel tanto pelo header quanto pela tab dentro do cupom. Mesmo ranking, mas quando acessado de dentro do cupom, destaca a linha daquele cupom
- D-13: Ranking publico (visivel sem autenticacao). Ja existe rota publica GET /torneios/{id}/ranking
- D-14: Backend (controllers, services, models, rotas) mantido e ajustado se necessario. Frontend (views Vue) reescrito para ficar fiel as referencias
- D-15: Codigo do Codex para fases futuras (apostas, pontuacao) sera aproveitado e adaptado quando chegarmos nas Phases 3-4
- D-16: Landpage completa adaptada ao contexto: hero, "Como funciona" (4 passos), regras de pontuacao, "Compre seu cupom" (CTA), FAQ estatico, footer simples
- D-17: Regras de pontuacao visiveis na landpage (vem do banco do torneio ativo)
- D-18: Secao "Compre seu cupom" substitui a secao de planos/precos da referencia
- D-19: Login e cadastro inline na landpage via modal/overlay
- D-20: Cadastro pede: nome, email, telefone (obrigatorio), senha. Campo telefone e novo (precisa migration e ajuste no backend)
- D-21: Rotas /entrar e /cadastro existentes podem redirecionar para landpage com modal aberto, ou serem removidas em favor dos modais
- D-22: Perfil basico no dropdown do header: nome, email, telefone, botao "Sair". Sem pagina dedicada no MVP
- D-23: Avatar com iniciais geradas (circulo verde com iniciais do nome). Sem upload de foto
- D-24: Abordagem mobile-first
- D-25: Grid de cupons: 1 coluna mobile, 2 colunas desktop (sm:grid-cols-2)
- D-26: Tabs de palpites: scroll horizontal no mobile (overflow-x-auto)
- D-27: Landpage mobile: todas as secoes mantidas, layout empilhado e fontes adaptadas
- D-28: Toast notifications para sucesso/erro (canto top-right, somem apos segundos)
- D-29: Skeleton screens para loading states (placeholders animados no formato dos cards)
- D-30: Fade suave (200-300ms) nas transicoes entre paginas
- D-31: Ajustes visuais do admin na Phase 2 para alinhar ao mesmo tema/componentes do usuario final

### Claude's Discretion
- Implementacao especifica dos skeleton screens (componente reutilizavel ou inline)
- Design exato dos toasts (biblioteca ou componente proprio)
- Detalhes de animacao do menu hamburger mobile
- Estrutura interna dos componentes Vue (composables, composicao)

### Deferred Ideas (OUT OF SCOPE)
- Pagina de perfil dedicada com edicao de dados
- Upload de avatar/foto de perfil
- Bottom navigation no mobile como alternativa ao hamburger
- FAQ configuravel pelo admin
</user_constraints>

<phase_requirements>
## Phase Requirements

| ID | Description | Research Support |
|----|-------------|------------------|
| CUP-01 | Usuario pode iniciar checkout simulado para compra de cupom | Backend route POST /pedidos-checkout exists. Frontend needs dedicated checkout page (D-01). Need new route /checkout in router. |
| CUP-02 | Pedido de checkout possui status pendente, pago ou cancelado | Already implemented in ServicoCheckout and PedidoCheckout model. No changes needed. |
| CUP-03 | Cupom so e ativado apos confirmacao de pagamento simulado | Already implemented in ServicoCheckout.simularPagamento(). Frontend needs 2-step flow (create order, then simulate payment). |
| CUP-04 | Usuario pode possuir multiplos cupons | Already supported by data model (no unique constraint on usuario_id in cupons). Frontend painel shows list. |
| CUP-05 | Cada cupom mantem conjunto independente de apostas | Already enforced by cupom_id FK on apostas table. CupomView already scoped by cupom ID. |
| UI-01 | Aplicacao funciona em layout web responsivo | Full frontend rewrite with mobile-first approach (D-24). Responsive header, grid layouts, scroll tabs. |
| UI-02 | Usuario autenticado consegue navegar entre cupons, apostas e ranking | New AppHeader with fixed nav, tab system inside cupom, ranking accessible from header and cupom tabs. |
</phase_requirements>

## Standard Stack

### Core (already installed)
| Library | Version | Purpose | Why Standard |
|---------|---------|---------|--------------|
| Vue | 3.5.31 | UI framework | Already in use |
| Pinia | 3.0.4 | State management | Already in use |
| Vue Router | 5.0.4 | Routing | Already in use |
| Tailwind CSS | 4.2.2 | Styling | Already in use, theme defined |
| Laravel | 13 | Backend API | Already in use |
| Sanctum | - | API auth tokens | Already in use |

### No New Dependencies Needed

The phase requires no new npm or composer packages. All UI components (toast, skeleton, modal, mobile menu) will be custom Tailwind components, consistent with Phase 1 patterns. The project deliberately uses no component library.

**Rationale for custom components over libraries:**
- Toast: Simple enough (3 states, auto-dismiss timer, CSS animations). Libraries like vue-toastification add ~15KB for features we don't need.
- Skeleton: Just pulsing div with bg-bg-input to bg-border animation. Already achievable with Tailwind's `animate-pulse`.
- Modal: Focus trap + overlay + transitions. ~50 lines of composable code.
- Accordion (FAQ): Toggle visibility with transition. ~20 lines per item.

## Architecture Patterns

### Recommended Component Structure
```
frontend/src/
  components/
    AppHeader.vue           # Fixed header with nav + user dropdown
    MobileMenu.vue          # Slide-in lateral menu
    UserDropdown.vue         # Avatar initials + dropdown
    AvatarIniciais.vue       # Green circle with initials
    ModalAuth.vue            # Login/Cadastro overlay modal
    ToastNotification.vue    # Single toast item
    ToastContainer.vue       # Fixed container managing toast stack
    SkeletonCard.vue         # Cupom card placeholder
    SkeletonLine.vue         # Text line placeholder
    InfoTorneio.vue          # Tournament info card
    LandpageFAQ.vue          # Accordion FAQ
  composables/
    useToast.ts              # Toast state management (provide/inject or standalone)
  views/
    InicioView.vue           # Full landpage rewrite
    PainelView.vue           # Cupom list with empty state, skeleton
    CupomView.vue            # Tabs: Palpites, Ranking, Meus Resultados
    CheckoutView.vue         # NEW: Dedicated checkout confirmation
    RankingView.vue          # Enhanced with cupom highlight support
    AdminPainelView.vue      # Visual polish
```

### Pattern 1: Toast Notification System
**What:** Global toast state via composable + provide/inject at App level
**When to use:** After any user action that needs feedback (checkout, login, cadastro, error)
**Example:**
```typescript
// composables/useToast.ts
import { ref } from 'vue'

type Toast = { id: number; tipo: 'sucesso' | 'erro'; mensagem: string }
const toasts = ref<Toast[]>([])
let contadorId = 0

export function useToast() {
  function mostrar(tipo: Toast['tipo'], mensagem: string) {
    const id = ++contadorId
    toasts.value.push({ id, tipo, mensagem })
    setTimeout(() => remover(id), 4000)
  }
  function remover(id: number) {
    toasts.value = toasts.value.filter(t => t.id !== id)
  }
  return { toasts, mostrar, remover }
}
```

### Pattern 2: Skeleton Loading Pattern
**What:** Show skeleton placeholders immediately on mount, replace with data on load
**When to use:** PainelView cupom list, RankingView table, InfoTorneio card
**Example:**
```vue
<template>
  <div v-if="carregando" class="space-y-4">
    <SkeletonCard v-for="i in 2" :key="i" />
  </div>
  <div v-else>
    <!-- real content -->
  </div>
</template>
```

### Pattern 3: Auth Modal with Tab Switching
**What:** Single modal component with Entrar/Criar conta tabs, shared overlay
**When to use:** Landpage CTA buttons, /entrar and /cadastro route redirects
**Example:**
```typescript
// Router can redirect old auth routes to landpage with query param
{ path: '/entrar', redirect: { name: 'inicio', query: { modal: 'entrar' } } },
{ path: '/cadastro', redirect: { name: 'inicio', query: { modal: 'cadastro' } } },
```

### Pattern 4: AppHeader as Layout Wrapper
**What:** Move header from App.vue into a dedicated AppHeader component. App.vue renders AppHeader conditionally (hide on landpage for unauthenticated users, or always show with different nav items).
**When to use:** All authenticated pages get the full header. Landpage gets its own header or shares with different CTA.

### Anti-Patterns to Avoid
- **Embedding business logic in components:** Keep checkout flow logic in the composable/store, not in the CheckoutView template.
- **Duplicating API calls:** Use a shared composable or Pinia store for torneio data that both landpage and painel need.
- **Inline styles over theme tokens:** Always use the defined CSS custom properties (bg-bg, bg-card, text-primary, etc.) from style.css.
- **Hardcoding R$ 10,00:** Value must come from the torneio's `valor_cupom` field via API.

## Don't Hand-Roll

| Problem | Don't Build | Use Instead | Why |
|---------|-------------|-------------|-----|
| Focus trap in modal | Manual keydown listeners | A reusable `useFocusTrap` composable (~30 lines) | Edge cases: nested focusable elements, shift+tab, initial focus |
| Currency formatting | String concatenation | `Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' })` | Handles decimal separator, symbol placement correctly |
| Avatar initials extraction | Split on space, take first chars | Simple function but handle edge cases (single name, accented chars) | "Maria" -> "MA", "Joao da Silva" -> "JS" |
| Route transitions | Manual opacity toggling | Vue `<Transition>` component with CSS classes | Built-in, handles enter/leave lifecycle correctly |

## Common Pitfalls

### Pitfall 1: Checkout Race Condition
**What goes wrong:** User clicks "Confirmar pagamento" twice quickly, creating duplicate cupons.
**Why it happens:** The simularPagamento endpoint doesn't prevent double-calls if the first is still processing.
**How to avoid:** (1) Disable button immediately on click (already pattern in PainelView). (2) Backend already handles idempotency in ServicoCheckout -- if status is already 'pago', it returns the existing cupom via `firstOrCreate`. So this is safe on backend, just need frontend disable.
**Warning signs:** Multiple cupons with same pedido_checkout_id.

### Pitfall 2: Modal Scroll Lock
**What goes wrong:** When auth modal or mobile menu opens, page behind scrolls.
**Why it happens:** Body scroll not locked when overlay is active.
**How to avoid:** Add `document.body.style.overflow = 'hidden'` when modal opens, restore on close. Use onMounted/onUnmounted lifecycle.
**Warning signs:** Users report seeing content scroll behind the modal.

### Pitfall 3: Router Guard Redirect Loop
**What goes wrong:** Redirecting /entrar to /?modal=entrar can cause infinite loops if guard checks auth and redirects back.
**Why it happens:** The existing beforeEach guard redirects unauthenticated users to { name: 'entrar' }, but /entrar now redirects to inicio.
**How to avoid:** Update the guard to redirect to `{ name: 'inicio', query: { modal: 'entrar' } }` instead of `{ name: 'entrar' }`.
**Warning signs:** Browser console shows "Maximum call stack size exceeded" or page goes blank.

### Pitfall 4: Missing telefone in Existing User Data
**What goes wrong:** Existing admin user (seeder) has no telefone field, causing null display in dropdown profile.
**Why it happens:** Migration adds column as nullable, but seeder doesn't set it.
**How to avoid:** Make telefone nullable in both migration and validation. Display "Nao informado" if null. Update seeder optionally.
**Warning signs:** Null/undefined rendered as text in UI.

### Pitfall 5: Torneio Data Over-Fetching
**What goes wrong:** Every page load fetches the full torneio with all groups, teams, players, games, rules.
**Why it happens:** The /torneio endpoint eager-loads everything (see TorneioController::carregarTorneio).
**How to avoid:** For Phase 2, this is acceptable since the dataset is small (mockado). Consider optimizing in future phases if data grows. For now, cache torneio data in a Pinia store to avoid re-fetching on every navigation.
**Warning signs:** Slow page loads, large JSON payloads.

### Pitfall 6: valor_cupom Field Missing
**What goes wrong:** Checkout page cannot display the cupom price from the torneio.
**Why it happens:** The `torneios` table has no `valor_cupom` column. The ServicoCheckout hardcodes default 10.
**How to avoid:** Add migration for `valor_cupom` decimal column on torneios. Update seeder to set it. Update ServicoCheckout to read from torneio. Update TorneioController to include it in public response.
**Warning signs:** Checkout page shows hardcoded value or null.

## Code Examples

### Backend: Adding telefone to usuarios

```php
// Migration: add_telefone_to_usuarios_table.php
Schema::table('usuarios', function (Blueprint $table) {
    $table->string('telefone')->nullable()->after('email');
});
```

```php
// Update CadastrarUsuarioRequest rules
'telefone' => ['required', 'string', 'max:20'],
```

```php
// Update Usuario model $fillable
protected $fillable = ['nome', 'email', 'telefone', 'password', 'perfil'];
```

```php
// Update AutenticacaoController::cadastrar
$usuario = Usuario::query()->create([
    'nome' => $request->string('nome')->toString(),
    'email' => $request->string('email')->toString(),
    'telefone' => $request->string('telefone')->toString(),
    'password' => $request->string('password')->toString(),
    'perfil' => 'usuario',
]);
```

### Backend: Adding valor_cupom to torneios

```php
// Migration: add_valor_cupom_to_torneios_table.php
Schema::table('torneios', function (Blueprint $table) {
    $table->decimal('valor_cupom', 10, 2)->default(10.00)->after('data_fim');
});
```

```php
// Update Torneio model $fillable
protected $fillable = ['nome', 'edicao', 'status', 'data_inicio', 'data_fim', 'valor_cupom'];
```

```php
// Update ServicoCheckout to use torneio value
public function criarPedido(Usuario $usuario, ?float $valor = null): PedidoCheckout
{
    $valorCupom = $valor ?? Torneio::where('status', 'publicado')->latest('id')->value('valor_cupom') ?? 10;
    return PedidoCheckout::query()->create([
        'usuario_id' => $usuario->id,
        'valor' => $valorCupom,
        'status' => 'pendente',
        'referencia_checkout' => (string) Str::uuid(),
    ]);
}
```

### Frontend: Avatar Initials Extraction

```typescript
export function extrairIniciais(nome: string): string {
  const partes = nome.trim().split(/\s+/)
  if (partes.length === 1) {
    return partes[0].substring(0, 2).toUpperCase()
  }
  return (partes[0][0] + partes[partes.length - 1][0]).toUpperCase()
}
```

### Frontend: Currency Formatting

```typescript
export function formatarMoeda(valor: number): string {
  return new Intl.NumberFormat('pt-BR', {
    style: 'currency',
    currency: 'BRL',
  }).format(valor)
}
```

### Frontend: Focus Trap Composable

```typescript
import { onMounted, onUnmounted, type Ref } from 'vue'

export function useFocusTrap(containerRef: Ref<HTMLElement | null>) {
  function handleKeydown(e: KeyboardEvent) {
    if (e.key !== 'Tab' || !containerRef.value) return
    const focusaveis = containerRef.value.querySelectorAll<HTMLElement>(
      'button, [href], input, select, textarea, [tabindex]:not([tabindex="-1"])'
    )
    if (!focusaveis.length) return
    const primeiro = focusaveis[0]
    const ultimo = focusaveis[focusaveis.length - 1]
    if (e.shiftKey && document.activeElement === primeiro) {
      e.preventDefault()
      ultimo.focus()
    } else if (!e.shiftKey && document.activeElement === ultimo) {
      e.preventDefault()
      primeiro.focus()
    }
  }
  onMounted(() => document.addEventListener('keydown', handleKeydown))
  onUnmounted(() => document.removeEventListener('keydown', handleKeydown))
}
```

## Project Constraints (from CLAUDE.md)

- **Backend**: Laravel 13, PHP 8.3+, MySQL (interWordCup), Sanctum API tokens
- **Frontend**: Vue 3 + TypeScript, Pinia, Vue Router, Tailwind CSS
- **Backend port**: 8888 (Coolify occupies 8000)
- **Frontend port**: 5173
- **Domain language**: Portuguese in all code (tables, models, controllers, services, views, routes)
- **Structural Laravel fields** stay in English: id, created_at, updated_at, password, remember_token
- **Schema via migrations only**
- **Scoring configurable in DB** per torneio and fase (never hardcoded)
- **Bet deadline validation backend-only**
- **Frontend uses Tailwind with dark theme** (colors in style.css via @theme)
- **Thin controllers, logic in Services**
- **Composition API with `<script setup lang="ts">`**
- **API responses use resource key**: `{ cupons: [...] }`, `{ pedido: {...} }`

## State of the Art

| Old Approach | Current Approach | When Changed | Impact |
|--------------|------------------|--------------|--------|
| Tailwind v3 @apply | Tailwind v4 @theme + @import 'tailwindcss' | 2025 | Already using v4 in this project |
| Options API Vue | Composition API + script setup | Vue 3.2+ (2021) | Already using in this project |
| Vuex | Pinia | Vue 3 ecosystem standard | Already using in this project |

## Validation Architecture

### Test Framework
| Property | Value |
|----------|-------|
| Framework | PHPUnit (via Laravel) |
| Config file | backend/phpunit.xml (Laravel default) |
| Quick run command | `cd backend && php artisan test --filter=ClassName` |
| Full suite command | `cd backend && php artisan test` |

### Phase Requirements -> Test Map
| Req ID | Behavior | Test Type | Automated Command | File Exists? |
|--------|----------|-----------|-------------------|-------------|
| CUP-01 | Usuario inicia checkout simulado | integration | `cd backend && php artisan test --filter=MvpFluxoApiTest` | Yes (covers this in existing test) |
| CUP-02 | Pedido tem status pendente/pago/cancelado | integration | `cd backend && php artisan test --filter=CheckoutStatusTest` | No - Wave 0 |
| CUP-03 | Cupom ativado apos pagamento simulado | integration | `cd backend && php artisan test --filter=MvpFluxoApiTest` | Yes (existing test covers) |
| CUP-04 | Usuario possui multiplos cupons | integration | `cd backend && php artisan test --filter=MultiplosCuponsTest` | No - Wave 0 |
| CUP-05 | Cada cupom mantem apostas independentes | integration | `cd backend && php artisan test --filter=MvpFluxoApiTest` | Yes (implicitly tested) |
| UI-01 | Layout responsivo | manual | N/A - visual verification | N/A |
| UI-02 | Navegacao entre cupons, apostas e ranking | manual | N/A - visual verification | N/A |

### Sampling Rate
- **Per task commit:** `cd backend && php artisan test`
- **Per wave merge:** `cd backend && php artisan test`
- **Phase gate:** Full suite green + manual visual verification of UI requirements

### Wave 0 Gaps
- [ ] `backend/tests/Feature/CheckoutFluxoTest.php` -- covers CUP-01 through CUP-04 with dedicated tests for: creating order (pendente status), simulating payment (pago status), cupom activation, multiple cupons per user
- [ ] `backend/tests/Feature/TelefoneRegistroTest.php` -- covers new telefone field in registration (D-20)
- [ ] `backend/tests/Feature/ValorCupomTorneioTest.php` -- covers valor_cupom field reading from torneio (D-03)

## Open Questions

1. **Torneio store caching strategy**
   - What we know: Multiple views (landpage, painel, cupom, checkout) need torneio data. Currently each view fetches independently.
   - What's unclear: Whether to use a dedicated Pinia store for torneio or just a composable with shared ref.
   - Recommendation: Use a Pinia store (`usarTorneioStore`) that fetches once and caches. Pages call `carregarSeNecessario()` on mount. This avoids redundant API calls.

2. **AppHeader placement strategy**
   - What we know: Current App.vue has an inline header. Phase 2 needs different headers for authenticated vs. public.
   - What's unclear: Whether to keep one header with conditional rendering or have separate header per layout.
   - Recommendation: Single AppHeader component with conditional rendering based on `estaAutenticado`. The landpage gets the same header but with "Entrar"/"Cadastrar" buttons that open modals instead of navigating.

## Sources

### Primary (HIGH confidence)
- Direct codebase analysis of all controllers, models, migrations, views, router, stores, and services
- UI-SPEC at `.planning/phases/02-cupons-e-experiencia-do-usuario/02-UI-SPEC.md`
- CONTEXT.md with 31 locked decisions

### Secondary (MEDIUM confidence)
- Vue 3 Composition API patterns (standard knowledge, verified by existing codebase usage)
- Tailwind CSS v4 @theme patterns (verified by existing style.css)

## Metadata

**Confidence breakdown:**
- Standard stack: HIGH - no new dependencies, all libraries already in use and verified in package.json/composer.json
- Architecture: HIGH - patterns derived from existing codebase conventions, not speculative
- Pitfalls: HIGH - identified from actual code analysis (missing valor_cupom, missing telefone, router guard logic)
- Backend changes: HIGH - exact schema gaps identified by comparing CONTEXT.md decisions against actual migrations

**Research date:** 2026-03-26
**Valid until:** 2026-04-26 (stable stack, no external API dependencies)
