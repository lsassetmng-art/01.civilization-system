# CX22073JW Knowledge System Canonical

- project: CX22073JW
- document_type: knowledge-system-canonical-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

---

## 1. Purpose

This document defines the canonical knowledge system of CX22073JW.

CX22073JW is the common knowledge foundation of Civilization.

Its responsibility is to preserve reusable knowledge, reference information,
entities, events, relations, histories, and Civilization-world canonical facts
so that other systems can retrieve them without duplicating their canonical
source.

This document defines:

- what kinds of knowledge CX22073JW stores
- how CX knowledge is classified
- the boundary between universal knowledge and Civilization-world canon
- the distinction between topic knowledge and entity/history knowledge
- the relationship between knowledge classification and read depth
- the provider / consumer boundary with AIWorkerOS
- the principles for future knowledge expansion

This document does not define individual robot types, robot series,
robot occupations, robot permissions, robot personalities, or
robot-specific knowledge assignments.

---

## 2. Fundamental Role of CX22073JW

CX22073JW is the canonical knowledge storage layer for Civilization.

CX stores knowledge independently from the identity of the consumer.

A knowledge item must not be designed around a specific:

- AIWorker robot
- robot model
- application screen
- company
- user
- runtime conversation
- runtime execution request

Consumers retrieve required knowledge from CX through their own
integration, scope, authorization, and runtime layers.

Fundamental separation:

    CX22073JW
    = knowledge canon
    = knowledge storage
    = reusable reference provider

    Consumer OS
    = determines why knowledge is used
    = determines when knowledge is used
    = determines how knowledge is used
    = determines how much knowledge may be read

CX is therefore a long-lived knowledge foundation.

Runtime behavior, user-specific state, robot-specific behavior,
entitlement, authorization, placement, and operational execution
belong to the consuming systems.

---

## 3. Canonical Top-Level Knowledge Classification

CX knowledge is divided into two top-level families.

    A. UNIVERSAL KNOWLEDGE

       A1. GENERAL EDUCATION
       A2. ADVANCED ACADEMIC / QUALIFICATION
       A3. OCCUPATIONAL / PROFESSIONAL
       A4. ENCYCLOPEDIC REFERENCE

    B. CIVILIZATION CANON

       B1. CIVILIZATION HISTORY
       B2. CIVILIZATION IMPORTANT PERSON
       B3. CIVILIZATION STATE / CITY

These classifications describe what the knowledge is.

They are not:

- read-depth levels
- robot classifications
- permission levels
- execution authority
- runtime roles

---

## 4. A — Universal Knowledge

Universal Knowledge stores reusable knowledge that is independent from
the internal canonical state of the Civilization world.

It contains:

- foundational education
- advanced academic knowledge
- qualification knowledge
- professional knowledge
- occupational knowledge
- encyclopedic reference information

Universal Knowledge may describe the real world, abstract concepts,
general theories, established facts, professional methods, historical
knowledge, and other reusable reference material.

---

## 5. A1 — General Education

### 5.1 Purpose

A1 stores foundational educational knowledge from elementary education
through undergraduate university-level general and foundational study.

Target range:

    Elementary School
    → Junior High School
    → High School
    → Undergraduate University

A1 provides the broad educational foundation required by CX consumers.

### 5.2 Subject Areas

Examples include, but are not limited to:

- mathematics
- language
- history
- geography
- physics
- chemistry
- biology
- earth science
- information / computing fundamentals
- civics
- economics fundamentals
- arts fundamentals
- health-related general education
- other general educational subjects

The subject taxonomy is extensible.

This document does not define a fixed final subject count.

### 5.3 Existing Completed Subjects

The following existing CX subject-policy work belongs to A1:

    Math
    Chemistry
    Language
    History
    Geography

These completed domains remain valid.

The introduction of A1 is an upper classification layer.

It does not invalidate existing:

- topic payloads
- overview/detail bodies
- quality metadata
- source bindings
- runtime compatibility
- read-depth compatibility

### 5.4 Topic-Oriented Structure

A1 primarily uses topic-oriented knowledge.

Canonical explanatory bodies may use:

    overview
    detail

The overview/detail structure is independent from read depth.

---

## 6. A2 — Advanced Academic / Qualification Knowledge

### 6.1 Purpose

A2 stores advanced knowledge beyond ordinary foundational education.

It includes knowledge associated with:

- professional qualifications
- licensing examinations
- specialist certifications
- graduate-school study
- advanced academic disciplines
- specialist theory
- advanced methodologies
- research-oriented foundational knowledge

### 6.2 Typical Structure

A2 may require a deeper hierarchy than A1.

Typical qualification structure:

    qualification
    → qualification field
    → examination subject
    → topic
    → overview/detail

