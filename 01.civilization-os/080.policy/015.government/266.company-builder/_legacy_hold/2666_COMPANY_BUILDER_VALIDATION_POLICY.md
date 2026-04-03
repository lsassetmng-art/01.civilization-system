# ============================================================
# COMPANY BUILDER VALIDATION POLICY
# ============================================================

status: canonical
layer: policy
scope: company-builder
component: company-builder-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official validation policy
for Company Builder.

Company Builder validation determines whether
a company draft may proceed toward establishment
and whether later readiness states are structurally valid.

This policy is fail-closed.

If critical structural conditions remain unresolved,
the company must not proceed.


# ============================================================
# 2. VALIDATION PRINCIPLES
# ============================================================

Validation must follow these principles.

- explicit over implicit
- deterministic over subjective
- structural checks before convenience
- fail-closed on unresolved blocking issues
- staged validation awareness
- company type and nation rule consistency
- intermediary-safe asset operation rules

Validation output must be machine-readable
and human-readable.


# ============================================================
# 3. SEVERITY MODEL
# ============================================================

Official severities:

## ERR
Prefix:
- CB-ERR-xxxx

Meaning:
- blocking issue
- establishment or stage progression prohibited

## WARN
Prefix:
- CB-WARN-xxxx

Meaning:
- non-blocking but incomplete, weak, or suboptimal state

## INFO
Prefix:
- CB-INFO-xxxx

Meaning:
- supplementary visibility signal
- no blocking effect


# ============================================================
# 4. STAGE MODEL
# ============================================================

Validation applies to these stages:

- company_draft
- validation
- approval_if_needed
- establish
- operate
- listing_readiness
- listing_application


# ============================================================
# 5. CATEGORY MODEL
# ============================================================

Validation categories are grouped as follows.

- 01xx company identity / type
- 02xx nation binding / regime
- 03xx product scope / asset operation
- 04xx site / property / tenant
- 05xx public profile / management
- 06xx evaluation / analytics
- 07xx listing readiness / establish


# ============================================================
# 6. RESULT STRUCTURE
# ============================================================

Each validation result should contain:

- code
- severity
- category
- builder_stage
- title
- message
- target_path
- trigger_condition
- blocking_effect
- recommended_fix


# ============================================================
# 7. BLOCKING RULES
# ============================================================

The following principles are mandatory.

## 7-1. company type rule
A company draft must have a valid company_type
before establishment.

## 7-2. nation binding rule
A company draft must bind to valid nation context
before establishment.

## 7-3. product scope rule
A company must not establish with unresolved product scope.

## 7-4. site compatibility rule
A site must not open if:
- company type is disallowed in the zone
- site type is disallowed in the zone
- occupancy relation is structurally invalid

## 7-5. intermediary asset rule
A company must not be granted direct equity execution.

Equity execution must route through securities_firm.
Real-estate transfer mediation must route through system real estate company.

## 7-6. system-limited rule
A system-limited company type must not be established
through standard user flow.

## 7-7. evaluation initialization rule
A company must not enter established state
without evaluation initialization.

## 7-8. listing readiness safety rule
A company may not enter listing_application stage
if blocked listing reasons remain unresolved.


# ============================================================
# 8. WARNING RULES
# ============================================================

Warnings should be used for:
- incomplete public profile
- weak analytics initialization
- minimal site plan
- asset operation enabled but profile incomplete
- listing readiness partially initialized
- symbolic profile sparse but valid


# ============================================================
# 9. INFO RULES
# ============================================================

Info may be used for:
- no branch configured
- no asset operation enabled
- listing not targeted yet
- public profile still internal-only
- analytics profile minimal but valid


# ============================================================
# 10. OFFICIAL VALIDATION CODE TABLE
# ============================================================

# ------------------------------------------------------------
# 10-1. 01xx company identity / type
# ------------------------------------------------------------

CB-ERR-0101
- company_type missing
- category: company_identity
- stage: validation
- effect: blocking

CB-ERR-0102
- company_name missing
- category: company_identity
- stage: validation
- effect: blocking

CB-ERR-0103
- invalid company_type
- category: company_type
- stage: validation
- effect: blocking

CB-ERR-0104
- system-limited company cannot be established by user flow
- category: company_type
- stage: establish
- effect: blocking

CB-WARN-0111
- company_summary missing
- category: company_identity
- stage: company_draft
- effect: warning

CB-WARN-0112
- company_mission missing
- category: company_identity
- stage: company_draft
- effect: warning

CB-INFO-0191
- company_short_name auto-derived
- category: company_identity
- stage: company_draft
- effect: info


# ------------------------------------------------------------
# 10-2. 02xx nation binding / regime
# ------------------------------------------------------------

CB-ERR-0201
- nation binding missing
- category: nation_binding
- stage: validation
- effect: blocking

CB-ERR-0202
- applicable company regime missing
- category: regime_binding
- stage: validation
- effect: blocking

CB-ERR-0203
- applicable property regime missing
- category: regime_binding
- stage: validation
- effect: blocking

CB-ERR-0204
- applicable tax regime missing
- category: regime_binding
- stage: validation
- effect: blocking

