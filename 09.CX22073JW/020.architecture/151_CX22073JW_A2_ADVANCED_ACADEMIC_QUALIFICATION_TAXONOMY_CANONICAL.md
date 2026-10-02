# 151 CX22073JW A2 ADVANCED ACADEMIC / QUALIFICATION TAXONOMY CANONICAL

Status: CANONICAL

## 1. Purpose

This document defines the canonical taxonomy for CX22073JW A2 ADVANCED ACADEMIC / QUALIFICATION.

A2 extends A1 GENERAL EDUCATION into reusable advanced academic knowledge and qualification-oriented knowledge while preserving the responsibility boundary between CX22073JW and AIWorkerOS.

This taxonomy is independent from the L1-L10 read-depth axis.

## 2. Canonical classification

A2 is divided into two distinct lanes:

- **A2A — Advanced Academic**: advanced academic disciplines, specialist foundations, and research-oriented bodies of knowledge.
- **A2Q — Qualification / Certification**: reusable canonical knowledge required to understand or prepare for qualifications, licenses, certifications, and examinations.

A2A and A2Q may reference overlapping knowledge, but they are not interchangeable.

A qualification is not itself an academic discipline, and an academic discipline is not defined by a particular examination.

## 3. Responsibility boundary

### 3.1 CX22073JW owns

- reusable canonical knowledge
- academic taxonomy
- qualification taxonomy
- canonical topics and relations
- source / verification / freshness metadata
- jurisdiction and issuer metadata where qualification-specific knowledge requires it
- version and effective-date metadata

### 3.2 AIWorkerOS owns

- Robot selection
- role selection
- subject selection
- topic selection
- read scope
- read depth
- expression and delivery style

CX taxonomy MUST NOT bind knowledge to a specific Robot model, Robot series, occupation persona, personality, capability profile, or Robot-specific permission.

## 4. L1-L10 relationship

L1-L10 is orthogonal to A2 taxonomy.

- A2 classifies **what knowledge belongs together**.
- L1-L10 controls **how deeply that knowledge is read or explained**.

The same A2 topic may therefore be read at different depths without duplicating the canonical topic solely for difficulty.

Canonical content continues to use the `overview_detail_two_layer` body model unless a later canonical specification explicitly supersedes it.

## 5. Qualification governance

Concrete A2Q qualifications MUST NOT be treated as globally timeless facts.

A concrete qualification record requires, where applicable:

- qualification / examination canonical code
- official name
- issuer or competent authority
- jurisdiction
- qualification type
- version or syllabus generation
- effective date
- official source
- verification date
- freshness state
- eligibility / prerequisite scope
- examination or assessment structure
- renewal / expiry rules where applicable

Eligibility, syllabus, examination format, fees, dates, renewal requirements, legal effects, and official procedures are volatile unless specifically verified as stable.

Current qualification requirements MUST be verified against an official or otherwise authoritative source before being represented as current fact.

Past examination questions or copyrighted source material are not automatically canonical body text. CX should store metadata, derived structure, or original explanatory knowledge unless reproduction is licensed or otherwise permitted.

## 6. A2A — Advanced Academic groups

| Code | 日本語 | English |
|---|---|---|
| A2A_G01 | 数学・数量科学 | Mathematical and Quantitative Sciences |
| A2A_G02 | 物理・物質科学 | Physical and Material Sciences |
| A2A_G03 | 生命・地球・環境科学 | Life Earth and Environmental Sciences |
| A2A_G04 | 計算機・データ・AI | Computing Data and AI |
| A2A_G05 | 工学・技術 | Engineering and Technology |
| A2A_G06 | 経済・経営・法・政策 | Economics Business Law and Policy |
| A2A_G07 | 人文・行動科学 | Humanities and Behavioral Sciences |
| A2A_G08 | 健康・生物医学 | Health and Biomedical Sciences |
| A2A_G09 | 高度研究・学術基盤 | Advanced Research and Scholarship |

