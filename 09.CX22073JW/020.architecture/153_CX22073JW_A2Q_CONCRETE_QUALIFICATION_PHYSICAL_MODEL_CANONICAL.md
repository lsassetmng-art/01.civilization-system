# 153 CX22073JW A2Q CONCRETE QUALIFICATION PHYSICAL MODEL CANONICAL

Status: CANONICAL

## 1. Purpose

This document defines the canonical physical model for concrete A2Q qualification entities and their versioned official facts.

It extends the A2 family knowledge architecture defined by 152 without merging concrete qualifications into the A2Q family seed.

## 2. Separation from the A2Q family layer

The A2Q family layer and the concrete qualification layer are distinct.

- A2Q family layer stores reusable qualification-family knowledge.
- Concrete qualification layer stores identifiable qualifications, issuing authorities, jurisdiction, versions or syllabus generations, official sources, verification state, and qualification-specific current rules.
- Concrete qualification rows are not part of the A2Q EXACT820 family seed.
- Reusable canonical knowledge is linked rather than duplicated.

## 3. Why an extension is required

The READ ONLY physical-mapping audit found no existing complete physical home for concrete qualifications.

The highest related existing object was `cx22073jw.vw_brain_detail_expansion_unit_v1`, but the audit identified missing core semantics including:

- issuer / authority
- jurisdiction
- version / syllabus generation
- official source
- verification

Therefore the canonical strategy is a minimal normalized extension.

## 4. Canonical physical objects

Exactly four new tables are defined by this physical model:

1. `cx22073jw.cx_qualification_authority`
2. `cx22073jw.cx_qualification_entity`
3. `cx22073jw.cx_qualification_version`
4. `cx22073jw.cx_qualification_knowledge_relation`

The model also defines four supporting indexes.

## 5. Object responsibilities

### 5.1 cx_qualification_authority

Stores the issuing or governing authority and its jurisdiction.

Canonical responsibilities:

- stable authority identity
- official authority name
- jurisdiction code
- optional official website
- active lifecycle state

### 5.2 cx_qualification_entity

Stores the stable identity of a concrete qualification independently from changing versions or syllabi.

Canonical responsibilities:

- stable `qualification_code`
- `official_name`
- issuing `authority_code`
- `jurisdiction_code`
- `qualification_type`
- relation to one A2Q family through `family_policy_code`
- active lifecycle state

`family_policy_code` references `cx_subject_read_depth_axis_policy(policy_code)`.

### 5.3 cx_qualification_version

Stores versioned and time-sensitive official facts for a concrete qualification.

Canonical responsibilities:

- `qualification_version_code`
- `qualification_code`
- `version_label`
- optional `syllabus_generation`
- `effective_from` / `effective_to`
- mandatory `official_source_url`
- mandatory `verification_date`
- `freshness_state`
- version-scoped eligibility or prerequisite requirements
- version-scoped assessment structure
- version-scoped renewal or expiry rules
- optional source notes
- active lifecycle state

The accepted freshness states are:

- `current`
- `review_due`
- `superseded`
- `unknown`

Eligibility, assessment structure, and renewal/expiry rules are stored as JSONB because their structures vary materially across qualification systems and jurisdictions.

### 5.4 cx_qualification_knowledge_relation

Links a concrete qualification version to reusable CX canonical knowledge.

Accepted relation types are:

- `prerequisite`
- `assessed`
- `recommended`
- `reference`

The relation stores `canonical_topic_code` without a database foreign key to a single topic table because the accepted CX knowledge architecture currently expresses a canonical topic across four surfaces rather than through one authoritative topic identity table.

Integrity of `canonical_topic_code` must therefore be enforced by seed PREAPPLY and post-apply acceptance until a later canonical architecture introduces a single authoritative topic identity object.

## 6. Canonical DDL

The following DDL is the fixed canonical candidate for the physical model.

