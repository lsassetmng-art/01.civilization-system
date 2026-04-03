# ============================================================
# NATION BUILDER VALIDATION POLICY
# ============================================================

status: canonical
layer: policy
scope: nation-builder
component: nation-validation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official validation policy
for Nation Builder.

Nation Builder is a staged builder.

A nation must pass through:

- draft
- validation
- approval
- publication
- activation

Validation codes are the authoritative rule set
used to determine whether a nation draft:

- can continue editing
- can proceed to approval
- can be published
- can be activated

This policy is fail-closed.

If blocking conditions remain unresolved,
the nation must not proceed to the next stage.


# ============================================================
# 2. VALIDATION PRINCIPLES
# ============================================================

Validation must follow these principles:

- explicit over implicit
- deterministic over subjective
- structured classification over free-form review
- fail-closed for unresolved critical issues
- warning separation from blocking error
- stage-aware validation

Validation output must be machine-readable
and human-readable.

Each validation result must contain:

- code
- severity
- category
- builder_stage
- message
- target_path
- trigger_condition
- recommended_fix


# ============================================================
# 3. SEVERITY MODEL
# ============================================================

Three severity levels are official.

## 3-1. ERR
Code prefix:
- NB-ERR-xxxx

Meaning:
- blocking issue
- next stage transition prohibited

Effect:
- validation fails
- publish prohibited
- activation prohibited
- approval request may be prohibited depending on stage rules

## 3-2. WARN
Code prefix:
- NB-WARN-xxxx

Meaning:
- non-blocking issue
- builder may proceed
- quality, completeness, balance, or recommended structure is insufficient

Effect:
- validation can pass with warnings
- approval reviewer may still reject by policy
- dashboard should surface warnings clearly

## 3-3. INFO
Code prefix:
- NB-INFO-xxxx

Meaning:
- supplementary notice
- not a defect
- used for visibility, optimization, or optional improvement hints

Effect:
- no blocking effect


# ============================================================
# 4. STAGE MODEL
# ============================================================

Validation applies to these stages.

- draft
- validation
- approval
- publication
- activation

## 4-1. draft stage
Draft-stage validation may run continuously.

Purpose:
- immediate feedback
- structural completeness guidance
- editor assistance

## 4-2. validation stage
Validation-stage checks determine whether
the nation can request approval.

## 4-3. approval stage
Approval-stage checks confirm that
reviewable state is complete and coherent.

## 4-4. publication stage
Publication-stage checks confirm that
the nation can be published safely.

## 4-5. activation stage
Activation-stage checks confirm that
the nation can become live and operative.


# ============================================================
# 5. CATEGORY MODEL
# ============================================================

Validation categories are officially grouped as follows.

- 01xx identity / template
- 02xx governance / authority
- 03xx territory / city
- 04xx population / currency
- 05xx regime bundle
- 06xx zoning / market tier
- 07xx facility / infrastructure
- 08xx culture / service / holiday
- 09xx publication / activation


# ============================================================
# 6. RESULT STRUCTURE
# ============================================================

Each validation result should be represented
with the following logical fields.

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

Recommended logical example:

code:
NB-ERR-0504

severity:
ERR

category:
regime_bundle

builder_stage:
validation

title:
zoning_bundle missing

message:
Required zoning bundle is not configured.

target_path:
regime_bundle.zoning_bundle

trigger_condition:
always_mandatory bundle unresolved

blocking_effect:
cannot proceed to approval

recommended_fix:
create and attach a valid zoning bundle


# ============================================================
# 7. BLOCKING RULES
# ============================================================

The following principles are mandatory.

## 7-1. Mandatory bundle rule
If an always mandatory bundle is missing,
an ERR must be emitted.

## 7-2. Unresolved reference rule
If a required referenced object
cannot be resolved,
an ERR must be emitted.

Examples:
- capital city unresolved
- market tier rank duplicated with conflict
- facility placement references missing facility function

## 7-3. Policy contradiction rule
If nation configuration produces
a direct contradiction,
an ERR must be emitted.

Examples:
- zone allows company type but denies all compatible site types
- listing style enabled with zero market tiers
- banking regime required by configuration but missing

## 7-4. Activation safety rule
Activation must fail if critical operational bundles
remain unresolved.

