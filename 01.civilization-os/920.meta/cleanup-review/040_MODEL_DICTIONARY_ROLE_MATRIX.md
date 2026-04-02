# ============================================================
# MODEL DICTIONARY ROLE MATRIX
# ============================================================

status: review
prepared_by: Zero

# ============================================================
# 1. ROLE DEFINITIONS
# ============================================================

- draft:
  - raw or first-pass imported layer
  - may contain duplicates, mixed quality, unresolved mappings
  - not final reference for active canonical use

- cleaned:
  - draft with obvious noise removed
  - structure improved, but not necessarily validated

- reclassified:
  - entries grouped into better categories
  - facility_type or semantic class refined
  - still may require city/state validation

- refined:
  - semantic structure improved
  - naming and grouping normalized
  - suitable as working canonical draft

- verified:
  - city_code / state_code / type mapping checked where possible
  - should be preferred for active dictionary reference

- full:
  - bundled integrated reference document
  - convenient for review / search / upload
  - not the editing source of truth

- index:
  - navigation layer
  - points to active source files
  - should prefer verified/refined over draft where available

# ============================================================
# 2. CURRENT DICTIONARY FAMILIES
# ============================================================

## 412 refined canonical dictionary
- 4120001_CONTINENT_CANONICAL_DICTIONARY.md
  - role: active canonical
- 4120002_FACILITY_TYPE_CANONICAL_DICTIONARY.md
  - role: active canonical
- 4120004_INFRASTRUCTURE_TYPE_CANONICAL_DICTIONARY.md
  - role: active canonical
- 4120005_WORLD_INFRASTRUCTURE_TYPE_CANONICAL_DICTIONARY.md
  - role: active canonical

## 413 foundation 7 states canonical dictionary
- 4130001_STATE_CANONICAL_DICTIONARY.md
  - role: active canonical
- 4130002_CITY_CANONICAL_DICTIONARY.md
  - role: base canonical
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
  - role: preferred active city reference

## 414 education institution canonical dictionary
- 4140001_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY.md
  - role: draft/base
- 4140002_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
  - role: preferred active reference

## 415 medical institution canonical dictionary
- 4150001_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY.md
  - role: draft/base
- 4150002_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
  - role: preferred active reference

## 416 admin port rail facility canonical dictionary
- 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT.md
  - role: legacy draft
- 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  - role: cleaned/reclassified working draft
- 4160004_ADMIN_PORT_RAIL_FACILITY_CANONICAL_VERIFIED.md
  - role: preferred active reference

## 417 public space and market facility canonical dictionary
- 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT.md
  - role: legacy draft
- 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  - role: cleaned/reclassified working draft
- 4170002_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_VERIFIED.md
  - role: preferred active reference

## 418 security and correction facility canonical dictionary
- 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT.md
  - role: legacy draft
- 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
  - role: cleaned/reclassified working draft
- 4180002_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_VERIFIED.md
  - role: preferred active reference

## 419 legal and judicial facility canonical dictionary
- 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT.md
  - role: legacy draft
- 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT_CLEANED.md
  - role: cleaned working draft
- 4190002_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_VERIFIED.md
  - role: preferred active reference

## 420 religious facility canonical dictionary
- 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT.md
  - role: legacy draft
- 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT_CLEANED.md
  - role: cleaned working draft
- 4200002_RELIGIOUS_FACILITY_CANONICAL_VERIFIED.md
  - role: preferred active reference

## 421 dictionary master index
- 4210002_CITY_CODE_LOOKUP.md
  - role: supporting lookup
- 4210003_FACILITY_AND_CITY_DICTIONARY_MASTER_INDEX_VERIFIED.md
  - role: old verified index
- 4210004_FACILITY_CITY_AND_PERSON_DICTIONARY_MASTER_INDEX_VERIFIED.md
  - role: expanded index
- 4210005_FACILITY_CITY_PERSON_AND_COMPANY_MASTER_INDEX_VERIFIED.md
  - role: expanded index
- 4210006_FACILITY_CITY_PERSON_COMPANY_AND_STATE_INSTITUTION_MASTER_INDEX_VERIFIED.md
  - role: current preferred active index

## 422 person canonical dictionary
- 4220001_PERSON_CANONICAL_DICTIONARY_DRAFT.md
  - role: raw imported draft
- 4220002_PERSON_CANONICAL_DICTIONARY_REFINED.md
  - role: preferred active reference

## 423 company canonical dictionary
- 4230001_COMPANY_CANONICAL_DICTIONARY_DRAFT.md
  - role: raw imported draft
- 4230002_COMPANY_CANONICAL_DICTIONARY_REFINED.md
  - role: preferred active reference

## 424 state institution canonical dictionary
- 4240001_STATE_INSTITUTION_CANONICAL_DICTIONARY_DRAFT.md
  - role: raw imported draft
- 4240002_STATE_INSTITUTION_CANONICAL_DICTIONARY_REFINED.md
  - role: preferred active reference

# ============================================================
# 3. FULL BUNDLES
# ============================================================

- 000_FACILITY_AND_CITY_DICTIONARY_VERIFIED_FULL.md
  - role: old bundle
- 000_FACILITY_CITY_AND_PERSON_DICTIONARY_VERIFIED_FULL.md
  - role: old bundle
- 000_FACILITY_CITY_PERSON_AND_COMPANY_DICTIONARY_VERIFIED_FULL.md
  - role: old bundle
- 000_FACILITY_CITY_PERSON_COMPANY_AND_STATE_INSTITUTION_DICTIONARY_VERIFIED_FULL.md
  - role: current preferred full bundle

# ============================================================
# 4. ACTIVE SOURCE OF TRUTH RULE
# ============================================================

Preferred order for active reference:
1. verified
2. refined
3. cleaned / reclassified
4. draft

Editing source of truth:
- individual verified/refined files
Not source of truth:
- full bundles
- old draft files when verified/refined exists

# ============================================================
# 5. CLEANUP CANDIDATES
# ============================================================

Files that can likely be archived later after confirmation:
- 4140001_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY.md
- 4150001_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY.md
- 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT.md
- 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT.md
- 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT.md
- 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT.md
- 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT.md

Intermediate working files that may remain temporarily:
- *_RECLASSIFIED.md
- *_CLEANED.md

Old bundles that can likely be archived later after confirmation:
- 000_FACILITY_AND_CITY_DICTIONARY_VERIFIED_FULL.md
- 000_FACILITY_CITY_AND_PERSON_DICTIONARY_VERIFIED_FULL.md
- 000_FACILITY_CITY_PERSON_AND_COMPANY_DICTIONARY_VERIFIED_FULL.md

# ============================================================
# 6. FINAL RECOMMENDATION
# ============================================================

- Keep verified/refined files as active editing references.
- Keep only the latest master index as active.
- Keep only the latest full bundle as active.
- Archive old drafts only after confirming no workflow still depends on them.
