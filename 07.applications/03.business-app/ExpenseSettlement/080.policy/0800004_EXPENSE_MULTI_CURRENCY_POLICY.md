# ============================================================
# EXPENSE MULTI CURRENCY POLICY
# ============================================================

status: canonical
layer: policy
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines multi currency business rules for ExpenseSettlement initial release,
without entering implementation.

design_policy:
- multi currency support is mandatory from the beginning
- amount and currency must always be stored separately
- display formatting must not redefine stored business meaning
- report currency, item currency, conversion currency, and settlement meaning must remain explicit
- iphone, android, pc, and tablet must share the same currency meaning
- multilingual support and locale presentation must not change accounting meaning

# ============================================================
# 1. CURRENCY ROLE DEFINITIONS
# ============================================================

currency_roles:

  item_currency:
    meaning:
      - original currency used in the real-world expense item
      - this is the first-class factual currency of the item

  report_currency:
    meaning:
      - currency used to summarize the expense report total in app-facing report context

  converted_currency:
    meaning:
      - currency produced by conversion for comparison, aggregation, finance review,
        or ERP handoff where needed

  settlement_currency:
    meaning:
      - currency in which reimbursement or settlement is actually completed
      - may align with ERP/accounting policy rather than original item currency

important_rule:
- these roles must not be silently merged
- same currency across roles is allowed, but role meaning still remains distinct

# ============================================================
# 2. REQUIRED DATA FIELDS
# ============================================================

required_currency_data_fields:

  item_level:
    - amount
    - currency_code
    - exchange_rate_nullable
    - converted_amount_nullable
    - converted_currency_code_nullable

  report_level:
    - report_currency_code
    - total_amount

  settlement_visibility:
    - settlement currency meaning must remain design-visible
    - settlement currency may be projected from downstream process if not stored directly at first release

notes:
- original factual amount always belongs to the item
- conversion fields may be null when conversion is not needed

# ============================================================
# 3. DEFAULT RULES
# ============================================================

default_rules:
- same-currency expense is valid without conversion
- cross-currency expense must keep original amount/currency
- conversion must never overwrite original item facts
- report total must be explainable from item-level facts
- finance and ERP handoff must be able to distinguish original and converted values where used

# ============================================================
# 4. EXCHANGE RATE MEANING
# ============================================================

exchange_rate_meaning:
- exchange_rate is the explicit conversion basis used for the item when conversion occurs
- exchange_rate must be traceable to a rate source meaning
- rate source meaning may be policy-defined even if not fully stored in the initial minimal field set
- a missing exchange_rate is acceptable only when no conversion is required

important_rule:
- exchange_rate is not only presentation support
- once used for business decision or ERP handoff, its meaning must remain stable and auditable

# ============================================================
# 5. RATE FIXING TIMING
# ============================================================

rate_fixing_timing_policy:

  preferred_rule:
    - exchange rate is fixed at the business point defined by company policy

  allowed_policy_patterns:
    - usage_date_basis
    - submission_date_basis
    - finance_review_date_basis
    - ERP_publication_date_basis

  design_requirement:
    - one company or policy scope should choose a clear rule
    - mixed hidden rules must be avoided
    - the chosen rule must be visible in policy documentation and finance review meaning

recommendation:
- choose one primary fixing rule per policy scope and avoid per-user arbitrary interpretation

# ============================================================
# 6. RATE SOURCE POLICY
# ============================================================

rate_source_policy:
- rate source must be policy-defined
- manual entry may be allowed where policy permits
- centrally managed finance rate may be allowed
- ERP-supplied rate may be allowed
- external FX benchmark may be allowed if company policy adopts it

design_requirement:
- the source meaning must be explicit in business policy
- if manual override is allowed, it must be exceptional and auditable
- app-side display should make clear whether conversion is provisional or policy-fixed

# ============================================================
# 7. REPORT TOTAL RULES
# ============================================================

report_total_rules:
- report total must be expressed in report_currency_code
- item totals may require conversion before aggregation when mixed item currencies exist
- original mixed currencies must remain visible at item level
- report total must not erase the fact that some items originated in foreign currency
- finance review must be able to see original and converted meaning where relevant

# ============================================================
# 8. MIXED CURRENCY REPORT RULES
# ============================================================