## 7. A2A — Advanced Academic families

| Group | Family code | 日本語 | English | A1 anchor | Freshness |
|---|---|---|---|---|---|
| A2A_G01 | advanced_mathematics | 高度数学 | Advanced Mathematics | math | stable |
| A2A_G01 | advanced_statistics_probability | 高度統計・確率 | Advanced Statistics and Probability | math,research_academic_skills | stable |
| A2A_G02 | advanced_physics | 高度物理学 | Advanced Physics | science_physics,math | stable |
| A2A_G02 | advanced_chemistry | 高度化学 | Advanced Chemistry | science_chemistry,math | stable |
| A2A_G02 | materials_science | 材料科学 | Materials Science | science_chemistry,science_physics,engineering_foundation | semi_stable |
| A2A_G03 | molecular_cell_biology | 分子・細胞生物学 | Molecular and Cell Biology | science_biology,science_chemistry | semi_stable |
| A2A_G03 | genetics_genomics_biotechnology | 遺伝学・ゲノム・生命工学 | Genetics Genomics and Biotechnology | science_biology,science_chemistry | volatile |
| A2A_G03 | ecology_environmental_science | 生態学・環境科学 | Ecology and Environmental Science | science_biology,science_earth_space | volatile |
| A2A_G03 | earth_space_science_advanced | 高度地球・宇宙科学 | Advanced Earth and Space Science | science_earth_space,science_physics | semi_stable |
| A2A_G04 | computer_science_advanced | 高度計算機科学 | Advanced Computer Science | information_computing,math | volatile |
| A2A_G04 | software_systems_engineering | ソフトウェア・システム工学 | Software and Systems Engineering | information_computing,engineering_foundation | volatile |
| A2A_G04 | data_science_machine_learning | データ科学・機械学習 | Data Science and Machine Learning | information_computing,math,research_academic_skills | volatile |
| A2A_G04 | cybersecurity_information_assurance | サイバーセキュリティ・情報保証 | Cybersecurity and Information Assurance | information_computing | volatile |
| A2A_G05 | electrical_electronic_engineering | 電気電子工学 | Electrical and Electronic Engineering | engineering_foundation,science_physics,math | semi_stable |
| A2A_G05 | mechanical_control_robotics | 機械・制御・ロボティクス工学 | Mechanical Control and Robotics Engineering | engineering_foundation,science_physics,math | semi_stable |
| A2A_G05 | civil_architectural_engineering | 土木・建築工学 | Civil and Architectural Engineering | engineering_foundation,science_physics,math | volatile |
| A2A_G05 | chemical_process_energy_engineering | 化学プロセス・エネルギー工学 | Chemical Process and Energy Engineering | engineering_foundation,science_chemistry,science_physics | volatile |
| A2A_G06 | economics_advanced | 高度経済学 | Advanced Economics | economics,math | volatile |
| A2A_G06 | finance_accounting_quantitative | 金融・会計・数量分析 | Finance Accounting and Quantitative Methods | economics,math | volatile |
| A2A_G06 | management_organization_science | 経営・組織科学 | Management and Organization Science | economics,sociology,psychology | volatile |
| A2A_G06 | law_public_policy_advanced | 高度法学・公共政策 | Advanced Law and Public Policy | law_foundation,civics,economics | volatile |
| A2A_G07 | philosophy_ethics_advanced | 高度哲学・倫理学 | Advanced Philosophy and Ethics | philosophy_ethics | semi_stable |
| A2A_G07 | linguistics_language_science | 言語学・言語科学 | Linguistics and Language Science | language,foreign_language | semi_stable |
| A2A_G07 | history_cultural_studies_advanced | 高度歴史学・文化研究 | Advanced History and Cultural Studies | history,geography,arts_culture | semi_stable |
| A2A_G07 | psychology_sociology_advanced | 高度心理学・社会学 | Advanced Psychology and Sociology | psychology,sociology | volatile |
| A2A_G08 | biomedical_science | 生物医学 | Biomedical Science | health_human_body,science_biology,science_chemistry | volatile |
| A2A_G08 | public_health_epidemiology | 公衆衛生・疫学 | Public Health and Epidemiology | health_human_body,math,research_academic_skills | volatile |
| A2A_G09 | advanced_research_methods | 高度研究方法論 | Advanced Research Methods | research_academic_skills,math | semi_stable |