```sql
-- CX A2Q Concrete Qualification minimal DDL candidate
-- PREAPPLY ARTIFACT ONLY
-- NOT EXECUTED
-- NO DATA SEED
-- Concrete qualification facts are version-aware and source-aware.

CREATE TABLE cx22073jw.cx_qualification_authority (
  authority_code text PRIMARY KEY,
  official_name text NOT NULL,
  jurisdiction_code text NOT NULL,
  official_website_url text,
  active_flag boolean NOT NULL DEFAULT true
);

CREATE TABLE cx22073jw.cx_qualification_entity (
  qualification_code text PRIMARY KEY,
  official_name text NOT NULL,
  authority_code text NOT NULL
    REFERENCES cx22073jw.cx_qualification_authority(authority_code),
  jurisdiction_code text NOT NULL,
  qualification_type text NOT NULL,
  family_policy_code text NOT NULL
    REFERENCES cx22073jw.cx_subject_read_depth_axis_policy(policy_code),
  active_flag boolean NOT NULL DEFAULT true
);

CREATE TABLE cx22073jw.cx_qualification_version (
  qualification_version_code text PRIMARY KEY,
  qualification_code text NOT NULL
    REFERENCES cx22073jw.cx_qualification_entity(qualification_code),
  version_label text NOT NULL,
  syllabus_generation text,
  effective_from date,
  effective_to date,
  official_source_url text NOT NULL,
  verification_date date NOT NULL,
  freshness_state text NOT NULL
    CHECK (freshness_state IN ('current','review_due','superseded','unknown')),
  eligibility_requirements jsonb NOT NULL DEFAULT '{}'::jsonb,
  assessment_structure jsonb NOT NULL DEFAULT '{}'::jsonb,
  renewal_expiry_rules jsonb NOT NULL DEFAULT '{}'::jsonb,
  source_notes text,
  active_flag boolean NOT NULL DEFAULT true,
  UNIQUE (qualification_code,version_label),
  CHECK (effective_to IS NULL OR effective_from IS NULL OR effective_to >= effective_from)
);

CREATE TABLE cx22073jw.cx_qualification_knowledge_relation (
  qualification_version_code text NOT NULL
    REFERENCES cx22073jw.cx_qualification_version(qualification_version_code),
  canonical_topic_code text NOT NULL,
  relation_type text NOT NULL
    CHECK (relation_type IN ('prerequisite','assessed','recommended','reference')),
  active_flag boolean NOT NULL DEFAULT true,
  PRIMARY KEY (qualification_version_code,canonical_topic_code,relation_type)
);

CREATE INDEX cx_qualification_entity_family_policy_idx
  ON cx22073jw.cx_qualification_entity(family_policy_code);

CREATE INDEX cx_qualification_version_qualification_idx
  ON cx22073jw.cx_qualification_version(qualification_code);

CREATE INDEX cx_qualification_version_verification_idx
  ON cx22073jw.cx_qualification_version(verification_date);

CREATE INDEX cx_qualification_knowledge_topic_idx
  ON cx22073jw.cx_qualification_knowledge_relation(canonical_topic_code);
```

## 7. Source and verification governance

Concrete qualification current facts are not considered canonical merely because they exist in a row.

Current or changing qualification facts must be traceable to an official source and carry a verification date.

This includes, where applicable:

- eligibility requirements
- prerequisites
- syllabus generation
- examination structure
- fees
- examination schedules
- pass criteria
- renewal requirements
- expiry rules
- professional or legal effects

Jurisdiction and issuing authority must remain explicit.

## 8. Robot neutrality

The concrete qualification model remains Robot-neutral.

It must not encode Robot model, series, persona, job assignment, Robot-specific capability, or Robot-specific permission.

AIWorkerOS remains responsible for selecting qualification knowledge, role, scope, read depth, and expression.

## 9. Schema rules

- schema: `cx22073jw` only
- `public` schema: forbidden
- new tables: exactly 4
- supporting indexes: exactly 4
- destructive DDL in this model: none
- data mutation in this model: none

## 10. Mutation gate

This canonical document does not itself authorize database DDL execution.

Before applying the canonical DDL:

1. revalidate all fixed artifact hashes;
2. confirm all four target table names are still free;
3. confirm the referenced A2Q family policy key remains unique;
4. perform transactional or equivalent safe DDL PREAPPLY checks;
5. require a separate explicit DB DDL APPLY GO.

No concrete qualification data seed may begin until the physical DDL is applied and accepted.

## 11. Source integrity

- 152 canonical SHA256: `5cea3bb0bd1a84f48435e8f29e19013d0a1204dfe0a50cf153289077e25b9a2e`
- fixed DDL candidate SHA256: `5ef1c7277d500f5c5878f1d8e0a12cbee01fff414feb605a837479203087736e`
- DDL gap matrix SHA256: `7e4f2f4a2f9de3a5105f29777dc98b08ca0ad6746446e7a6b9ae56bdf0a04203`
- DDL gap candidate SHA256: `101f6c304f2fa7dffdf29597f39ded4421cb46fe402785c78678c643326ff465`
- DDL gap PREAPPLY report SHA256: `87dd9dd591b655caeafc84188af060df00c1cd6d22359de87ee55dd34398099c`

## 12. Canonical status

The CX22073JW A2Q concrete qualification physical model defined here is canonical.

DDL execution remains separately gated.
