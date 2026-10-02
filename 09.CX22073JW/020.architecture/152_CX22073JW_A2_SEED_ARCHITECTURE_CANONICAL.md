# 152 CX22073JW A2 SEED ARCHITECTURE CANONICAL

Status: CANONICAL

## 1. Purpose

This document defines the canonical database-seeding architecture for CX22073JW A2 ADVANCED ACADEMIC / QUALIFICATION.

It implements the taxonomy defined by `151_CX22073JW_A2_ADVANCED_ACADEMIC_QUALIFICATION_TAXONOMY_CANONICAL.md` without collapsing academic families, qualification families, concrete qualifications, or the L1-L10 read-depth axis into one concept.

## 2. Canonical architecture

A2 uses two distinct storage concepts:

1. **A2 family knowledge layer**
2. **A2Q concrete qualification entity/version layer**

The family knowledge layer contains reusable canonical knowledge.

The concrete qualification layer contains qualification-specific identity and changing official facts.

These layers MUST remain logically separate.

## 3. Family knowledge layer

The established CX knowledge pattern is canonical for all 48 A2 families.

For each A2 family:

- `subject_area_code = family_code`
- `policy_code = <family_code>_l1_l10_two_layer`
- `min_read_depth_code = L1`
- `max_read_depth_code = L10`
- `canonical_body_policy = overview_detail_two_layer`
- first canonical seed = 10 topics
- each topic appears once in Registry
- each topic appears once in Knowledge
- each topic appears once in Detail
- each topic appears once in Quality metadata
- no `knowledge_domain_catalog` insert is required by this seed model

Therefore one family contains:

- 1 subject/read-depth policy
- 10 Registry rows
- 10 Knowledge rows
- 10 Detail rows
- 10 Quality rows
- **41 total rows**

## 4. Domain-code convention

### A2A Advanced Academic

`primary_domain_code = advanced_academic.<family_code>`

### A2Q Qualification family

`primary_domain_code = qualification.<family_code>`

The domain convention classifies reusable family knowledge. It does not represent a specific examination or license instance.

## 5. Canonical row counts

| Layer | Families | Policy | Registry | Knowledge | Detail | Quality | Total |
|---|---:|---:|---:|---:|---:|---:|---:|
| A2A Advanced Academic | 28 | 28 | 280 | 280 | 280 | 280 | 1148 |
| A2Q Qualification family | 20 | 20 | 200 | 200 | 200 | 200 | 820 |
| **A2 family layer total** | **48** | **48** | **480** | **480** | **480** | **480** | **1968** |

These counts describe the initial family seed only.

They do not include concrete qualification entity/version records.

## 6. L1-L10 relationship

L1-L10 remains orthogonal to A2 taxonomy and to qualification identity.

- A2 family = what knowledge belongs together.
- L1-L10 = how deeply that knowledge is retrieved or explained.
- Concrete qualification = which official qualification/version/jurisdiction is being described.

Canonical topics MUST NOT be duplicated solely to create different difficulty levels.

## 7. Robot neutrality

A2 canonical knowledge remains Robot-neutral.

CX MUST NOT bind an A2 family or topic to:

- a Robot model
- a Robot series
- a persona
- a job title
- an occupation assignment
- a Robot-specific capability
- a Robot-specific permission

AIWorkerOS remains responsible for selecting subject, topic, read scope, read depth, role, and expression.

## 8. A2Q concrete qualification entity/version layer

A concrete qualification is not equivalent to an A2Q family policy.

A concrete qualification record requires semantics for:

- qualification_code
- official_name
- issuer_or_authority
- jurisdiction
- qualification_type
- version_or_syllabus_generation
- effective_date
- official_source
- verification_date
- freshness_state
- eligibility_or_prerequisite_scope
- assessment_structure
- renewal_or_expiry_rules_when_applicable

Qualification-specific current facts MUST remain version-aware and source-aware.

Examples of volatile qualification facts include:

- eligibility requirements
- examination structure
- syllabus version
- fees
- application periods
- examination dates
- pass criteria
- renewal requirements
- legal or professional effects

