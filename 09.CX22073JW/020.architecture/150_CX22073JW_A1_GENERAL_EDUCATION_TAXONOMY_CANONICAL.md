# CX22073JW A1 General Education Taxonomy Canonical

- project: CX22073JW
- parent_design: 149_CX22073JW_KNOWLEDGE_SYSTEM_CANONICAL.md
- document_type: a1-general-education-taxonomy-canonical
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

---

## 1. Purpose

This document defines the canonical A1 General Education taxonomy
for CX22073JW.

A1 is the foundational knowledge layer within:

    A. UNIVERSAL KNOWLEDGE
        A1. GENERAL EDUCATION

The primary goal of A1 is not to reproduce a specific school curriculum
or educational ministry structure exactly.

The primary goal is:

    AIWorkerOS robots and other authorized consumers
    must be able to reliably locate, retrieve, and read
    broad foundational knowledge from CX22073JW.

Therefore this taxonomy is optimized for:

- stable machine-readable subject codes
- broad foundational knowledge coverage
- predictable retrieval
- clear subject boundaries
- extensibility
- overview/detail payload compatibility
- L1-L10 read-depth compatibility
- source and verification metadata
- consumer independence
- robot independence

---

## 2. Fundamental A1 Principle

A1 stores broad foundational knowledge that an educated general-purpose
consumer may need before entering advanced qualification knowledge,
graduate-level specialization, or occupation-specific practice.

The conceptual educational range is:

    elementary foundation
    → junior-high foundation
    → high-school foundation
    → undergraduate foundation

These stages are descriptive coverage ranges.

They are not separate canonical copies of the same knowledge.

CX should avoid unnecessary duplication such as:

    elementary version of topic X
    junior-high version of topic X
    high-school version of topic X
    university version of topic X

when one canonical topic can instead be exposed through different
read depths.

---

## 3. Robot-Readable Priority

A1 taxonomy is designed to be read by machines.

A valid A1 subject must have a stable identifier that does not depend on:

- robot model
- robot series
- robot occupation
- UI wording
- Japanese display text
- consumer application
- temporary curriculum naming
- runtime conversation

Canonical identification uses stable codes.

Human-readable titles may change or be localized without changing
the canonical subject identity.

---

## 4. Canonical Subject Contract

Each A1 subject should be representable by at least:

    subject_area_code
    subject_group_code
    primary_domain_code
    canonical_title
    localized_title
    scope_summary
    inclusion_boundary
    exclusion_boundary
    canonical_body_policy
    source_policy
    freshness_policy
    safety_policy
    active_flag

Topic-level content should remain compatible with:

    topic_code
    overview
    detail
    source
    verification
    freshness
    safety metadata

Read depth remains a separate axis.

---

## 5. A1 Subject Group Taxonomy

A1 uses the following canonical subject groups.

    G01 language_culture
    G02 mathematics
    G03 natural_science
    G04 social_humanities
    G05 information_computing
    G06 engineering_technology
    G07 health_human_body
    G08 arts_culture
    G09 academic_foundation

Subject groups organize retrieval.

They do not replace subject_area_code.

---

## 6. Canonical A1 Subject Set

A1 v1 defines the following foundational subject set.

### G01 — Language and Culture

#### A1-001 language

Canonical code:

    language

Primary domain:

    language_culture.language

Status:

    existing / CLOSED_PASS

Scope:

- reading
- writing
- vocabulary
- grammar
- sentence structure
- classical language foundations
- linguistics foundations
- semantics
- pragmatics
- discourse
- communication through language

Existing accepted CX data is preserved.

---

#### A1-002 foreign_language

Canonical code:

    foreign_language

Primary domain:

    language_culture.foreign_language

Status:

    new taxonomy subject

Scope:

- second-language foundations
- foreign-language reading
- listening concepts
- speaking concepts
- writing
- vocabulary
- grammar
- translation foundations
- intercultural communication foundations

Boundary:

Advanced translation studies and professional interpretation belong
primarily to A2 or A3 when specialist depth is required.

---

