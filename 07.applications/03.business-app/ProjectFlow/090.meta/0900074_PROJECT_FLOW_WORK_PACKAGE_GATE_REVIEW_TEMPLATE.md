# ============================================================
# PROJECT FLOW WORK PACKAGE GATE REVIEW TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for running a gate review
before starting a work package.

gate_review_fields:
- package_id
- package_name
- scope_type
- prerequisite_documents_confirmed: yes_no
- ownership_conflict_present: yes_no
- mediation_conflict_present: yes_no
- blocked_reason_present: yes_no
- safe_to_start: yes_no
- notes

gate_rules:
- local_safe package may start only when prerequisite documents are confirmed
- boundary_sensitive package may start only when no relevant conflict remains
- blocked package may not start as active work
