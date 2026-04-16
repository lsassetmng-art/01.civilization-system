# ============================================================
# PROJECT FLOW IMPLEMENTATION START EXECUTION SEQUENCE NOTE
# ============================================================

status: canonical
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Explains why the implementation-start sequence is ordered this way.

sequence_reasoning:
- module skeleton planning comes first to stabilize package ownership
- screen state/event planning comes next to stabilize per-screen implementation slices
- customer material planning follows because it is mostly local and depends on state/use-case shape
- local cache and sync planning follows after module and boundary direction are clearer
- repository and gateway planning follows once state/event and boundary-aware inputs are clearer

important_note:
This is an execution-sequence preference,
not an absolute ban on iterative overlap.
However,
overlap should not hide blocked boundary questions.