mixed_currency_report_rules:
- one report may contain multiple item currencies if policy allows
- each item must retain its own factual item currency
- aggregation into report total must use explicit conversion logic
- report total alone is insufficient for audit explanation in mixed-currency cases
- detailed review must expose which items were converted

policy_option:
- company may restrict one report to one report_currency for simplicity
- even then, item-level original currency may differ

# ============================================================
# 9. APPLICANT INPUT RULES
# ============================================================

applicant_input_rules:
- applicant enters original amount and original currency
- applicant may be allowed to enter exchange rate if policy allows
- applicant should not be forced to lose original currency meaning
- applicant UI must show when conversion is applied
- applicant must see non-ambiguous amount + currency together

# ============================================================
# 10. APPROVER RULES
# ============================================================

approver_currency_rules:
- approver reviews amount meaning, not only localized display formatting
- approver should be able to see original item currency
- approver should be able to see converted meaning where it affects decision
- approver role does not define rate policy by itself

# ============================================================
# 11. FINANCE RULES
# ============================================================

finance_currency_rules:
- finance confirms whether conversion basis matches policy
- finance may block report for missing or invalid conversion basis
- finance must be able to review original amount, original currency,
  converted amount, converted currency, and exchange rate where used
- finance review must distinguish policy-valid conversion from user draft assumption

# ============================================================
# 12. ERP HANDOFF RULES
# ============================================================

erp_handoff_currency_rules:
- ERP handoff must preserve the currency meaning required by ERP contract
- original item currency and converted values must not be conflated
- if ERP expects posting currency only, the app still must keep original facts for auditability
- ERP publication must not silently discard rate meaning used in finance approval
- idempotent repeat publication must preserve the same currency interpretation for the same request

# ============================================================
# 13. ROUNDING RULES
# ============================================================

rounding_rules:
- rounding policy must be centrally defined
- rounding must be applied consistently within a policy scope
- original amount should remain as entered unless policy requires normalization
- converted amount may be rounded according to policy
- report total rounding must be explainable from item-level converted values and policy

important_rule:
- ad hoc client-side rounding differences across devices are not allowed

# ============================================================
# 14. DISPLAY RULES
# ============================================================

display_rules:
- amount must always appear with currency context
- code or symbol display must avoid ambiguity
- original amount and converted amount should be visually distinguishable
- mixed-currency reports must make converted totals understandable
- locale formatting is presentation-only and must not change stored amount meaning

examples_of_good_visibility:
- 120.00 USD
- converted: 18,240 JPY
- report total: 25,840 JPY

# ============================================================
# 15. VALIDATION RULES
# ============================================================

validation_rules:
- currency_code is mandatory at item level
- report_currency_code is mandatory at report level
- exchange_rate is mandatory when cross-currency conversion is required by policy
- converted_amount and converted_currency_code are mandatory when converted reporting is required
- invalid or inconsistent currency combinations must block submit or finance readiness according to policy

examples_of_block_conditions:
- amount exists but currency_code missing
- converted_amount exists but converted_currency_code missing
- cross-currency report requires exchange_rate but exchange_rate missing
- report total cannot be explained from valid item data

# ============================================================
# 16. CHANGE / CORRECTION RULES
# ============================================================

change_correction_rules:
- currency facts may be corrected before locked review stages as policy allows
- after approval or finance readiness, currency-affecting corrections require explicit corrective path
- ERP pending / confirmed reports must not receive silent currency mutation
- rate changes after review must remain auditable and visible

# ============================================================
# 17. POLICY BLOCK CONDITIONS
# ============================================================

policy_block_conditions:
- unsupported currency code
- missing exchange rate where required
- inconsistent conversion basis
- mixed currency aggregation failure
- company policy forbids manual rate override
- report uses currency pattern outside allowed company scope

# ============================================================
# 18. DEVICE CONSISTENCY RULE
# ============================================================

device_consistency_rule:
- iphone, android, pc, and tablet must show the same business currency meaning
- layout may differ, but amount/currency interpretation must not differ
- no device-specific shortcut may hide original currency facts when policy requires visibility

# ============================================================
# 19. DESIGN CONSEQUENCE
# ============================================================

design_consequence:
This policy keeps multi currency operation explainable by separating:
- original item facts
- converted review meaning
- report aggregation meaning
- settlement/business completion meaning
- ERP handoff meaning

