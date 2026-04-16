# ============================================================
# ERP REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Consume ERP truth without shifting ERP authority.

reference_objects:
- product identity
- category / brand / lifecycle context
- sales aggregates
- cost and gross profit indicators
- inventory indicators

integration_rules:
- ERP facts are read-oriented here
- metric snapshots may be materialized locally for judgment reproducibility
- source timestamps must be preserved
