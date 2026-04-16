# CX22073JW Secret Layer DDL Preparation Note
- project: CX22073JW
- document_type: secret-layer-ddl-preparation-note
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document states what must be clarified before exact DDL drafting starts for the secret layer.

## 2. Clarification Targets

### 2-1. Model Clarifications
Need to clarify:
- final protected object vocabulary
- exact main tables vs support tables
- relationship depth required at first release

### 2-2. Metadata Clarifications
Need to clarify:
- final privileged metadata vocabulary
- which metadata belongs in base tables vs bindings
- whether selector and target stay separate at first release

### 2-3. Policy Clarifications
Need to clarify:
- minimum isolation rules to encode structurally
- minimum policy concepts that must exist before tables
- whether any policy concept remains documentation-only at first release

### 2-4. Operations Clarifications
Need to clarify:
- minimum auditability readiness structure
- minimum change-control expectation
- minimum readiness verification expectation

## 3. DDL Drafting Rule
Exact DDL should begin only after:
- Phase0 gate is satisfied
- candidate vocabulary is stable enough
- normal/secret boundary remains explicit
- privileged metadata concepts are not ambiguous

## 4. Anti-Pattern Warning
Do not begin secret-layer DDL by:
- copying normal-layer tables and renaming them
- hiding privileged semantics inside ordinary columns
- assuming caller/scope fields alone are sufficient
- skipping privileged metadata

## 5. Recommended First DDL Slice
When exact DDL starts, the smallest sensible first slice will likely be:
- access route / privilege tier base metadata
- secret asset category
- secret asset
- secret target selector / target
- route binding base

## 6. Conclusion
This note exists to prevent premature secret-layer DDL drafting before the privileged architecture is stable enough.