### G02 — Mathematics

#### A1-003 math

Canonical code:

    math

Primary domain:

    mathematics.mathematical_knowledge

Status:

    existing / CLOSED_PASS

Scope:

- arithmetic
- fractions
- decimals
- geometry
- equations
- functions
- trigonometry
- calculus foundations
- vectors
- probability
- statistics
- linear algebra foundations
- discrete mathematics foundations
- mathematical reasoning

Existing accepted CX data is preserved.

---

### G03 — Natural Science

#### A1-004 science_physics

Canonical code:

    science_physics

Primary domain:

    natural_science.physics

Status:

    new taxonomy subject

Scope:

- motion
- force
- energy
- momentum
- waves
- sound
- light
- electricity
- magnetism
- heat
- thermodynamics foundations
- mechanics foundations
- electromagnetism foundations
- modern physics foundations

Boundary:

Highly specialized research physics belongs to A2.

---

#### A1-005 science_chemistry

Canonical code:

    science_chemistry

Primary domain:

    natural_science.chemistry

Status:

    existing / CLOSED_PASS

Scope:

- matter
- atoms
- molecules
- chemical bonding
- reactions
- solutions
- concentration
- mole and stoichiometry
- thermochemistry
- equilibrium
- kinetics
- redox
- electrochemistry
- organic chemistry foundations

Existing accepted CX data is preserved.

---

#### A1-006 science_biology

Canonical code:

    science_biology

Primary domain:

    natural_science.biology

Status:

    new taxonomy subject

Scope:

- cells
- genetics
- evolution
- organisms
- physiology foundations
- ecology
- ecosystems
- biodiversity
- molecular biology foundations
- microbiology foundations
- plant biology foundations
- animal biology foundations

Boundary:

Clinical diagnosis and professional medical practice do not belong to A1.

---

#### A1-007 science_earth_space

Canonical code:

    science_earth_space

Primary domain:

    natural_science.earth_space

Status:

    new taxonomy subject

Scope:

- geology
- minerals
- rocks
- plate tectonics
- earthquakes
- volcanoes
- atmosphere
- meteorology foundations
- oceans
- Earth systems
- astronomy foundations
- solar system
- stars
- galaxies
- universe foundations

This subject covers foundational Earth and space science.

---

### G04 — Social Sciences and Humanities

#### A1-008 history

Canonical code:

    history

Primary domain:

    social_humanities.history

Status:

    existing / CLOSED_PASS

Scope:

- chronology
- historical persons
- events
- institutions
- political history
- economic history
- social history
- cultural history
- intellectual history
- historical comparison
- source-reading foundations

Existing accepted CX data is preserved.

A1 History is general educational history.

It is separate from:

    B1 Civilization History

---

#### A1-009 geography

Canonical code:

    geography

Primary domain:

    social_humanities.geography

Status:

    existing / CLOSED_PASS

Scope:

- maps
- direction
- landforms
- climate
- water
- ecosystems
- population
- migration
- settlements
- industry
- resources
- trade
- culture
- regions
- political geography foundations
- urban geography
- GIS foundations

Existing accepted CX data is preserved.

---

#### A1-010 civics

Canonical code:

    civics

Primary domain:

    social_humanities.civics

Status:

    new taxonomy subject

Scope:

- society
- citizenship
- government systems
- public institutions
- rights and duties
- elections as civic systems
- public administration foundations
- constitutions as institutional concepts
- local government
- international institutions
- public policy foundations

A1 Civics provides descriptive foundational knowledge.

It does not determine political choices.

---

#### A1-011 economics

Canonical code:

    economics

Primary domain:

    social_humanities.economics

Status:

    new taxonomy subject

Scope:

- scarcity
- incentives
- supply
- demand
- markets
- price
- production
- consumption
- labor
- money
- banking foundations
- inflation
- unemployment
- national income
- public finance foundations
- international trade foundations
- microeconomics foundations
- macroeconomics foundations

Boundary:

Professional finance, securities practice, accounting practice,
and investment execution belong primarily to A2 or A3.