Typical academic structure:

    advanced academic field
    → discipline
    → specialty
    → topic
    → overview/detail

### 6.3 Boundary

A2 stores reusable specialist knowledge.

A2 does not store:

- an individual's qualification ownership
- examination application status
- examination scores
- employment status
- organization-specific authorization
- runtime permission

Those belong to the appropriate operational systems.

---

## 7. A3 — Occupational / Professional Knowledge

### 7.1 Purpose

A3 stores reusable specialist knowledge used in occupations and
professional work.

Examples may include:

- engineering
- software development
- architecture
- accounting
- legal professional knowledge
- healthcare professional knowledge
- manufacturing
- logistics
- operations
- quality management
- business administration
- research practice
- other occupational fields

### 7.2 Typical Structure

Typical structure:

    occupational_or_professional_field
    → knowledge_area
    → topic
    → overview/detail

### 7.3 Robot Independence

A3 describes professional knowledge.

A3 does not define which robot possesses or uses that knowledge.

CX does not determine:

- robot occupation
- robot model
- robot series
- robot placement
- robot assignment
- robot execution authority
- company-specific authority
- robot-specific permission

Occupational knowledge may grow to a very large taxonomy.

Its lifecycle must therefore remain independent from the AIWorkerOS
robot taxonomy.

---

## 8. A4 — Encyclopedic Reference

### 8.1 Purpose

A4 stores canonical reference information about identifiable entities.

Unlike A1-A3, A4 is primarily entity-oriented rather than
curriculum-oriented.

Examples include:

- persons
- weapons
- vehicles
- animals
- plants
- materials
- chemical substances
- technologies
- organizations
- geographic places
- products
- machines
- artifacts
- cultural works
- other encyclopedic entities

### 8.2 Canonical Entity Structure

An encyclopedic entity may contain:

    entity_type
    entity_code
    canonical_name
    aliases
    overview
    detail
    attributes
    relations
    timeline
    sources
    verification
    freshness

Not every entity requires every field.

### 8.3 Sensitive Entities

CX may preserve descriptive, technical, historical, or reference
information concerning sensitive entities such as weapons.

Storage of an entity does not imply unrestricted procedural guidance.

Safety classification, usage restrictions, verification requirements,
and consumer-side controls remain applicable.

---

## 9. B — Civilization Canon

Civilization Canon stores facts that are authoritative within the
Civilization world.

It is separate from Universal Knowledge.

Its purpose is not merely to provide explanatory text.

Its purpose is to preserve the authoritative state and history of
Civilization so that systems can determine:

- what existed
- when it existed
- what happened
- what changed
- who was involved
- where it happened
- how entities were related
- what the current canonical state is

---

## 10. B1 — Civilization History

### 10.1 Purpose

B1 stores the canonical history of Civilization.

Examples include:

- historical eras
- major events
- wars
- political transitions
- institutional changes
- discoveries
- disasters
- social changes
- economic changes
- technological transitions
- state founding
- state dissolution
- city founding
- chronological records

### 10.2 History Structure

Civilization history must support more than prose.

A historical record may require:

    event
    timeline
    participants
    location
    relations
    cause_or_context
    result
    canon_source
    temporal_validity

### 10.3 Time-Aware Canon

Where necessary, CX must distinguish:

    past state
    transition
    current state

A later state must not erase historically relevant earlier states.

---

## 11. B2 — Civilization Important Person

### 11.1 Purpose

B2 stores canonical information about important persons in the
Civilization world.

Typical information may include:

- canonical identity
- names
- aliases
- birth or origin
- death or end of activity
- active period
- affiliations
- positions
- titles
- achievements
- major actions
- relationships
- historical participation
- status changes
- timeline

### 11.2 Boundary with A4

A4 Person:

    general encyclopedic person reference

B2 Civilization Important Person:

    authoritative Civilization-world person canon

These classifications must not be merged merely because both contain
person-like entities.

---

## 12. B3 — Civilization State / City

### 12.1 Purpose

B3 stores canonical information and historical state for
Civilization-world political and geographic entities.

Primary targets include:

- states
- nations
- cities
- regions
- territories
- administrative areas
- settlements
- other canonical jurisdictions

### 12.2 Canonical Structure

A state or city may contain:

    entity_code
    canonical_name
    entity_type
    current_state
    geographic_reference
    parent_relations
    contained_relations
    government_or_administration
    historical_state
    timeline
    relations
    important_events
    canon_source

### 12.3 Historical Reconstruction

B3 must preserve important state transitions.

Example:

    foundation
    → expansion
    → administrative change
    → conflict
    → destruction
    → reconstruction
    → present state

The current record must not overwrite or erase historically important
past state.

---