Such facts MUST NOT overwrite generic A2Q family overview/detail knowledge.

Reusable academic or professional knowledge SHOULD be linked from concrete qualifications to canonical A2A/A2Q topics rather than copied into qualification-specific rows.

## 9. Existing physical-object mapping

PREAPPLY discovery observed 259 existing qualification-related database objects.

The highest discovery-only capability candidate was `civilization_exam_question_bank` with score 6/11.

This discovery score is not proof of semantic compatibility.

The exact physical mapping for concrete qualification entities remains a separate acceptance gate.

## 10. DDL decision

**NO NEW DDL IS APPROVED BY THIS CANONICAL.**

Before creating any new table, column, view, enum, constraint, or index for concrete A2Q qualifications:

1. existing qualification-related objects must be mapped exactly;
2. semantic gaps must be demonstrated;
3. required new schema must receive a separate PREAPPLY and explicit mutation GO.

The family knowledge layer does not require new DDL under the currently accepted CX pattern.

## 11. Canonical execution units

A2 family seeding is divided into two consolidated execution units.

### 11.1 A2A

- 28 families
- EXACT1148 rows
- one consolidated PREAPPLY
- one explicit DB APPLY gate

### 11.2 A2Q family layer

- 20 families
- EXACT820 rows
- one consolidated PREAPPLY
- one explicit DB APPLY gate

### 11.3 Concrete qualifications

- excluded from EXACT820
- handled only after physical mapping and source/version governance acceptance
- use separate PREAPPLY and explicit DB mutation gates

## 12. A2A family seed plan

| Family | Subject area | Primary domain | Policy | Rows |
|---|---|---|---|---:|
| advanced_mathematics | advanced_mathematics | advanced_academic.advanced_mathematics | advanced_mathematics_l1_l10_two_layer | 41 |
| advanced_statistics_probability | advanced_statistics_probability | advanced_academic.advanced_statistics_probability | advanced_statistics_probability_l1_l10_two_layer | 41 |
| advanced_physics | advanced_physics | advanced_academic.advanced_physics | advanced_physics_l1_l10_two_layer | 41 |
| advanced_chemistry | advanced_chemistry | advanced_academic.advanced_chemistry | advanced_chemistry_l1_l10_two_layer | 41 |
| materials_science | materials_science | advanced_academic.materials_science | materials_science_l1_l10_two_layer | 41 |
| molecular_cell_biology | molecular_cell_biology | advanced_academic.molecular_cell_biology | molecular_cell_biology_l1_l10_two_layer | 41 |
| genetics_genomics_biotechnology | genetics_genomics_biotechnology | advanced_academic.genetics_genomics_biotechnology | genetics_genomics_biotechnology_l1_l10_two_layer | 41 |
| ecology_environmental_science | ecology_environmental_science | advanced_academic.ecology_environmental_science | ecology_environmental_science_l1_l10_two_layer | 41 |
| earth_space_science_advanced | earth_space_science_advanced | advanced_academic.earth_space_science_advanced | earth_space_science_advanced_l1_l10_two_layer | 41 |
| computer_science_advanced | computer_science_advanced | advanced_academic.computer_science_advanced | computer_science_advanced_l1_l10_two_layer | 41 |
| software_systems_engineering | software_systems_engineering | advanced_academic.software_systems_engineering | software_systems_engineering_l1_l10_two_layer | 41 |
| data_science_machine_learning | data_science_machine_learning | advanced_academic.data_science_machine_learning | data_science_machine_learning_l1_l10_two_layer | 41 |
| cybersecurity_information_assurance | cybersecurity_information_assurance | advanced_academic.cybersecurity_information_assurance | cybersecurity_information_assurance_l1_l10_two_layer | 41 |
| electrical_electronic_engineering | electrical_electronic_engineering | advanced_academic.electrical_electronic_engineering | electrical_electronic_engineering_l1_l10_two_layer | 41 |
| mechanical_control_robotics | mechanical_control_robotics | advanced_academic.mechanical_control_robotics | mechanical_control_robotics_l1_l10_two_layer | 41 |
| civil_architectural_engineering | civil_architectural_engineering | advanced_academic.civil_architectural_engineering | civil_architectural_engineering_l1_l10_two_layer | 41 |
| chemical_process_energy_engineering | chemical_process_energy_engineering | advanced_academic.chemical_process_energy_engineering | chemical_process_energy_engineering_l1_l10_two_layer | 41 |
| economics_advanced | economics_advanced | advanced_academic.economics_advanced | economics_advanced_l1_l10_two_layer | 41 |
| finance_accounting_quantitative | finance_accounting_quantitative | advanced_academic.finance_accounting_quantitative | finance_accounting_quantitative_l1_l10_two_layer | 41 |
| management_organization_science | management_organization_science | advanced_academic.management_organization_science | management_organization_science_l1_l10_two_layer | 41 |
| law_public_policy_advanced | law_public_policy_advanced | advanced_academic.law_public_policy_advanced | law_public_policy_advanced_l1_l10_two_layer | 41 |
| philosophy_ethics_advanced | philosophy_ethics_advanced | advanced_academic.philosophy_ethics_advanced | philosophy_ethics_advanced_l1_l10_two_layer | 41 |
| linguistics_language_science | linguistics_language_science | advanced_academic.linguistics_language_science | linguistics_language_science_l1_l10_two_layer | 41 |
| history_cultural_studies_advanced | history_cultural_studies_advanced | advanced_academic.history_cultural_studies_advanced | history_cultural_studies_advanced_l1_l10_two_layer | 41 |
| psychology_sociology_advanced | psychology_sociology_advanced | advanced_academic.psychology_sociology_advanced | psychology_sociology_advanced_l1_l10_two_layer | 41 |
| biomedical_science | biomedical_science | advanced_academic.biomedical_science | biomedical_science_l1_l10_two_layer | 41 |
| public_health_epidemiology | public_health_epidemiology | advanced_academic.public_health_epidemiology | public_health_epidemiology_l1_l10_two_layer | 41 |
| advanced_research_methods | advanced_research_methods | advanced_academic.advanced_research_methods | advanced_research_methods_l1_l10_two_layer | 41 |