## 8. A2Q — Qualification / Certification groups

| Code | 日本語 | English |
|---|---|---|
| A2Q_G01 | 情報・デジタル資格 | Information and Digital Qualifications |
| A2Q_G02 | 工学・技術資格 | Engineering and Technical Qualifications |
| A2Q_G03 | 会計・金融・税務・経営資格 | Accounting Finance Tax and Business Qualifications |
| A2Q_G04 | 法務・コンプライアンス・公共資格 | Legal Compliance and Public Qualifications |
| A2Q_G05 | 医療・保健・介護・福祉資格 | Health Medical Care and Welfare Qualifications |
| A2Q_G06 | 教育・語学資格 | Education and Language Qualifications |
| A2Q_G07 | 安全・産業・環境資格 | Safety Industrial and Environmental Qualifications |
| A2Q_G08 | 交通・物流・運用資格 | Transport Logistics and Operations Qualifications |

## 9. A2Q — Qualification / Certification families

| Group | Family code | 日本語 | English | A1 anchor | Freshness |
|---|---|---|---|---|---|
| A2Q_G01 | it_computing_certifications | IT・計算機資格 | IT and Computing Certifications | information_computing | volatile |
| A2Q_G01 | cybersecurity_certifications | サイバーセキュリティ資格 | Cybersecurity Certifications | information_computing | volatile |
| A2Q_G01 | cloud_network_certifications | クラウド・ネットワーク資格 | Cloud and Network Certifications | information_computing | volatile |
| A2Q_G02 | engineering_professional_licenses | 技術者・工学系免許資格 | Engineering Professional Licenses | engineering_foundation | volatile |
| A2Q_G02 | construction_architecture_qualifications | 建設・建築資格 | Construction and Architecture Qualifications | engineering_foundation | volatile |
| A2Q_G02 | electrical_mechanical_trade_qualifications | 電気・機械・技能資格 | Electrical Mechanical and Trade Qualifications | engineering_foundation | volatile |
| A2Q_G03 | accounting_tax_qualifications | 会計・税務資格 | Accounting and Tax Qualifications | economics,math | volatile |
| A2Q_G03 | finance_investment_qualifications | 金融・投資資格 | Finance and Investment Qualifications | economics,math | volatile |
| A2Q_G03 | management_project_hr_qualifications | 経営・プロジェクト・人事資格 | Management Project and HR Qualifications | economics,sociology,psychology | volatile |
| A2Q_G04 | legal_professional_qualifications | 法務専門資格 | Legal Professional Qualifications | law_foundation | volatile |
| A2Q_G04 | compliance_risk_governance_qualifications | コンプライアンス・リスク・ガバナンス資格 | Compliance Risk and Governance Qualifications | law_foundation,civics,economics | volatile |
| A2Q_G04 | public_service_regulatory_exams | 公務・規制系試験 | Public Service and Regulatory Examinations | civics,law_foundation,economics | volatile |
| A2Q_G05 | healthcare_professional_licenses | 医療専門職免許・資格 | Healthcare Professional Licenses | health_human_body,science_biology,science_chemistry | volatile |
| A2Q_G05 | care_welfare_qualifications | 介護・福祉資格 | Care and Welfare Qualifications | health_human_body,psychology,sociology | volatile |
| A2Q_G06 | teaching_education_qualifications | 教員・教育資格 | Teaching and Education Qualifications | research_academic_skills,psychology | volatile |
| A2Q_G06 | language_proficiency_exams | 語学能力試験 | Language Proficiency Examinations | foreign_language,language | volatile |
| A2Q_G07 | occupational_safety_qualifications | 労働安全・産業安全資格 | Occupational Safety Qualifications | engineering_foundation,health_human_body | volatile |
| A2Q_G07 | environmental_energy_qualifications | 環境・エネルギー資格 | Environmental and Energy Qualifications | science_earth_space,engineering_foundation | volatile |
| A2Q_G08 | transport_aviation_maritime_qualifications | 交通・航空・海事資格 | Transport Aviation and Maritime Qualifications | engineering_foundation,science_physics | volatile |
| A2Q_G08 | logistics_supply_chain_qualifications | 物流・サプライチェーン資格 | Logistics and Supply Chain Qualifications | economics,engineering_foundation | volatile |

