# ============================================================
# WORDING CANONICAL RULE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines wording normalization rules for QuickForecast documents.

canonical_terms:
- QuickForecast
- QuickForecast Basic
- QuickForecast Pro
- Forecast
- Action
- Proposal
- Profit
- Share
- Approval
- Handoff
- ERP
- local-first
- mobile-first
- implementation-ready design
- design-only boundary

rules:
- Use "QuickForecast" as the canonical product name.
- Use "QuickForecast Basic" and "QuickForecast Pro" when tier names must be explicit.
- Use "Forecast -> Action -> Proposal -> Profit" as the canonical value chain order.
- Use "local-first" and "mobile-first" consistently with hyphen.
- Use "design-only boundary" when referring to the current non-implementation state.
- Use "governed action" for approval / handoff / enterprise-linked actions.
- Do not alternate casually between similar meanings such as:
  - proposal draft / planning draft / proposal output
  unless the distinction is intentional.
- Do not describe ERP as replaced by QuickForecast.
  ERP coexistence must remain explicit.
