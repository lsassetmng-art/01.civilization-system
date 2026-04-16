#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200016_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of settings,
display language,
display/reporting currency,
and saved view preset handling inside ProductPortfolioManager.

architecture_principles:
- settings must affect presentation, not silently redefine source truth
- locale affects labels and explanations, not business authority
- reporting/display currency affects presentation context, not source ownership
- saved view presets affect operator efficiency, not business meaning
- user preference and shared operational preset concepts must remain distinguishable
- cross-device meaning must remain stable even if layout or default density differs

# ============================================================
# 1. SETTINGS ARCHITECTURAL ROLE
# ============================================================

settings_role:
- provide operator-facing control of display context
- provide stable personalization of presentation behavior
- support efficient return to recurring work patterns
- reduce repetitive filtering and reconfiguration effort

settings_is_not:
- not an authority escalation surface
- not a hidden data-mutation surface
- not a source-of-truth rewriting surface
- not a substitute for workflow governance

# ============================================================
# 2. LOCALE ARCHITECTURAL ROLE
# ============================================================

locale_role:
- control UI language presentation
- control translated labels and explanations
- support multilingual-ready business surfaces
- preserve consistent code meaning independent of language rendering

locale_rule:
Localization changes visible expression,
but must not change the underlying business code meaning.

# ============================================================
# 3. CURRENCY ARCHITECTURAL ROLE
# ============================================================

currency_role:
- control reporting/display currency context for presentation
- support multi-currency-safe viewing and comparison
- preserve explicit distinction between transaction currency and reporting currency

currency_rule:
Changing display/reporting currency
must not imply mutation of stored ERP-origin money facts.

# ============================================================
# 4. PRESET ARCHITECTURAL ROLE
# ============================================================

preset_role:
- preserve reusable list/filter/sort/column setups
- support personal efficiency
- support recurring operational triage patterns
- optionally support team-level repeatable views where policy allows

preset_rule:
Preset changes affect how work is seen,
not what the underlying business state is.

# ============================================================
# 5. SETTINGS SURFACE ARCHITECTURE
# ============================================================

settings_surface_scope:
- display language
- display/reporting currency
- default period context
- default list density or layout preference where supported
- default target screen preferences where supported
- saved view preset access and management

architectural_rule:
User preference settings and shared operational presets
must remain conceptually separable.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale, currency, and presets in ProductPortfolioManager
must remain explicit presentation and operator-efficiency architecture,
not hidden business-state mutation architecture.
EOF

cat <<'EOF' > "$BASE/030.model/0300012_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_MODEL_FORMAL_DESIGN.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800013_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for settings,
display language,
display/reporting currency,
and saved view presets.

policy_principles:
- settings are presentation-level controls unless explicitly stated otherwise
- locale should not alter code meaning
- display currency should not obscure source-currency truth
- presets should aid work without creating hidden workflow outcomes
- defaults should remain explainable

# ============================================================
# 1. LOCALE POLICY
# ============================================================

locale_policy:
- UI language should be user-selectable where supported
- translated labels must preserve business meaning
- underlying business codes remain stable independent of display language
- changing locale must not imply changed authority or changed workflow state

# ============================================================
# 2. CURRENCY POLICY
# ============================================================

currency_policy:
- reporting/display currency must remain explicit where money is shown
- transaction currency and reporting/display currency should not be conflated
- display currency changes should not imply source-fact mutation
- mixed-currency comparisons should remain understandable and not misleading

# ============================================================
# 3. PRESET POLICY
# ============================================================

preset_policy:
- presets store reusable viewing context
- presets should not silently trigger workflow transitions
- presets should not silently expand visibility or authority
- default presets should remain operator-understandable
- deletion or change of a preset should not affect business history

# ============================================================
# 4. SHARED PRESET POLICY
# ============================================================

shared_preset_policy:
- if shared presets are later supported,
  they should have explicit ownership and edit rules
- shared presets should not silently overwrite personal defaults
- shared presets affect presentation convenience, not workflow authority

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Settings, locale, currency, and preset policy in ProductPortfolioManager
must preserve explicit presentation control,
clear money interpretation,
and bounded operator customization.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200019_PRODUCT_PORTFOLIO_MANAGER_SETTINGS_LOCALE_CURRENCY_PRESET_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER SETTINGS LOCALE CURRENCY PRESET REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for settings,
display language,
display/reporting currency,
and saved view presets
without entering implementation code.

# ============================================================
# 1. SETTINGS REQUIREMENTS
# ============================================================

settings_requirements:
- support display language selection
- support reporting/display currency selection
- support default period selection where supported
- support default density/layout preference where supported
- support view preset management entry points

# ============================================================
# 2. LOCALE REQUIREMENTS
# ============================================================

locale_requirements:
- translated labels must be localization-ready
- classification, lifecycle, proposal, alert, approval, and audit labels must be language-switchable
- locale changes should reflect across supported screens consistently
- locale changes must not alter stored business code values

# ============================================================
# 3. CURRENCY REQUIREMENTS
# ============================================================

currency_requirements:
- monetary displays must show currency context clearly
- reporting/display currency changes must propagate to supported views
- mixed-currency contexts must remain understandable
- source-vs-display money meaning must not be collapsed

# ============================================================
# 4. VIEW PRESET REQUIREMENTS
# ============================================================

view_preset_requirements:
- save preset for supported list/screen contexts
- load preset
- rename preset
- delete preset
- mark preset as default where supported
- preserve filter_payload
- preserve sort_payload
- preserve column_payload where relevant

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- make clear that language changes affect display, not business state
- make clear that display currency affects presentation, not source truth
- make clear that presets affect viewing context, not approval or workflow status
- labels and help text must be localization-ready

# ============================================================
# 6. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- support compact settings navigation
- support fast preset recall

tablet:
- support easier side-by-side preset and settings inspection where useful

pc:
- support denser settings and preset management surfaces
- support quicker preset editing and reuse

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe presentation
- cross-device consistent meaning
- no hidden authority changes through settings
- no hidden workflow changes through presets
- no implication that locale/currency preference rewrites source data

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement settings,
display language,
display/reporting currency,
and saved view presets
as explicit user-facing presentation controls and efficiency tools.
EOF

echo "PATCHED: settings/locale/currency/preset formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/030.model" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