---

#### A1-012 law_foundation

Canonical code:

    law_foundation

Primary domain:

    social_humanities.law_foundation

Status:

    new taxonomy subject

Scope:

- purpose of law
- legal systems
- rights
- obligations
- contracts as foundational concepts
- property as a foundational concept
- civil law foundations
- criminal law foundations
- administrative law foundations
- constitutional law foundations
- dispute-resolution foundations
- legal source hierarchy

Boundary:

A1 provides legal literacy.

Professional legal judgment and occupation-specific legal practice
belong to A2 or A3.

---

#### A1-013 philosophy_ethics

Canonical code:

    philosophy_ethics

Primary domain:

    social_humanities.philosophy_ethics

Status:

    new taxonomy subject

Scope:

- logic foundations
- argument
- reasoning
- epistemology foundations
- metaphysics foundations
- ethics foundations
- political philosophy as academic knowledge
- philosophy of science foundations
- major schools of thought
- applied ethical reasoning foundations

---

#### A1-014 psychology

Canonical code:

    psychology

Primary domain:

    social_humanities.psychology

Status:

    new taxonomy subject

Scope:

- cognition
- perception
- memory
- learning
- emotion
- motivation
- development
- personality theory foundations
- social psychology foundations
- behavioral science foundations
- research methods foundations

Boundary:

Diagnosis and clinical professional practice belong outside A1.

---

#### A1-015 sociology

Canonical code:

    sociology

Primary domain:

    social_humanities.sociology

Status:

    new taxonomy subject

Scope:

- society
- groups
- institutions
- family
- organizations
- social structure
- inequality as an academic topic
- culture
- norms
- socialization
- social change
- demographic foundations
- social research foundations

---

### G05 — Information and Computing

#### A1-016 information_computing

Canonical code:

    information_computing

Primary domain:

    information_technology.computing_foundation

Status:

    new taxonomy subject

Scope:

- information representation
- data
- computer architecture foundations
- operating-system concepts
- networks
- internet foundations
- algorithms
- programming foundations
- databases
- software concepts
- cybersecurity foundations
- privacy foundations
- information ethics
- artificial intelligence foundations
- digital literacy

Boundary:

Occupation-specific software engineering, infrastructure operations,
security operations, and advanced computing specialization belong
primarily to A2 or A3.

---

### G06 — Engineering and Technology

#### A1-017 engineering_foundation

Canonical code:

    engineering_foundation

Primary domain:

    engineering_technology.engineering_foundation

Status:

    new taxonomy subject

Scope:

- engineering thinking
- design
- measurement
- materials foundations
- mechanisms
- machines
- structures
- electricity applications
- electronics foundations
- control foundations
- manufacturing foundations
- energy systems foundations
- safety and reliability foundations
- technical drawing and specification foundations

Boundary:

Professional engineering design and occupation-specific implementation
belong primarily to A3.

---

### G07 — Health and Human Body

#### A1-018 health_human_body

Canonical code:

    health_human_body

Primary domain:

    health_life_science.health_foundation

Status:

    new taxonomy subject

Scope:

- human body foundations
- anatomy foundations
- physiology foundations
- nutrition foundations
- sleep foundations
- exercise foundations
- hygiene
- infection prevention foundations
- public-health literacy
- mental-health literacy
- first-aid concepts
- health information literacy

Boundary:

A1 provides general health knowledge.

Diagnosis, treatment decisions, prescribing, and professional clinical
practice do not belong to A1.

---

### G08 — Arts and Culture

#### A1-019 arts_culture

Canonical code:

    arts_culture

Primary domain:

    arts_culture.general_arts

Status:

    new taxonomy subject

Scope:

- visual arts
- music
- performing arts
- literature as cultural study
- design foundations
- architecture as cultural study
- art history foundations
- cultural heritage
- media expression
- aesthetics foundations
- creative methods foundations

Boundary:

Specialist professional production knowledge may belong to A2 or A3.

---

### G09 — Academic Foundation

#### A1-020 research_academic_skills

Canonical code:

    research_academic_skills

