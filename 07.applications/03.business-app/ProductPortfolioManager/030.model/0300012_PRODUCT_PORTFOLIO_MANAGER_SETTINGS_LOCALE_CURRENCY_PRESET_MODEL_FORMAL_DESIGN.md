# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines model semantics for settings,
locale context,
currency context,
and saved view presets.

model_principles:
- user preference meaning and view preset meaning must remain separable
- locale and currency settings are contextual display controls
- preset payloads are operator-defined view artifacts
- model semantics must support cross-screen reuse

# ============================================================
# 1. USER PREFERENCE SEMANTICS
# ============================================================

user_preference_semantics:
A user preference record, whether explicit in a dedicated model later
or represented through settings payload handling,
controls operator-specific defaults such as:
- locale
- reporting/display currency
- default period type
- default display density where supported

preference_rule:
Preferences affect presentation defaults,
not business truth ownership.

# ============================================================
# 2. VIEW PRESET SEMANTICS
# ============================================================

primary_preset_entity:
- product_view_preset

view_preset_semantics:
A view preset stores reusable operator-defined list or screen context,
typically including:
- target_screen_code
- filter_payload
- sort_payload
- column_payload
- is_default

preset_meaning:
- preset_name identifies a reusable operator-facing configuration
- target_screen_code determines where the preset applies
- filter_payload stores narrowing logic
- sort_payload stores ordering logic
- column_payload stores visibility/density preferences
- is_default indicates preferred preset in that context

# ============================================================
# 3. LOCALE/CURRENCY CONTEXT SEMANTICS
# ============================================================

locale_currency_context_semantics:
Locale and reporting/display currency may be carried:
- by user preference
- by current display context
- by request payload context

semantic_rule:
Display locale and reporting/display currency
must remain identifiable as context,
not as replacement of source data meaning.

# ============================================================
# 4. SHARED PRESET SEMANTICS
# ============================================================

shared_preset_semantics:
If team or shared presets are later introduced,
their semantics must remain distinct from personal presets,
including:
- ownership
- edit authority
- defaulting rules
- visibility scope

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale/currency context,
and view preset model semantics in ProductPortfolioManager
must preserve presentation control and operator efficiency
without redefining underlying business truth.
