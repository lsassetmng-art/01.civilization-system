# 155 CX22073JW A2Q CONCRETE QUALIFICATION SEED ARCHITECTURE CANONICAL

Status: CANONICAL

## 1. Purpose

This document defines the canonical initial seed architecture for concrete A2Q qualifications after the country/jurisdiction integrated physical model was established.

## 2. Canonical seed scope

- A2Q families: 20
- initial concrete qualifications: 20
- authorities: 17
- countries: 2
- jurisdictions: 2
- qualification-jurisdiction relations: 20
- qualification-knowledge relations in Wave1: 0
- Wave1 total rows: EXACT81

Each A2Q family receives one initial concrete qualification.

## 3. Country and jurisdiction rules

- `GLOBAL` is a jurisdiction, not a country.
- Initial country master rows are JP and US.
- Initial jurisdiction rows are JP and GLOBAL.
- Authorities store both home country and jurisdiction.
- Qualifications retain a primary jurisdiction and an explicit qualification-jurisdiction relation.

## 4. Source verification rule

Every qualification version row requires an official primary source and a verification date.

Wave1 verification date is `2026-09-29`.

Wave1 uses `source_snapshot_2026-09-29` when no stable official syllabus/version identifier is fixed by this seed.

`freshness_state=current` means the official primary source was verified for qualification identity, authority/jurisdiction context, and source presence in this PREAPPLY. It does not mean every volatile eligibility, assessment, fee, schedule, renewal, or expiry fact has been copied into CX.

## 5. Volatile qualification facts

The following must not be inferred:

- eligibility requirements
- prerequisites
- assessment structure
- fees
- schedules
- pass criteria
- renewal requirements
- expiry rules

Wave1 therefore leaves `eligibility_requirements`, `assessment_structure`, and `renewal_expiry_rules` as empty JSON objects unless a later dedicated official-source mapping explicitly populates them.

## 6. Knowledge relation policy

Wave1 inserts zero rows into `cx_qualification_knowledge_relation`.

`assessed` and `prerequisite` relations require explicit official syllabus/source evidence. Blanket mapping of all ten family topics is forbidden.

## 7. Initial qualification set

- `it_computing_certifications` -> `jp_ipa_fe` — 基本情報技術者試験
- `cybersecurity_certifications` -> `jp_ipa_sc` — 情報処理安全確保支援士試験
- `cloud_network_certifications` -> `global_cisco_ccna` — Cisco Certified Network Associate (CCNA)
- `engineering_professional_licenses` -> `jp_professional_engineer` — 技術士（第二次試験）
- `construction_architecture_qualifications` -> `jp_first_class_architect` — 一級建築士
- `electrical_mechanical_trade_qualifications` -> `jp_first_class_electrician` — 第一種電気工事士
- `accounting_tax_qualifications` -> `jp_jcci_bookkeeping_level1` — 日商簿記検定1級
- `finance_investment_qualifications` -> `jp_saaj_cma` — 日本証券アナリスト協会認定アナリスト（CMA）
- `management_project_hr_qualifications` -> `global_pmi_pmp` — Project Management Professional (PMP)
- `legal_professional_qualifications` -> `jp_bar_examination` — 司法試験
- `compliance_risk_governance_qualifications` -> `global_iia_cia` — Certified Internal Auditor (CIA)
- `public_service_regulatory_exams` -> `jp_npa_comprehensive_service_university` — 国家公務員採用総合職試験（大卒程度試験）
- `healthcare_professional_licenses` -> `jp_nurse_national_exam` — 看護師国家試験
- `care_welfare_qualifications` -> `jp_certified_care_worker_exam` — 介護福祉士国家試験
- `teaching_education_qualifications` -> `jp_teacher_qualification_exam` — 教員資格認定試験
- `language_proficiency_exams` -> `global_jlpt` — 日本語能力試験（JLPT）
- `occupational_safety_qualifications` -> `jp_first_class_health_officer` — 第一種衛生管理者免許試験
- `environmental_energy_qualifications` -> `jp_energy_manager_exam` — エネルギー管理士試験
- `transport_aviation_maritime_qualifications` -> `jp_airman_private_pilot` — 航空従事者技能証明（自家用操縦士）
- `logistics_supply_chain_qualifications` -> `jp_customs_broker_exam` — 通関士試験

## 8. Initial authority set

- `jp_ipa` — 独立行政法人情報処理推進機構 — home country: `JP` — jurisdiction: `JP`
- `global_cisco` — Cisco Systems, Inc. — home country: `US` — jurisdiction: `GLOBAL`
- `jp_mext` — 文部科学省 — home country: `JP` — jurisdiction: `JP`
- `jp_mlit` — 国土交通省 — home country: `JP` — jurisdiction: `JP`
- `jp_ecee` — 一般財団法人電気技術者試験センター — home country: `JP` — jurisdiction: `JP`
- `jp_jcci` — 日本商工会議所 — home country: `JP` — jurisdiction: `JP`
- `jp_saaj` — 公益社団法人日本証券アナリスト協会 — home country: `JP` — jurisdiction: `JP`
- `global_pmi` — Project Management Institute — home country: `US` — jurisdiction: `GLOBAL`
- `jp_moj` — 法務省・司法試験委員会 — home country: `JP` — jurisdiction: `JP`
- `global_iia` — The Institute of Internal Auditors — home country: `US` — jurisdiction: `GLOBAL`
- `jp_npa` — 人事院 — home country: `JP` — jurisdiction: `JP`
- `jp_mhlw` — 厚生労働省 — home country: `JP` — jurisdiction: `JP`
- `jp_sssc` — 公益財団法人社会福祉振興・試験センター — home country: `JP` — jurisdiction: `JP`
- `global_jlpt` — 国際交流基金・日本国際教育支援協会 — home country: `JP` — jurisdiction: `GLOBAL`
- `jp_safety_health_exam_association` — 公益財団法人安全衛生技術試験協会 — home country: `JP` — jurisdiction: `JP`
- `jp_eccj` — 一般財団法人省エネルギーセンター — home country: `JP` — jurisdiction: `JP`
- `jp_customs` — 税関（財務省） — home country: `JP` — jurisdiction: `JP`

## 9. Wave1 row contract

- `cx_country`: EXACT2
- `cx_jurisdiction`: EXACT2
- `cx_qualification_authority`: EXACT17
- `cx_qualification_entity`: EXACT20
- `cx_qualification_version`: EXACT20
- `cx_qualification_jurisdiction`: EXACT20
- `cx_qualification_knowledge_relation`: EXACT0
- total: EXACT81

## 10. Robot neutrality

Concrete qualification data remains independent of Robot model, series, persona, assignment, capability, or permission.

## 11. Mutation gate

This canonical document does not authorize the Wave1 INSERT.

The fixed EXACT81 SQL must pass typecheck and zero-conflict PREAPPLY before a separate explicit DB APPLY GO.

## 12. Canonical lineage

- 153 SHA256: `4a3cc68334958d665ef48430227c93fb413d0d4f10ebff4ef797504b63067e7e`
- 154 SHA256: `ddb5a6d656e0a9f85ca3e23079fcb7692075d01194b6d752bd79c4436a4edea4`

## 13. Canonical status

The A2Q concrete qualification initial seed architecture is canonical.

DB seed execution remains separately gated.