Primary domain:

    academic_foundation.research_skills

Status:

    new taxonomy subject

Scope:

- asking research questions
- information search
- source evaluation
- primary and secondary sources
- note taking
- summarization
- comparison
- argument construction
- citation foundations
- bibliography foundations
- data reading
- graph reading
- statistical literacy
- report writing
- presentation foundations
- research ethics foundations

This subject provides cross-domain learning and research literacy.

---

## 7. Canonical A1 Subject Matrix

The A1 v1 canonical matrix is:

    A1-001  language                 language_culture
    A1-002  foreign_language        language_culture

    A1-003  math                     mathematics

    A1-004  science_physics          natural_science
    A1-005  science_chemistry        natural_science
    A1-006  science_biology          natural_science
    A1-007  science_earth_space      natural_science

    A1-008  history                  social_humanities
    A1-009  geography                social_humanities
    A1-010  civics                   social_humanities
    A1-011  economics                social_humanities
    A1-012  law_foundation           social_humanities
    A1-013  philosophy_ethics        social_humanities
    A1-014  psychology               social_humanities
    A1-015  sociology                social_humanities

    A1-016  information_computing    information_computing

    A1-017  engineering_foundation   engineering_technology

    A1-018  health_human_body        health_human_body

    A1-019  arts_culture             arts_culture

    A1-020  research_academic_skills academic_foundation

A1 v1 therefore contains:

    9 subject groups
    20 canonical subjects

The taxonomy is extensible.

The number 20 is not a permanent maximum.

---

## 8. Existing Subject Preservation

The following five existing subjects retain their current canonical codes:

    math
    science_chemistry
    language
    history
    geography

They must not be renamed solely to make numbering symmetrical.

Their accepted payloads remain valid.

The new A1 taxonomy surrounds and extends the existing subjects.

It does not replace them.

---

## 9. A1 / A2 Boundary

A1 contains broad foundational understanding.

A2 contains advanced academic, graduate-level, qualification,
certification, or specialist-study knowledge.

Example:

    A1 law_foundation
        legal systems
        rights and duties
        contracts
        civil/criminal/public-law foundations

    A2
        bar-examination knowledge
        specialist legal theory
        graduate legal research
        advanced legal qualification knowledge

Another example:

    A1 information_computing
        programming foundations
        networks
        databases
        algorithms
        security foundations

    A2
        advanced computer science
        specialist certifications
        graduate algorithms
        advanced cryptography
        advanced distributed systems

The boundary is depth and specialization, not the consumer identity.

---

## 10. A1 / A3 Boundary

A1 contains generally reusable foundational knowledge.

A3 contains knowledge organized around professional or occupational use.

Example:

    A1 information_computing
        programming and computing foundations

    A3 software engineering
        development workflow
        production architecture
        testing practice
        deployment practice
        operational engineering

Example:

    A1 law_foundation
        general legal literacy

    A3 legal professional knowledge
        occupation-specific legal practice

A3 must not be encoded into A1 simply because an AIWorker robot needs it.

Robots may read from multiple CX families.

---

## 11. Robot Retrieval Model

CX does not need a separate copy of A1 for every robot.

Expected model:

    AIWorkerOS robot
        ↓
    AIWorkerOS KDB/read adapter
        ↓
    subject selection
        ↓
    topic selection
        ↓
    requested read depth
        ↓
    CX canonical knowledge

A robot may read:

- one A1 subject
- multiple A1 subjects
- A1 plus A2
- A1 plus A3
- A1 plus A4
- Universal Knowledge plus Civilization Canon

depending on consumer-side policy.

CX does not encode those robot-specific combinations into this taxonomy.

---

## 12. Read Depth

A1 subject identity remains independent from L1-L10.

Example:

    subject_area_code = science_physics

may be read using different viewpoints at:

    L1-L2
    L3-L4
    L5-L6
    L7-L8
    L9-L10

without creating separate subject identities for each level.

The existing two-layer canonical body pattern remains preferred where
compatible:

    overview
    detail

