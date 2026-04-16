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