## 13. Universal Knowledge and Civilization Canon Boundary

Similar concepts may exist in both top-level families.

This is intentional.

Examples:

    A1 History
    = general educational history

    B1 Civilization History
    = Civilization-world canonical history

    A4 Person
    = general encyclopedic person reference

    B2 Civilization Important Person
    = authoritative Civilization-world person canon

    A4 Place / State / City
    = general encyclopedic geographic reference

    B3 Civilization State / City
    = authoritative Civilization-world state and city canon

Classification follows the authority and meaning of the record.

It does not follow entity shape alone.

---

## 14. Core Knowledge Structures

CX knowledge is not restricted to one record shape.

The canonical knowledge architecture requires at least four conceptual
structures:

- Topic
- Entity
- Timeline
- Relation

### 14.1 Topic

Topic is primarily used for explanatory knowledge.

Examples:

- mathematical concept
- chemical concept
- language concept
- professional concept
- qualification topic

Typical body:

    overview
    detail

### 14.2 Entity

Entity is used for identifiable objects or persons.

Examples:

- person
- weapon
- organization
- city
- state
- technology
- vehicle
- product

### 14.3 Timeline

Timeline is used when change over time is canonically relevant.

Examples:

- historical event sequence
- person history
- organization history
- state history
- city history
- institutional change

### 14.4 Relation

Relation connects canonical records.

Examples:

    person → organization
    person → event
    event → city
    city → state
    state → state
    technology → organization
    entity → historical event

Consumers must not need to duplicate CX canonical records merely to
represent these relations.

---

## 15. Knowledge Classification and Read Depth

Knowledge classification and read depth are separate axes.

Knowledge classification answers:

    What kind of knowledge is this?

Read depth answers:

    How deeply may the knowledge be read?

Therefore:

    A1-A4
    B1-B3

must not be encoded as L1-L10.

Likewise, L1-L10 must not cause canonical topic content to be duplicated
solely to represent different read depths.

A single canonical topic or entity may be exposed at different depths
through the CX / consumer read architecture.

---

## 16. Source, Verification, Freshness, and Canon

CX is a canonical knowledge store, but not all knowledge has equal
stability.

Knowledge records may require metadata for:

- source basis
- canon status
- reference tier
- verification status
- freshness
- review requirements
- safety boundary
- temporal validity

Stable foundational knowledge may require relatively infrequent review.

Changing information may require stronger freshness control.

Examples include:

- current geographic boundaries
- legal information
- market information
- scientific developments
- technology developments
- contemporary organizations

Civilization-world canon must preserve its canonical authority and
temporal state where required.

---

## 17. AIWorkerOS Integration Principle

CX22073JW is a provider of reusable knowledge and reference material.

AIWorkerOS is a consumer.

AIWorkerOS accesses CX knowledge through AIWorkerOS-side
read/integration mechanisms, including the established KDB/read-adapter
and provider-side integration path where applicable.

The responsibility boundary is:

    CX22073JW
    - stores canonical knowledge
    - maintains reusable reference data
    - exposes reference/read surfaces
    - preserves sources
    - preserves verification metadata
    - preserves timelines
    - preserves relations
    - preserves canon

    AIWorkerOS
    - determines runtime knowledge needs
    - determines robot/runtime scope
    - applies authorization
    - applies behavior controls
    - applies read depth
    - determines how retrieved knowledge is used

CX knowledge must not be copied into AIWorkerOS merely to make it
available to a robot when a canonical reference path is sufficient.

AIWorkerOS behavior control must not be moved into CX.

---

## 18. Robot Independence

CX knowledge architecture is robot-independent.

This document intentionally does not define:

- robot series
- robot models
- robot classes
- robot occupations
- robot personalities
- robot capability catalogs
- robot-specific permissions
- robot-specific read-depth assignments
- robot-specific domain assignments

Robot classifications may continue to grow substantially.

Their lifecycle must not require changes to the CX knowledge taxonomy.

The fixed principle is:

    CX provides knowledge.

    AIWorkerOS determines which robots use it.

---

## 19. Consumer Independence

Although AIWorkerOS is a major CX consumer, CX is not an AIWorkerOS-only
knowledge store.

Other Civilization systems may consume CX knowledge where permitted.

A consumer does not become owner of canonical knowledge merely because
it reads that knowledge.

Consumer-specific:

- projections
- scopes
- joins
- behavior rules
- permissions
- runtime context
- execution decisions

belong to the consumer side unless a separate canonical contract
explicitly assigns them to CX.

---

## 20. Existing A1 Development Position

The initial educational knowledge implementation has completed:

    Math
    Chemistry
    Language
    History
    Geography

All five belong to:

    A1 GENERAL EDUCATION

Their existing accepted data remains canonical.

