# ============================================================
# NAMECARD DUPLICATE REVIEW POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy for duplicate candidate review.

rules:
- duplicate candidates are reviewable suggestions
- automatic merge is not the default
- user review is required before destructive merge-like actions
- company-level grouping must not silently rewrite person identity

