# ============================================================
# STREAM STUDIO PHASE 1 REAL BUILD FILESET DECISION MEMO
# ============================================================

status: decision-memo
layer: implementation-fileset-decision
system: applications
application: StreamStudio
owner: Boss
prepared_by: Zero

purpose:
Freezes the practical file-set decision for real Phase 1 build start.

decisions:
- logical file names are fixed before framework extension binding
- backend separates handler / validator / service / repository / mapper
- UI separates screen shell / state / component blocks
- tests separate backend / permission / audit / runtime / UI / mobile
- audit and runtime support are not deferred out of Phase 1
- no commerce or membership files enter the Phase 1 real build file set

non_decisions:
- concrete backend language
- concrete UI framework
- concrete test framework
- concrete build tool
- concrete directory prefix outside logical root families

reasoning:
The stack is not the thing being frozen here.
The responsibility boundaries and file intent are.

fixed_statement:
Phase 1 real build should begin from the frozen logical fileset above,
then bind extensions and framework syntax without changing responsibility boundaries.
