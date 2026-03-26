---
phase: 02
slug: cupons-e-experiencia-do-usuario
status: draft
nyquist_compliant: false
wave_0_complete: false
created: 2026-03-26
---

# Phase 02 — Validation Strategy

> Per-phase validation contract for feedback sampling during execution.

---

## Test Infrastructure

| Property | Value |
|----------|-------|
| **Framework** | PHPUnit (backend) / Vitest (frontend — if added) |
| **Config file** | backend/phpunit.xml |
| **Quick run command** | `cd backend && php artisan test --filter=MvpFluxo` |
| **Full suite command** | `cd backend && php artisan test` |
| **Estimated runtime** | ~15 seconds |

---

## Sampling Rate

- **After every task commit:** Run `cd backend && php artisan test --filter=MvpFluxo`
- **After every plan wave:** Run `cd backend && php artisan test`
- **Before `/gsd:verify-work`:** Full suite must be green
- **Max feedback latency:** 15 seconds

---

## Per-Task Verification Map

| Task ID | Plan | Wave | Requirement | Test Type | Automated Command | File Exists | Status |
|---------|------|------|-------------|-----------|-------------------|-------------|--------|
| 02-01-01 | 01 | 1 | CUP-01 | feature | `php artisan test --filter=MvpFluxo` | ✅ | ⬜ pending |
| 02-01-02 | 01 | 1 | CUP-02 | feature | `php artisan test --filter=MvpFluxo` | ✅ | ⬜ pending |
| 02-01-03 | 01 | 1 | CUP-03 | feature | `php artisan test --filter=MvpFluxo` | ✅ | ⬜ pending |
| 02-02-01 | 02 | 2 | UI-01 | manual | browser check | N/A | ⬜ pending |
| 02-02-02 | 02 | 2 | CUP-04 | manual | browser check | N/A | ⬜ pending |
| 02-02-03 | 02 | 2 | CUP-05 | manual | browser check | N/A | ⬜ pending |
| 02-03-01 | 03 | 2 | UI-02 | manual | browser check | N/A | ⬜ pending |

*Status: ⬜ pending · ✅ green · ❌ red · ⚠️ flaky*

---

## Wave 0 Requirements

Existing infrastructure covers all phase requirements. Backend tests already exist in `backend/tests/Feature/MvpFluxoApiTest.php`.

---

## Manual-Only Verifications

| Behavior | Requirement | Why Manual | Test Instructions |
|----------|-------------|------------|-------------------|
| Layout responsivo | UI-01 | Visual rendering | Open in 375px and 1280px viewport, verify layout adapts |
| Navegacao entre cupons/apostas/ranking | UI-02 | Navigation flow | Login, navigate Painel > Cupom > Ranking via header and tabs |
| Empty state com CTA | CUP-04 | Visual state | New user without cupons sees CTA button |
| Skeleton loading | UI-01 | Animation | Throttle network, verify skeleton placeholders appear |

---

## Validation Sign-Off

- [ ] All tasks have `<automated>` verify or Wave 0 dependencies
- [ ] Sampling continuity: no 3 consecutive tasks without automated verify
- [ ] Wave 0 covers all MISSING references
- [ ] No watch-mode flags
- [ ] Feedback latency < 15s
- [ ] `nyquist_compliant: true` set in frontmatter

**Approval:** pending