## 13. A2Q family seed plan

| Family | Subject area | Primary domain | Policy | Rows |
|---|---|---|---|---:|
| it_computing_certifications | it_computing_certifications | qualification.it_computing_certifications | it_computing_certifications_l1_l10_two_layer | 41 |
| cybersecurity_certifications | cybersecurity_certifications | qualification.cybersecurity_certifications | cybersecurity_certifications_l1_l10_two_layer | 41 |
| cloud_network_certifications | cloud_network_certifications | qualification.cloud_network_certifications | cloud_network_certifications_l1_l10_two_layer | 41 |
| engineering_professional_licenses | engineering_professional_licenses | qualification.engineering_professional_licenses | engineering_professional_licenses_l1_l10_two_layer | 41 |
| construction_architecture_qualifications | construction_architecture_qualifications | qualification.construction_architecture_qualifications | construction_architecture_qualifications_l1_l10_two_layer | 41 |
| electrical_mechanical_trade_qualifications | electrical_mechanical_trade_qualifications | qualification.electrical_mechanical_trade_qualifications | electrical_mechanical_trade_qualifications_l1_l10_two_layer | 41 |
| accounting_tax_qualifications | accounting_tax_qualifications | qualification.accounting_tax_qualifications | accounting_tax_qualifications_l1_l10_two_layer | 41 |
| finance_investment_qualifications | finance_investment_qualifications | qualification.finance_investment_qualifications | finance_investment_qualifications_l1_l10_two_layer | 41 |
| management_project_hr_qualifications | management_project_hr_qualifications | qualification.management_project_hr_qualifications | management_project_hr_qualifications_l1_l10_two_layer | 41 |
| legal_professional_qualifications | legal_professional_qualifications | qualification.legal_professional_qualifications | legal_professional_qualifications_l1_l10_two_layer | 41 |
| compliance_risk_governance_qualifications | compliance_risk_governance_qualifications | qualification.compliance_risk_governance_qualifications | compliance_risk_governance_qualifications_l1_l10_two_layer | 41 |
| public_service_regulatory_exams | public_service_regulatory_exams | qualification.public_service_regulatory_exams | public_service_regulatory_exams_l1_l10_two_layer | 41 |
| healthcare_professional_licenses | healthcare_professional_licenses | qualification.healthcare_professional_licenses | healthcare_professional_licenses_l1_l10_two_layer | 41 |
| care_welfare_qualifications | care_welfare_qualifications | qualification.care_welfare_qualifications | care_welfare_qualifications_l1_l10_two_layer | 41 |
| teaching_education_qualifications | teaching_education_qualifications | qualification.teaching_education_qualifications | teaching_education_qualifications_l1_l10_two_layer | 41 |
| language_proficiency_exams | language_proficiency_exams | qualification.language_proficiency_exams | language_proficiency_exams_l1_l10_two_layer | 41 |
| occupational_safety_qualifications | occupational_safety_qualifications | qualification.occupational_safety_qualifications | occupational_safety_qualifications_l1_l10_two_layer | 41 |
| environmental_energy_qualifications | environmental_energy_qualifications | qualification.environmental_energy_qualifications | environmental_energy_qualifications_l1_l10_two_layer | 41 |
| transport_aviation_maritime_qualifications | transport_aviation_maritime_qualifications | qualification.transport_aviation_maritime_qualifications | transport_aviation_maritime_qualifications_l1_l10_two_layer | 41 |
| logistics_supply_chain_qualifications | logistics_supply_chain_qualifications | qualification.logistics_supply_chain_qualifications | logistics_supply_chain_qualifications_l1_l10_two_layer | 41 |