However:

    five completed subjects
    !=
    completion of A1

A1 still requires a complete subject taxonomy.

---

## 21. Domain Expansion Policy

### 21.1 Previous Candidate Catalog

Existing CX structures include breadth-candidate information.

Known fields include:

    candidate_domain_code
    candidate_order
    integration_status_code

These fields must not be assigned new semantics without canonical
evidence.

### 21.2 candidate_order

Current evidence does not establish:

    candidate_order
    =
    next knowledge domain implementation priority

Therefore candidate_order must not be used automatically to select the
next CX knowledge domain.

### 21.3 Explicit Expansion Policy

Future expansion must use a separately defined canonical expansion
policy.

Expansion must be able to cover:

    A1 General Education
    A2 Advanced Academic / Qualification
    A3 Occupational / Professional
    A4 Encyclopedic Reference
    B1 Civilization History
    B2 Civilization Important Person
    B3 Civilization State / City

The implementation sequence must be explicit.

It must not be inferred from an unrelated ordering field.

---

## 22. Existing Data Preservation Principle

This architecture must not invalidate accepted CX records.

Existing canonical data should be classified or mapped into the new
knowledge hierarchy rather than rewritten merely because this upper
taxonomy was introduced.

Migration must follow:

    READ ONLY inventory
    → mapping design
    → static validation
    → explicit mutation gate
    → apply
    → post-apply acceptance

No destructive migration is authorized by this document.

---

## 23. Fixed Decisions

The following decisions are fixed by this design:

1. CX22073JW is the canonical knowledge storage foundation.
2. CX knowledge has two top-level families.
3. Universal Knowledge contains A1-A4.
4. Civilization Canon contains B1-B3.
5. A1 contains foundational education from elementary through undergraduate level.
6. A2 contains advanced academic and qualification knowledge.
7. A3 contains occupational and professional knowledge.
8. A4 contains encyclopedic entity reference knowledge.
9. B1 contains Civilization canonical history.
10. B2 contains Civilization important-person canon.
11. B3 contains Civilization state/city canon and history.
12. Math, Chemistry, Language, History, and Geography belong to A1.
13. A1-A4 / B1-B3 are not L1-L10 read-depth levels.
14. Topic, Entity, Timeline, and Relation are separate conceptual structures.
15. CX knowledge architecture remains independent from robot taxonomy growth.
16. AIWorkerOS consumes CX through AIWorkerOS-side read/integration mechanisms.
17. Robot-specific behavior, role, permission, and knowledge assignment are not owned by CX.
18. CX canonical knowledge must not be unnecessarily duplicated into AIWorkerOS.
19. candidate_order is not treated as next-domain priority without explicit canonical evidence.
20. Existing accepted CX data is preserved and mapped rather than destructively replaced.

---

## 24. Open Decisions

The following require separate design work:

1. Complete A1 subject taxonomy.
2. Define A2 qualification taxonomy.
3. Define A2 graduate/advanced academic taxonomy.
4. Define A3 occupational/professional taxonomy.
5. Define A4 entity-type taxonomy.
6. Define B1 Civilization event/history schema details.
7. Define B2 Civilization person schema details.
8. Define B3 Civilization state/city schema details.
9. Map existing CX DB objects into A1-A4 / B1-B3.
10. Define explicit future domain expansion sequence.
11. Define read-surface evolution required by the new classification.
12. Define source and verification requirements by knowledge family.
13. Define migration treatment for existing breadth candidates.

These decisions must not be silently inferred from fields whose semantics
have not been canonically defined.

---

## 25. Next Design Sequence

The safe next sequence is:

    1. Static review this document
    2. Register this document in CX architecture index
    3. READ ONLY inventory existing CX tables and views
    4. Map existing structures to A1-A4 / B1-B3
    5. Define canonical taxonomy codes
    6. Complete A1 subject taxonomy
    7. Define explicit expansion policy
    8. Design A2
    9. Design A3
    10. Design A4
    11. Design B1
    12. Design B2
    13. Design B3
    14. Define DB mapping and migration
    15. Apply only after explicit mutation gates

---

## 26. Canonical Principle Summary

CX22073JW exists to preserve knowledge independently of its consumers.

    KNOWLEDGE
        ↓
    CX22073JW
    canonical knowledge storage
        ↓
    reference/read interface
        ↓
    Consumer OS
        ↓
    consumer-specific use

The knowledge taxonomy must remain stable even as:

- robot types increase
- robot models increase
- professions increase
- applications increase
- companies increase
- users increase
- runtime behaviors evolve

The fundamental CX principle is:

    Store knowledge once.
    Preserve its canon and history.
    Expose it through reusable reference paths.
    Let consumers determine how it is used.
