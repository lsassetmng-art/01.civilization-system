# ============================================================
# ESTIMATE DELIVERY LOCALE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This guide defines implementation rules
for multilingual, multicurrency-display,
customer delivery,
and customer response exact contracts.

# ============================================================
# 2. LOCALE RULE
# ============================================================

Implementation must preserve:

- ui_locale
- customer_preferred_locale
- template_locale
- export_locale

as explicit values.

Do not infer locale silently
without leaving a traceable resolved value.

# ============================================================
# 3. CURRENCY DISPLAY RULE
# ============================================================

Implementation must treat currency fields here
as display/output support fields.

Do not treat delivery_currency_code
as accounting source-of-truth replacement.

# ============================================================
# 4. DELIVERY RULE
# ============================================================

Customer delivery actions must remain separate from ERP publication.

Do not reuse ERP publication state
as customer delivery state.

# ============================================================
# 5. READONLY LINK RULE
# ============================================================

Readonly links must never expose write capability.

If insufficient permission or invalid link state exists,
render safe readonly denial or expired behavior.

# ============================================================
# 6. OPEN LOG RULE
# ============================================================

Open logging should remain explicit and append-only in meaning.

Do not collapse:
- first_opened_at
- latest_opened_at
- open_count
- detailed open log items

into one ambiguous last_seen field only.

# ============================================================
# 7. CUSTOMER RESPONSE RULE
# ============================================================

Customer response is manual-record based in current phase.

Implementation should make this explicit in UI and state handling,
rather than implying external automated approval capture.

