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
