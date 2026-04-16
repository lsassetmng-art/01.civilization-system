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
