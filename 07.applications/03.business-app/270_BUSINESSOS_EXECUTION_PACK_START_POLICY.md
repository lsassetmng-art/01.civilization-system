# ============================================================
# BUSINESSOS EXECUTION PACK START POLICY
# ============================================================

status: canonical
layer: meta
system: applications
domain: business-app
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: execution-pack-start-policy

purpose:
Defines the cross-app policy to use when the project begins turning
planning-closed BusinessOS apps into execution packs.

cross_app_rules:
- start from safe output roots such as $HOME/.tmp
- do not inject generated files into live source trees first
- use command-pack sequence only
- keep additive only
- keep DTO names stable once frozen
- do not execute SQL before review
- do not combine multiple app execution packs in one uncontrolled step
- prefer one-app closure before the next app starts execution

review_gates:
- gate_01_contract:
  - DTO names match frozen design docs
- gate_02_boundary:
  - controller, service, repository, and audit seams remain separated
- gate_03_schema:
  - additive DDL still preserves physical schema core
- gate_04_execution_scope:
  - safe-root generation succeeds before any relocation
- gate_05_sql:
  - SQL apply remains blocked until explicit review completion

default_first_execution_pattern:
- create execution-pack entry memo
- create safe stub generation protocol
- create SQL apply gate note
- only then generate actual safe-root stubs