## 14. Canonical invariants

1. A2A and A2Q taxonomy lanes remain distinct.
2. A2 family knowledge and concrete qualification identity remain distinct.
3. L1-L10 remains independent from A2 family classification.
4. Every initial A2 family seed contains exactly 41 rows.
5. A2A initial family layer contains exactly 1148 rows.
6. A2Q initial family layer contains exactly 820 rows.
7. Combined initial A2 family layer contains exactly 1968 rows.
8. `knowledge_domain_catalog` is not inserted by the family seed model.
9. Generic A2 knowledge remains Robot-neutral.
10. Concrete qualification current facts require jurisdiction, source, version/effective-date and verification awareness where applicable.
11. Concrete qualification data is excluded from the A2Q EXACT820 family seed.
12. No new DDL is authorized by this canonical.

## 15. Mutation gates

This canonical document does not itself authorize database mutation.

The required next stages are:

1. `CX A2A ALL28 CONSOLIDATED PREAPPLY GO`
2. explicit A2A EXACT1148 DB APPLY GO after PREAPPLY acceptance
3. A2Q family-layer consolidated PREAPPLY
4. explicit A2Q EXACT820 DB APPLY GO after PREAPPLY acceptance
5. concrete A2Q physical mapping and source-governance PREAPPLY

## 16. Source integrity

- 151 canonical SHA256: `e0225f71be14d9c611a7007747330e027e37381764a372918fe9e43e4c9d0789`
- seed architecture candidate JSON SHA256: `4370bcef26ed112fec0cc01a1bdf6560ff99d6334f5043cc7d5a4645c5df700d`
- family seed plan SHA256: `f8fd830a9e0d6d2ca08d6f3081ad3a727c8ffda3960108d251a3f463c6c8c3c0`
- qualification capability matrix SHA256: `78bdf5ce0e191a6d6c7cdbf0a2cd12b7e845f9194a45d44365f1d861c5b61faa`
- family conflict audit SHA256: `952141a0b920c5b6c35ed4ff32d930eadb06cba904996fa6e3b031352d6a3cea`
- seed architecture PREAPPLY report SHA256: `541a19941d707e3c75ab2524743cbba39f101f19ae186dacc2ab1decaa063e88`

## 17. Canonical status

The CX22073JW A2 seed architecture defined here is canonical.

A2 taxonomy is defined by 151.

A2 database family seeding must conform to this 152 architecture unless a later canonical document explicitly supersedes it.