Examples:
- no currency bundle
- no governance bundle
- no zoning bundle
- no notification profile bundle


# ============================================================
# 8. WARNING RULES
# ============================================================

Warnings are used for incompleteness,
balance concerns, and quality gaps.

Typical warning situations:

- recommended bundle missing
- non-critical city role not set
- mixed use zone not configured
- market style is valid but unusually narrow
- public service baseline is minimal but not invalid
- holiday profile is sparse but acceptable


# ============================================================
# 9. INFO RULES
# ============================================================

Info is used for advisory output.

Examples:

- no hybrid market selected
- no secondary capital configured
- no exhibition event zone configured
- no religion authority bundle because religion is not state-linked


# ============================================================
# 10. OFFICIAL VALIDATION CODE TABLE
# ============================================================

# ------------------------------------------------------------
# 10-1. 01xx identity / template
# ------------------------------------------------------------

NB-ERR-0101
- formal_name missing
- category: identity
- stage: validation
- effect: blocking

NB-ERR-0102
- nation_type missing
- category: identity
- stage: validation
- effect: blocking

NB-ERR-0103
- template selected but template binding broken
- category: template
- stage: validation
- effect: blocking

NB-WARN-0111
- flag not configured
- category: symbolic_identity
- stage: draft
- effect: warning

NB-WARN-0112
- emblem not configured
- category: symbolic_identity
- stage: draft
- effect: warning

NB-WARN-0113
- national colors not configured
- category: symbolic_identity
- stage: draft
- effect: warning

NB-INFO-0191
- map color auto-assigned
- category: symbolic_identity
- stage: draft
- effect: info


# ------------------------------------------------------------
# 10-2. 02xx governance / authority
# ------------------------------------------------------------

NB-ERR-0201
- governance profile missing
- category: governance
- stage: validation
- effect: blocking

NB-ERR-0202
- governance style invalid
- category: governance
- stage: validation
- effect: blocking

NB-ERR-0203
- authority seat bundle required but missing
- category: authority
- stage: validation
- effect: blocking

NB-WARN-0211
- authority seat allocation incomplete
- category: authority
- stage: draft
- effect: warning

NB-WARN-0212
- secondary authority role undefined
- category: authority
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-3. 03xx territory / city
# ------------------------------------------------------------

NB-ERR-0301
- territory bundle missing
- category: territory
- stage: validation
- effect: blocking

NB-ERR-0302
- capital city unresolved
- category: city
- stage: validation
- effect: blocking

NB-ERR-0303
- city role references unknown city
- category: city
- stage: validation
- effect: blocking

NB-WARN-0311
- sub capital not configured
- category: city
- stage: draft
- effect: warning

NB-WARN-0312
- industrial core city not set
- category: city
- stage: draft
- effect: warning

NB-WARN-0313
- logistics core city not set
- category: city
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-4. 04xx population / currency
# ------------------------------------------------------------

NB-ERR-0401
- population bundle missing
- category: population
- stage: validation
- effect: blocking

NB-ERR-0402
- currency bundle missing
- category: currency
- stage: validation
- effect: blocking

NB-ERR-0403
- invalid population composition total
- category: population
- stage: validation
- effect: blocking

NB-WARN-0411
- population profile lacks workforce balance detail
- category: population
- stage: draft
- effect: warning

NB-WARN-0412
- currency display profile not configured
- category: currency
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-5. 05xx regime bundle
# ------------------------------------------------------------

NB-ERR-0501
- company_regime_bundle missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0502
- property_regime_bundle missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0503
- tax_regime_bundle missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0504
- zoning_bundle missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0505
- notification_profile_bundle missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0506
- banking_regime_bundle required but missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-ERR-0507
- securities_regime_bundle required but missing
- category: regime_bundle
- stage: validation
- effect: blocking

NB-WARN-0511
- welfare_regime_bundle missing
- category: regime_bundle
- stage: draft
- effect: warning

NB-WARN-0512
- education_regime_bundle missing
- category: regime_bundle
- stage: draft
- effect: warning

NB-WARN-0513
- military_regime_bundle missing
- category: regime_bundle
- stage: draft
- effect: warning

NB-WARN-0514
- holiday_event_bundle missing
- category: regime_bundle
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-6. 06xx zoning / market tier
# ------------------------------------------------------------

