# 154 CX22073JW A2Q COUNTRY/JURISDICTION INTEGRATED PHYSICAL MODEL CANONICAL

Status: CANONICAL

## 1. Purpose

This document extends the canonical A2Q concrete qualification physical model with normalized country and jurisdiction reference data.

It preserves the separation between reusable A2Q family knowledge and concrete qualification identity/version data.

## 2. Canonical semantic rule

Country and jurisdiction are distinct concepts.

- A country is a sovereign-country reference record.
- A jurisdiction is the legal, regulatory, administrative, supranational, or global scope in which qualification rules or recognition apply.
- `GLOBAL` is a jurisdiction code and must never be stored as a country.
- An authority has an explicit home country and an explicit jurisdiction.
- A qualification may relate to more than one jurisdiction.

## 3. Existing-object reuse decision

The READ ONLY audit found one jurisdiction-related reuse candidate: `cx22073jw.jurisdiction_region_reference`.

The candidate is not reused.

Reason code: `NO_ACCEPTED_COUNTRY_MASTER_PAIR_AND_GENERIC_PAIR_OWNERSHIP_REQUIRED`.

No accepted generic country master was found in the same canonical reference model. Country and jurisdiction are therefore canonicalized as one CX-owned generic pair rather than creating split ownership between a new country master and an unrelated pre-existing jurisdiction-like object.

The rejected candidate is not deleted, altered, or otherwise mutated by this decision.

## 4. Canonical physical extension

Three new tables are added:

1. `cx22073jw.cx_country`
2. `cx22073jw.cx_jurisdiction`
3. `cx22073jw.cx_qualification_jurisdiction`

The existing concrete qualification model is extended as follows:

- `cx_qualification_authority.home_country_code` references `cx_country.country_code`.
- `cx_qualification_authority.jurisdiction_code` references `cx_jurisdiction.jurisdiction_code`.
- `cx_qualification_entity.jurisdiction_code` references `cx_jurisdiction.jurisdiction_code`.

## 5. Country

`cx_country` stores normalized country identity.

Required semantics:

- `country_code`: stable CX country code
- `official_name`
- `iso_alpha2`
- `iso_alpha3`
- `active_flag`

For the first qualification wave, the required countries are JP and US.

## 6. Jurisdiction

`cx_jurisdiction` stores regulatory or applicability scope.

Supported jurisdiction types in this physical model are:

- country
- state
- prefecture
- region
- supranational
- global

`country_code` may be null for genuinely non-country jurisdictions such as GLOBAL.

`parent_jurisdiction_code` supports hierarchy.

## 7. Qualification-to-jurisdiction relation

`cx_qualification_jurisdiction` supports multi-jurisdiction qualification applicability.

Canonical applicability relation types are:

- `issued_in`
- `valid_in`
- `recognized_in`
- `regulated_in`

The first concrete qualification wave creates one explicit jurisdiction relation per qualification. Additional relations may be added only when supported by authoritative source evidence.

## 8. Integrated initial seed shape

If the canonical DDL is applied and accepted, the initial concrete qualification seed is planned as:

- country: 2
- jurisdiction: 2
- authority: 17
- qualification entity: 20
- qualification version: 20
- qualification-jurisdiction relation: 20
- qualification-knowledge relation: 0
- total: EXACT81

Knowledge relations remain deferred until official syllabus/source mapping supports the relation type.

## 9. Canonical DDL

The following DDL is the fixed canonical integrated physical extension.

```sql
-- PREAPPLY CANDIDATE ONLY / NOT EXECUTED
-- Minimal country/jurisdiction normalization extension.

CREATE TABLE cx22073jw.cx_country (
  country_code text PRIMARY KEY,
  official_name text NOT NULL,
  iso_alpha2 text NOT NULL UNIQUE,
  iso_alpha3 text NOT NULL UNIQUE,
  active_flag boolean NOT NULL DEFAULT true
);

CREATE TABLE cx22073jw.cx_jurisdiction (
  jurisdiction_code text PRIMARY KEY,
  official_name text NOT NULL,
  jurisdiction_type text NOT NULL
    CHECK (jurisdiction_type IN ('country','state','prefecture','region','supranational','global')),
  country_code text
    REFERENCES cx22073jw.cx_country(country_code),
  parent_jurisdiction_code text
    REFERENCES cx22073jw.cx_jurisdiction(jurisdiction_code),
  active_flag boolean NOT NULL DEFAULT true
);

CREATE TABLE cx22073jw.cx_qualification_jurisdiction (
  qualification_code text NOT NULL
    REFERENCES cx22073jw.cx_qualification_entity(qualification_code),
  jurisdiction_code text NOT NULL
    REFERENCES cx22073jw.cx_jurisdiction(jurisdiction_code),
  applicability_type text NOT NULL
    CHECK (applicability_type IN ('issued_in','valid_in','recognized_in','regulated_in')),
  active_flag boolean NOT NULL DEFAULT true,
  PRIMARY KEY (qualification_code,jurisdiction_code,applicability_type)
);

ALTER TABLE cx22073jw.cx_qualification_authority
  ADD COLUMN home_country_code text
    REFERENCES cx22073jw.cx_country(country_code);

ALTER TABLE cx22073jw.cx_qualification_authority
  ADD CONSTRAINT cx_qualification_authority_jurisdiction_fk
  FOREIGN KEY (jurisdiction_code)
  REFERENCES cx22073jw.cx_jurisdiction(jurisdiction_code);

ALTER TABLE cx22073jw.cx_qualification_entity
  ADD CONSTRAINT cx_qualification_entity_jurisdiction_fk
  FOREIGN KEY (jurisdiction_code)
  REFERENCES cx22073jw.cx_jurisdiction(jurisdiction_code);
```

## 10. Safety and ownership rules

- schema: `cx22073jw` only
- `public` schema: forbidden
- Robot-specific binding: forbidden
- `GLOBAL` as a country: forbidden
- qualification facts remain version-aware and source-aware under 153
- this physical extension contains no seed INSERT statements

## 11. Canonical sequence

This document occupies canonical number 154 because country/jurisdiction normalization must precede concrete qualification seed canonicalization.

The concrete qualification Seed Architecture canonical target is therefore moved from the earlier PREAPPLY placeholder 154 to:

`155_CX22073JW_A2Q_CONCRETE_QUALIFICATION_SEED_ARCHITECTURE_CANONICAL.md`

## 12. Mutation gate

This canonical write does not itself authorize DDL execution.

DDL APPLY requires a separate explicit GO after the APPLY PREAPPLY reported by this run is PASS.

## 13. Source integrity

- 153 SHA256: `4a3cc68334958d665ef48430227c93fb413d0d4f10ebff4ef797504b63067e7e`
- country/jurisdiction capability matrix SHA256: `9b5bb37c0be0d30f2c8137e5e9d9a44d993fb5964ef2d784423aa17d6ed8ccae`
- integrated architecture candidate SHA256: `f1db8f4a829426aab9cc269601c2c14cd06c02048caa84fe3fb9ac87581b2255`
- integrated row plan SHA256: `d6743ee912d967fac68044dabee0fe43698acb7c981e42ad93c1b459b55a6da2`
- fixed integrated DDL SHA256: `758f8156c14a061b71bca7340c7c209dbd419b059cc30dc68e3c62d4dc8c07db`
- integrated PREAPPLY report SHA256: `ed8887910718a8b6059cbec07c6876dbfae080cd5937ef1d0d3ffade87f812e0`

## 14. Canonical status

The country/jurisdiction integrated physical model is canonical.

DDL execution remains separately gated.
