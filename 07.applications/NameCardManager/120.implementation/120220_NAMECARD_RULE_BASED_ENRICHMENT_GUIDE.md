# ============================================================
# NAMECARD RULE BASED ENRICHMENT GUIDE
# ============================================================

status: canonical
layer: implementation
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Provides implementation guidance for rule-based enrichment.

implementation_rules:
- normalize department, title, and company values using reviewable rules
- preserve raw imported source values
- keep enrichment non-destructive by default
- surface next-action suggestions after enrichment

