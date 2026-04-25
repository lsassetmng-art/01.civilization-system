# ============================================================
# STREAM STUDIO PHASE 1 EXECUTION ORDER AND CHECKPOINTS
# ============================================================

status: execution-plan
layer: implementation-order
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Defines the concrete work order and checkpoints for Phase 1.

execution_order:
  step_1_foundation_bind:
    - bind enum ledger
    - bind field dictionary
    - bind validation / error code table
    - bind permission matrix minimum roles
    checkpoint:
      - frozen ledgers mapped without renaming drift

  step_2_db_base:
    - create required phase 1 tables
    - create required indexes
    - create audit and runtime base tables
    checkpoint:
      - project / upload / draft / publish records persist correctly

  step_3_backend_base:
    - implement project endpoints
    - implement upload endpoints
    - implement draft endpoints
    - implement publish endpoints
    checkpoint:
      - exact API contracts return standardized envelopes

  step_4_ui_base:
    - implement home dashboard shell
    - implement upload queue
    - implement project detail minimal tabs
    - implement publish settings
    checkpoint:
      - phase 1 screens execute exact actions end-to-end

  step_5_runtime_base:
    - implement scheduled publish job registration
    - implement retry classification base
    - implement dead-letter base
    checkpoint:
      - scheduled publish intent is auditable and visible

  step_6_verify:
    - run minimum tests
    - capture audit outputs
    - capture runtime outputs
    checkpoint:
      - phase 1 verify pack passes

hard_gates:
- do not start step_3 before step_2 succeeds
- do not start step_4 before exact backend contracts are callable
- do not mark phase 1 done before step_6 succeeds

phase_1_exit_conditions:
- project / upload / draft / publish base works end-to-end
- blockers are distinct
- audit exists
- runtime visibility exists
- no architecture reopening is needed
