# ============================================================
# POST CLOSE HANDLING NOTE
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines how to treat the design after close.

post_close_rules:
- do not reopen closed scope casually
- future additions should be additive
- implementation work later must respect closed semantic boundaries
- if new feature requests change product identity,
  reopen architecture and policy review explicitly

normal_post_close_changes:
- wording polish
- additive clarifications
- implementation preparation references
- future phase notes

reopen_required_changes:
- identity change
- boundary change
- pricing logic change
- free / paid / ERP scope change
- multilingual or multicurrency meaning change
- multi-device flow meaning change