Read depth controls retrieval and explanation depth.

It does not define duplicate canonical facts.

---

## 13. Topic Design Principle

Each A1 subject should eventually contain a coherent topic taxonomy.

Topics should:

- use stable topic codes
- represent reusable knowledge units
- avoid arbitrary school-year duplication
- support overview/detail
- support source metadata
- support freshness metadata
- support safety metadata
- support read-depth projection
- be retrievable independently
- support relations to other topics where useful

A topic should not require knowledge of a specific robot model to be valid.

---

## 14. Cross-Subject Relations

A1 subjects are not isolated.

CX may represent relations such as:

    math
        → physics
        → engineering

    chemistry
        → biology
        → health

    history
        → geography
        → civics
        → economics

    language
        → foreign_language
        → history
        → arts_culture

    information_computing
        → mathematics
        → engineering_foundation

    research_academic_skills
        → all A1 subjects

Relations support retrieval and learning navigation.

They do not merge subject identities.

---

## 15. Existing Breadth Candidate Treatment

Existing breadth candidates include entries such as:

    environment_climate
    law_civic
    science_technology
    market_consumer

They are not automatically promoted into A1 as-is.

They require mapping review.

Possible future mapping examples include:

    environment_climate
        → geography
        → science_earth_space
        → environmental topics

    law_civic
        → civics
        → law_foundation

    science_technology
        → natural_science subjects
        → information_computing
        → engineering_foundation

    market_consumer
        → economics
        → possible A3/A4 material depending on content

These mappings are design hypotheses only until separately reviewed.

candidate_order remains non-authoritative for implementation priority.

---

## 16. Machine Retrieval Requirements

A1 implementation must allow a consumer to determine at minimum:

    What subject is this?
    What topic is this?
    What canonical body exists?
    What source supports it?
    How fresh is it?
    What safety constraints apply?
    What read depth is requested?
    What related knowledge exists?

The taxonomy should therefore remain queryable by canonical codes.

Display names alone are insufficient identifiers.

---

## 17. Localization

Canonical subject codes are language-neutral identifiers.

Japanese and English titles are presentation metadata.

Example:

    subject_area_code:
        science_biology

    ja-JP:
        生物・生命科学

    en-US:
        Biology and Life Science

Localization must not create separate subject identities.

---

## 18. Freshness

A1 contains both stable and changing knowledge.

Typical stable subjects include much of:

- mathematics
- foundational physics
- foundational chemistry
- foundational biology
- foundational language structure

Semi-stable or changing areas may include:

- civics
- law foundations
- economics
- information technology
- health guidance
- contemporary geography
- contemporary scientific understanding

Freshness policy must be defined per topic or subject where needed.

A1 status alone must not imply that every record is permanently stable.

---

## 19. Safety

A1 foundational knowledge is generally intended for broad reference use.

However, some topics require additional controls.

Examples include:

- hazardous chemistry
- dangerous physical procedures
- weapon-related reference
- medical interpretation
- legal interpretation
- cybersecurity misuse
- political persuasion
- harmful engineering procedures

Safety policy must remain separable from subject identity.

The existence of foundational knowledge in CX does not automatically
authorize unrestricted execution or proceduralization by a consumer.

---

## 20. Initial Implementation State

Existing completed A1 subjects:

    language
    math
    science_chemistry
    history
    geography

Count:

    5

New taxonomy subjects not yet implemented as completed subject policies:

    foreign_language
    science_physics
    science_biology
    science_earth_space
    civics
    economics
    law_foundation
    philosophy_ethics
    psychology
    sociology
    information_computing
    engineering_foundation
    health_human_body
    arts_culture
    research_academic_skills

Count:

    15

Total A1 v1 subject taxonomy:

    20

This document does not create those 15 subject policies or payloads.

---

## 21. Implementation Sequence Principle

Implementation order must be explicit and must not be inferred from
candidate_order.

