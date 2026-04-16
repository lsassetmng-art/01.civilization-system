# ============================================================
# ESTIMATE CREATOR MODEL OVERVIEW
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. MODEL GROUPS
# ============================================================

EstimateCreator canonical model is grouped into:

- estimate core
- memo
- sharing
- sync
- ERP publication
- audit/history
- inventory reference
- premium feature

# ============================================================
# 2. PRIMARY MODEL RULE
# ============================================================

Estimate record is the central business object.

Other objects must attach to estimate-centric or app-scoped workflows
without breaking auditability and authority boundaries.

# ============================================================
# 3. MODEL TRUTH POSITION
# ============================================================

EstimateCreator models preserve BusinessOS-side operational truth
for drafting, sharing state, local workflow, and publication preparation.

They do not replace ERP final authoritative truth.


# ============================================================
# 4. LAUNCH CONTEXT MODEL GROUP
# ============================================================

EstimateCreator model also includes launch-context support objects
for dual-entry operation.

Representative launch-related objects include:

- estimate_launch_context
- estimate_deeplink_context
- estimate_source_app_record

These objects describe invocation context,
not business authority by themselves.


# ============================================================
# 5. BILLING AND ENTITLEMENT MODEL GROUP
# ============================================================

EstimateCreator model includes premium entitlement support
for premium-gated business features.

Primary related objects include:

- estimate_premium_feature_state

This model group controls premium-only capability access
such as:

- structured meeting memo
- QA management
- estimate templates


# ============================================================
# 6. CUSTOMER DELIVERY AND LOCALE MODEL GROUP
# ============================================================

EstimateCreator model additionally includes
customer delivery,
locale,
currency-display,
and template-variant support.

Representative objects include:

- estimate_delivery_record
- estimate_share_link_record
- estimate_open_log_record
- estimate_customer_response_record
- estimate_template_locale_variant
- estimate_template_industry_category
- estimate_proposal_summary_template
- customer_preferred_locale_record
- customer_preferred_currency_record

