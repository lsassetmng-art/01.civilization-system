# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST BOUNDARY POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for forecast reference handling.

policy_principles:
- forecast is reference, not certainty
- confidence matters
- timing matters
- forecast-informed judgment remains human-visible and reviewable
- UI wording must not overstate forecast certainty

# ============================================================
# 1. INTERPRETATION POLICY
# ============================================================

forecast_interpretation_policy:
- forecast should be read in scope and period context
- forecast should be read in confidence context where available
- forecast should be read in freshness context where available
- forecast should not be interpreted as guaranteed future actuals

# ============================================================
# 2. JUDGMENT POLICY
# ============================================================

forecast_to_judgment_policy:
- forecast may trigger attention
- forecast may influence proposal reasoning
- forecast may influence review prioritization
- forecast should not silently finalize classification
- forecast should not silently approve action

# ============================================================
# 3. UI/OPERATOR POLICY
# ============================================================

ui_operator_policy:
- users should be able to recognize forecast context quickly
- users should be able to distinguish forecast from ERP fact
- users should not be misled into treating weak-confidence forecast as strong certainty
- missing forecast should not appear as confirmed no-risk state

# ============================================================
# 4. ALERT POLICY LINK
# ============================================================

alert_policy_link:
- forecast gap may be an alert source
- forecast-related alerts remain attention signals, not final business conclusions
- alerting should not exaggerate forecast certainty

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Forecast boundary policy in ProductPortfolioManager
must preserve advisory meaning,
confidence awareness,
and explicit separation from final judgment authority.