For broad robot utility, the recommended A1 implementation sequence is:

    Wave 1
    science_physics
    science_biology
    science_earth_space
    information_computing

    Wave 2
    civics
    economics
    law_foundation
    health_human_body

    Wave 3
    foreign_language
    philosophy_ethics
    psychology
    sociology

    Wave 4
    engineering_foundation
    arts_culture
    research_academic_skills

This sequence is an A1 implementation recommendation within this
taxonomy design.

It does not redefine the existing breadth-candidate candidate_order field.

Each subject still requires its own normal gates before DB application.

---

## 22. Subject Implementation Gate

Each new A1 subject should follow:

    1. subject policy design
    2. topic taxonomy design
    3. first implementation scope selection
    4. overview/detail payload design
    5. source and safety review
    6. static validation
    7. DB preapply review
    8. explicit DB APPLY GO
    9. actual apply
    10. post-apply acceptance
    11. closeout

No subject becomes implemented merely because it appears in this taxonomy.

---

## 23. AIWorkerOS Boundary

This taxonomy specifies knowledge.

It does not specify robots.

CX does not own:

- robot catalog
- robot series
- robot model
- robot occupation
- robot personality
- robot capability
- robot assignment
- robot authorization
- robot-specific subject binding
- robot-specific read depth

AIWorkerOS may use the canonical A1 codes when selecting knowledge.

The consumer-side adapter may request knowledge using combinations such as:

    subject_area_code
    topic_code
    domain_code
    read_depth_code
    other supported retrieval filters

Exact runtime request contracts remain the responsibility of the
AIWorkerOS integration design.

---

## 24. Fixed Decisions

The following are fixed by this A1 taxonomy design:

1. A1 is optimized for reliable machine retrieval.
2. A1 is not required to reproduce a specific school curriculum exactly.
3. A1 covers foundational knowledge from elementary through undergraduate level.
4. School stage does not require duplicate canonical topic rows.
5. A1 v1 defines 9 subject groups.
6. A1 v1 defines 20 canonical subjects.
7. Existing codes math, science_chemistry, language, history, and geography are preserved.
8. Existing accepted data for the five completed subjects is preserved.
9. A1 subject codes are independent from robot classifications.
10. A1 subject codes are independent from L1-L10 read depth.
11. A1 and A2 are separated by advanced academic/qualification specialization.
12. A1 and A3 are separated by occupation-specific professional practice.
13. A1 topics should remain compatible with overview/detail canonical bodies.
14. A1 must support source, verification, freshness, and safety metadata.
15. candidate_order is not an A1 implementation priority field.
16. Existing breadth candidates require explicit mapping review.
17. New subjects require their own implementation gates before DB application.
18. AIWorkerOS remains responsible for robot-specific knowledge selection.

---

## 25. Open Decisions

The following remain separate future work:

1. Detailed topic taxonomy for each of the 15 new subjects.
2. Exact subject-policy rows for each new subject.
3. Exact primary-domain catalog rows where not already present.
4. Exact DB mapping for the A1 upper taxonomy.
5. Exact mapping of breadth candidates into A1/A2/A3/A4.
6. Learning-path and prerequisite relationships.
7. Cross-subject relation implementation.
8. Per-subject freshness policy.
9. Per-subject safety policy.
10. AIWorkerOS runtime adapter request details.
11. Whether additional A1 subjects are required after v1 coverage review.

---

## 26. Canonical A1 Summary

A1 exists so that authorized robots and other consumers can retrieve
broad foundational knowledge consistently.

The canonical shape is:

    A1 GENERAL EDUCATION

    language_culture
        language
        foreign_language

    mathematics
        math

    natural_science
        science_physics
        science_chemistry
        science_biology
        science_earth_space

    social_humanities
        history
        geography
        civics
        economics
        law_foundation
        philosophy_ethics
        psychology
        sociology

    information_computing
        information_computing

    engineering_technology
        engineering_foundation

    health_human_body
        health_human_body

    arts_culture
        arts_culture

    academic_foundation
        research_academic_skills

The governing principle is:

    Organize knowledge so that machines can find it.
    Store canonical knowledge once.
    Control reading depth separately.
    Keep robot classification outside CX.
