# ============================================================
# APP DEVELOPMENT STUDIO MULTILINGUAL / MULTI CURRENCY ARCHITECTURE ADDENDUM
# ============================================================

status: canonical-draft
layer: architecture
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Adds explicit architecture direction that App Development Studio
supports multilingual and multi-currency capability
through shared common components.

multilingual_position:
App Development Studio shall support multilingual operation.

multi_currency_position:
App Development Studio shall support multi-currency handling.

shared_component_rule:
These capabilities are not implemented as isolated local-only logic.
They are provided through reusable common components.

multilingual_scope_note:
- UI language
- input assist language
- generated artifact output language
- fallback language

multi_currency_scope_note:
- currency code
- localized amount format
- subtotal / tax / total display
- billing currency vs display currency distinction
