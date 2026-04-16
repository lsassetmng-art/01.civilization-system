# ============================================================
# GAME OS PLATFORM / I18N / CURRENCY NOTE
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: meta
domain: platform-i18n-currency
document_type: additive-note
owner: Boss
prepared_by: Zero

formal_statement:
GameOS formally assumes multilingual support, multi-currency support,
and multi-device support as first-class design premises.

multilingual_statement:
- UI text
- explanation text
- notification text
- display labels
- user-facing messages
- report and document display text

must be managed in a multilingual-capable structure instead of a single-language
fixed implementation.

multi_currency_statement:
- prices
- wager-related display values
- settlement-related values
- aggregate monetary values
- converted user-facing display values

must be managed as currency-aware structures instead of amount-only values.

multi_device_statement:
GameOS must be designed for:
- iPhone
- Android
- PC
- tablet devices

and must not assume a single device form factor as the only runtime target.

design_principles:
- multilingual support is handled as a common-component-ready structure
- multi-currency support must include currency-aware amount handling
- source monetary truth and converted display values must remain separated
- multi-device support must preserve cross-device operability
- these are formal design premises, not later optional add-ons
