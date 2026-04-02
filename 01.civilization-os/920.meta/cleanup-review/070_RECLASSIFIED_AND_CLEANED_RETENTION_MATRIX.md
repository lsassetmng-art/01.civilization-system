# ============================================================
# RECLASSIFIED AND CLEANED RETENTION MATRIX
# ============================================================

status: review
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This review decides whether cleaned / reclassified intermediate files
should remain active, remain temporarily, or be archived later.

# ============================================================
# 2. DECISION RULE
# ============================================================

- verified:
  - highest priority active reference
- refined:
  - active reference when verified does not exist
- cleaned / reclassified:
  - keep temporarily if they still provide transformation trace
  - archive later if verified/refined fully supersedes them
- raw draft:
  - archive when successor exists

# ============================================================
# 3. FILE-BY-FILE MATRIX
# ============================================================

## 416 admin port rail
- file: 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  current_role: reclassified working layer
  successor: 4160004_ADMIN_PORT_RAIL_FACILITY_CANONICAL_VERIFIED.md
  current_decision: keep_temporarily
  future_decision: archive_candidate
  reason: useful as transformation trace from raw draft to verified structure

## 417 public space and market
- file: 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  current_role: reclassified working layer
  successor: 4170002_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_VERIFIED.md
  current_decision: keep_temporarily
  future_decision: archive_candidate
  reason: useful as transformation trace from raw draft to verified structure

## 418 security and correction
- file: 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  current_role: reclassified working layer
  successor: 4180002_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_VERIFIED.md
  current_decision: keep_temporarily
  future_decision: archive_candidate
  reason: useful as transformation trace from raw draft to verified structure

## 419 legal and judicial
- file: 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT_CLEANED.md
  current_role: cleaned working layer
  successor: 4190002_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_VERIFIED.md
  current_decision: keep_temporarily
  future_decision: archive_candidate
  reason: cleaned layer still documents removal of obvious noise before verification

## 420 religious
- file: 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT_CLEANED.md
  current_role: cleaned working layer
  successor: 4200002_RELIGIOUS_FACILITY_CANONICAL_VERIFIED.md
  current_decision: keep_temporarily
  future_decision: archive_candidate
  reason: cleaned layer still documents removal of obvious non-facility statements

## 422 person
- file: 4220002_PERSON_CANONICAL_DICTIONARY_REFINED.md
  current_role: refined active reference
  successor: none
  current_decision: keep_active
  future_decision: keep_active_until_verified_exists
  reason: no verified successor exists

## 423 company
- file: 4230002_COMPANY_CANONICAL_DICTIONARY_REFINED.md
  current_role: refined active reference
  successor: none
  current_decision: keep_active
  future_decision: keep_active_until_verified_exists
  reason: no verified successor exists

## 424 state institution
- file: 4240002_STATE_INSTITUTION_CANONICAL_DICTIONARY_REFINED.md
  current_role: refined active reference
  successor: none
  current_decision: keep_active
  future_decision: keep_active_until_verified_exists
  reason: no verified successor exists

# ============================================================
# 4. CURRENT ACTIVE SOURCE OF TRUTH
# ============================================================

Active verified references:
- 4140002_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
- 4150002_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
- 4160004_ADMIN_PORT_RAIL_FACILITY_CANONICAL_VERIFIED.md
- 4170002_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_VERIFIED.md
- 4180002_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_VERIFIED.md
- 4190002_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_VERIFIED.md
- 4200002_RELIGIOUS_FACILITY_CANONICAL_VERIFIED.md

Active refined references:
- 4220002_PERSON_CANONICAL_DICTIONARY_REFINED.md
- 4230002_COMPANY_CANONICAL_DICTIONARY_REFINED.md
- 4240002_STATE_INSTITUTION_CANONICAL_DICTIONARY_REFINED.md

Temporarily retained intermediate references:
- 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT_CLEANED.md
- 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT_CLEANED.md

# ============================================================
# 5. FINAL RECOMMENDATION
# ============================================================

- Do not archive cleaned / reclassified files yet.
- Keep them as short-term transformation trace.
- Archive them only after:
  - person/company/state institution get verified successors
  - dictionary maintenance stabilizes
  - no workflow still references cleaned/reclassified layers
