# ============================================================
# NATION SYSTEM ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: civilization

# ============================================================
# DEFINITION
# ============================================================

Nation is the top-level governing system that controls rules,
taxation, policy, and macro-economic conditions.

# ============================================================
# RESPONSIBILITIES
# ============================================================

- manage tax policy
- activate public policy
- control government distribution
- regulate economic environment
- influence education, labor, and welfare

# ============================================================
# COMPONENTS
# ============================================================

nation:
- nation_id
- name
- government_type
- currency_id

tax_policy:
- income_tax_rate
- corporate_tax_rate
- luxury_tax_rate

policy:
- policy_id
- category
- effect_type
- value
- effective_from
- effective_to

government_grant:
- grant_id
- target_group
- amount
- currency_type
- condition

nation_score:
- economy_score
- education_score
- employment_score
- stability_score
- trust_score

# ============================================================
# RULE
# ============================================================

- nation must not directly set company product prices
- nation affects economy indirectly through tax, subsidy, and policy
- all national controls must be database-driven
- policy must support time-bounded activation

# ============================================================
# PURPOSE
# ============================================================

- create macro-level control
- connect society, economy, and education
- simulate civilization-scale governance