CB-WARN-0211
- listing system binding unresolved
- category: regime_binding
- stage: company_draft
- effect: warning


# ------------------------------------------------------------
# 10-3. 03xx product scope / asset operation
# ------------------------------------------------------------

CB-ERR-0301
- product scope unresolved
- category: product_scope
- stage: validation
- effect: blocking

CB-ERR-0302
- allowed_sellable_product_types empty for active company type
- category: product_scope
- stage: validation
- effect: blocking

CB-ERR-0303
- disallowed and allowed product scope overlap invalidly
- category: product_scope
- stage: validation
- effect: blocking

CB-ERR-0304
- direct equity execution not allowed
- category: asset_operation
- stage: validation
- effect: blocking

CB-ERR-0305
- securities firm binding missing for enabled equity operation
- category: asset_operation
- stage: validation
- effect: blocking

CB-ERR-0306
- real estate intermediary path missing for real-estate operation
- category: asset_operation
- stage: validation
- effect: blocking

CB-WARN-0311
- asset operation enabled but policy incomplete
- category: asset_operation
- stage: company_draft
- effect: warning

CB-WARN-0312
- distribution capability minimal
- category: product_scope
- stage: company_draft
- effect: warning


# ------------------------------------------------------------
# 10-4. 04xx site / property / tenant
# ------------------------------------------------------------

CB-ERR-0401
- site plan missing
- category: site_plan
- stage: validation
- effect: blocking

CB-ERR-0402
- headquarters missing
- category: site_plan
- stage: establish
- effect: blocking

CB-ERR-0403
- zone binding missing for site
- category: site_plan
- stage: validation
- effect: blocking

CB-ERR-0404
- zone compatibility failed
- category: site_plan
- stage: establish
- effect: blocking

CB-ERR-0405
- occupancy mode invalid
- category: property_tenant
- stage: validation
- effect: blocking

CB-ERR-0406
- tenant mode without tenant_unit_ref
- category: property_tenant
- stage: validation
- effect: blocking

CB-ERR-0407
- owned mode without property_ref
- category: property_tenant
- stage: validation
- effect: blocking

CB-WARN-0411
- branch not configured
- category: site_plan
- stage: company_draft
- effect: warning

CB-WARN-0412
- public visibility missing for site
- category: site_plan
- stage: company_draft
- effect: warning


# ------------------------------------------------------------
# 10-5. 05xx public profile / management
# ------------------------------------------------------------

CB-ERR-0501
- management baseline missing
- category: management
- stage: validation
- effect: blocking

CB-WARN-0502
- public profile incomplete
- category: public_profile
- stage: company_draft
- effect: warning

CB-WARN-0503
- symbolic profile incomplete
- category: symbolic_profile
- stage: company_draft
- effect: warning

CB-WARN-0504
- analytics disabled or minimal
- category: management
- stage: company_draft
- effect: warning


# ------------------------------------------------------------
# 10-6. 06xx evaluation / analytics
# ------------------------------------------------------------

CB-ERR-0601
- initial evaluation missing
- category: evaluation
- stage: establish
- effect: blocking

CB-ERR-0602
- current evaluation missing
- category: evaluation
- stage: establish
- effect: blocking

CB-WARN-0603
- analytics profile minimal
- category: analytics
- stage: company_draft
- effect: warning

CB-WARN-0604
- evaluation profile sparse
- category: evaluation
- stage: company_draft
- effect: warning


# ------------------------------------------------------------
# 10-7. 07xx listing readiness / establish
# ------------------------------------------------------------

CB-ERR-0701
- establish requested before validation pass
- category: establish
- stage: establish
- effect: blocking

CB-ERR-0702
- listing readiness missing for listing-tracked company
- category: listing_readiness
- stage: listing_readiness
- effect: blocking

CB-ERR-0703
- blocked listing reason unresolved
- category: listing_readiness
- stage: listing_application
- effect: blocking

CB-ERR-0704
- base non-listable company entered listing application flow
- category: listing_readiness
- stage: listing_application
- effect: blocking

CB-WARN-0708
- listing readiness not initialized
- category: listing_readiness
- stage: company_draft
- effect: warning

CB-INFO-0791
- company is structurally non-listable
- category: listing_readiness
- stage: company_draft
- effect: info


# ============================================================
# 11. STAGE GATE RULES
# ============================================================

## 11-1. To establish
The following must have no ERR:
- company identity
- company type
- nation binding
- regime binding
- product scope
- headquarters
- zone compatibility
- management baseline
- initial evaluation
- current evaluation

## 11-2. To operate with asset strategy
The following must have no ERR:
- asset operation policy valid
- securities_firm binding for equity operation
- real-estate intermediary path for property operation

## 11-3. To enter listing application
The following must have no ERR:
- base listing eligibility true
- blocked listing reason unresolved = false
- listing readiness present
- required readiness axes not blocking


# ============================================================
# 12. EXTENSIBILITY RULE
# ============================================================

New validation codes may be added only if:
- category is explicit
- stage is explicit
- blocking effect is explicit
- semantic duplication is avoided


# ============================================================
# 13. FINAL RULE
# ============================================================

Company Builder validation is authoritative.

No company may be established,
or enter listing application,
while blocking validation conditions remain unresolved.