## 10. A1 anchor semantics

`a1_anchor` identifies A1 GENERAL EDUCATION domains that provide foundational prerequisite knowledge for an A2 family.

An A1 anchor does not mean:

- that the A2 family is a duplicate of the A1 subject
- that every A1 topic must be mastered before A2 is accessible
- that AIWorkerOS must expose the A1 subject together with the A2 family

It is a knowledge-architecture relationship only.

## 11. Freshness semantics

- `stable`: fundamentals are expected to change slowly.
- `semi_stable`: fundamentals are stable but methods, terminology, standards, or research consensus may evolve.
- `volatile`: current rules, technologies, requirements, procedures, datasets, regulations, or professional practices may change materially and require freshness verification.

Freshness is metadata for verification behavior; it does not replace source provenance.

## 12. Canonical counts

- A2 groups total: 17
- A2A groups: 9
- A2Q groups: 8
- A2 families total: 48
- A2A Advanced Academic families: 28
- A2Q Qualification families: 20

## 13. Canonical invariants

1. A2A and A2Q remain distinct taxonomy lanes.
2. A2 family classification remains independent from L1-L10.
3. A2 knowledge remains Robot-neutral.
4. Qualification-specific current facts require issuer / jurisdiction / version / source awareness.
5. No qualification-specific rules are assumed current merely because they exist in CX.
6. Academic knowledge and examination preparation may share canonical topics rather than duplicate them unnecessarily.
7. A2 does not redefine A1 GENERAL EDUCATION.
8. A2 does not absorb A3 OCCUPATIONAL / PROFESSIONAL knowledge solely because a qualification is used professionally.
9. A qualification may relate to A3 later through explicit relations without moving qualification governance out of A2Q.
10. Canonical topic bodies should remain retrieval-oriented and reusable.

## 14. Out of scope for this canonical

This document does not yet define:

- concrete qualification records
- specific national or private qualification issuers
- qualification jurisdiction tables
- examination dates
- fee schedules
- current eligibility rules
- current pass criteria
- exact question banks
- Robot-specific learning plans
- occupation-specific deployment policy

Those require later implementation specifications and, for current qualification facts, source verification.

## 15. Source artifact integrity

- taxonomy candidate JSON SHA256: `558616391dbbbdc22a77bf5a02fef82c6feb80750c2a819e1071ae2ce4e24667`
- taxonomy candidate TSV SHA256: `1d4952b8a8cda7cf996495196b9895625dc8e0a43ffae1105cb5bbbaa2213408`
- existing qualification object audit SHA256: `778b22e85e86e97c5fce17e46b37ef77163f63b9bc92d60c24b30e88563f0d5a`
- PREAPPLY report SHA256: `45ee3092fd71aa573a18c7e2d46247526760afb59adfa2758d72aeab36e6c67b`

## 16. Canonical status

A2 taxonomy is canonical at the group/family classification level defined by this document.

Concrete A2 data seeding remains subject to separate PREAPPLY and explicit DB APPLY gates.