NB-ERR-0601
- no zone configured
- category: zoning
- stage: validation
- effect: blocking

NB-ERR-0602
- zone type duplicated illegally
- category: zoning
- stage: validation
- effect: blocking

NB-ERR-0603
- zone compatibility table invalid
- category: zoning
- stage: validation
- effect: blocking

NB-ERR-0604
- listing style enabled but market tier set missing
- category: market_tier
- stage: validation
- effect: blocking

NB-ERR-0605
- market tier threshold rules missing
- category: market_tier
- stage: validation
- effect: blocking

NB-ERR-0606
- market tier duplicate rank
- category: market_tier
- stage: validation
- effect: blocking

NB-WARN-0611
- mixed_use_zone not configured
- category: zoning
- stage: draft
- effect: warning

NB-WARN-0612
- arts_zone not configured
- category: zoning
- stage: draft
- effect: warning

NB-WARN-0613
- listing market eligibility narrow
- category: market_tier
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-7. 07xx facility / infrastructure
# ------------------------------------------------------------

NB-ERR-0701
- facility placement bundle required but missing
- category: facility
- stage: validation
- effect: blocking

NB-ERR-0702
- infrastructure placement bundle required but missing
- category: infrastructure
- stage: validation
- effect: blocking

NB-ERR-0703
- facility placement references unknown facility function
- category: facility
- stage: validation
- effect: blocking

NB-ERR-0704
- infrastructure topology contains unresolved node
- category: infrastructure
- stage: validation
- effect: blocking

NB-ERR-0705
- facility design bonus exceeds allowed ratio
- category: facility
- stage: validation
- effect: blocking

NB-WARN-0711
- capital required facility missing
- category: facility
- stage: draft
- effect: warning

NB-WARN-0712
- logistics infrastructure sparse
- category: infrastructure
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-8. 08xx culture / service / holiday
# ------------------------------------------------------------

NB-ERR-0801
- public_service_baseline_bundle missing
- category: public_service
- stage: validation
- effect: blocking

NB-ERR-0802
- culture profile structurally invalid
- category: culture
- stage: validation
- effect: blocking

NB-ERR-0803
- religion authority bundle required but missing
- category: religion
- stage: validation
- effect: blocking

NB-WARN-0811
- public service baseline thin
- category: public_service
- stage: draft
- effect: warning

NB-WARN-0812
- holiday profile minimal
- category: holiday
- stage: draft
- effect: warning

NB-WARN-0813
- culture tags missing
- category: culture
- stage: draft
- effect: warning


# ------------------------------------------------------------
# 10-9. 09xx publication / activation
# ------------------------------------------------------------

NB-ERR-0901
- validation not passed
- category: publication
- stage: publication
- effect: blocking

NB-ERR-0902
- approval not completed
- category: publication
- stage: publication
- effect: blocking

NB-ERR-0903
- publication state inconsistent
- category: publication
- stage: publication
- effect: blocking

NB-ERR-0904
- activation prerequisites unresolved
- category: activation
- stage: activation
- effect: blocking

NB-WARN-0911
- publish with warnings
- category: publication
- stage: publication
- effect: warning

NB-INFO-0991
- nation activated with optional bundles omitted
- category: activation
- stage: activation
- effect: info


# ============================================================
# 11. STAGE GATE RULES
# ============================================================

## 11-1. To request approval
The following must have no ERR:

- identity
- territory
- population
- currency
- governance
- mandatory regime bundles
- zoning baseline

## 11-2. To publish
The following must have no ERR:

- validation stage passed
- approval completed
- publication state consistent

## 11-3. To activate
The following must have no ERR:

- governance operational
- currency operational
- zoning operational
- notification profile operational
- required facility / infrastructure bundles resolved if nation profile requires them


# ============================================================
# 12. EXTENSIBILITY RULE
# ============================================================

New validation codes may be added only if:

- category assignment is explicit
- severity is explicit
- stage is explicit
- blocking semantics are explicit
- duplicate semantic overlap is avoided

Existing code meaning must remain stable once canonicalized.


# ============================================================
# 13. FINAL RULE
# ============================================================

Nation Builder validation is authoritative.

No nation may bypass blocking validation errors
through UI convenience, reviewer preference,
or partial draft interpretation.

If uncertainty remains,
the system must fail closed.
