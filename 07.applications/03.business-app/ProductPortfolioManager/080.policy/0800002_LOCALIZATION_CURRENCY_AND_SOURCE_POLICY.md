# ============================================================
# LOCALIZATION CURRENCY AND SOURCE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

localization_policy:
- user-facing fixed text should be localization-ready
- codes should carry stable meaning independent of display language

currency_policy:
- monetary values require explicit currency context
- transaction and reporting currency must be distinguishable where needed

source_policy:
- ERP-derived facts must be clearly distinguished from application judgments
- forecast-derived values must be clearly marked advisory
