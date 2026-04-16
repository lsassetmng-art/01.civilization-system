# ============================================================
# GAME OS POLICY OVERVIEW
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: policy
document_type: overview
owner: Boss
prepared_by: Zero

summary:
The policy layer defines what may be reflected into PersonaOS, how
national-currency gambling must be controlled, and how multilingual,
multi-currency, and multi-device readiness must be preserved.

principles:
- only meaningful continuous changes may become reflection proposals
- title-local convenience values must not leak into canonical truth
- national-currency gambling requires safety, audit, and dispute control
- multilingual support must be preserved as a formal design premise
- multi-currency support must be preserved as a formal design premise
- multi-device support must be preserved as a formal design premise

multilingual_policy_note:
- user-facing text must not be treated as single-language fixed truth
- language-aware delivery and fallback are expected

multi_currency_policy_note:
- monetary values must remain currency-aware
- source truth and converted display values must not be mixed

multi_device_policy_note:
- design must not assume phone-only operation
- iPhone, Android, PC, and tablet support must remain in scope
- interface policy must preserve cross-device operability
