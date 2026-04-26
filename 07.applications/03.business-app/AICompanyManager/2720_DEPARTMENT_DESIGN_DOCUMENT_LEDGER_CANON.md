# ============================================================
# AICompanyManager Department Design Document Ledger Canon
# ============================================================

phase: Phase AC
status: department-design-document-ledger-canon-created

## 1. Canon

Design document ledgers are held by departments / organization units.

A department ledger contains:

- design documents
- specifications
- UI documents
- API documents
- DB documents
- test documents
- handoff documents
- evidence documents
- reference materials

## 2. Explicit Scope

Every ledger item must have explicit target scope:

- target type
- target category
- target name
- target phase
- document role
- canonical / reference / evidence
- version label

Do not rely on file name guessing as the canonical matching method.

## 3. Task Binding

Leader-created task rows bind explicitly to ledger items.

A task row records:

- task id
- deliverable unit
- ledger item ids
- reading mode
- required / optional
- priority
