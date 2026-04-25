# ============================================================
# CIVILIZATION PHASE1 CLOSE BLOCKER CLASSIFICATION EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 570.phase1-close-exact-design
document_id: 1201849702
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact blocker classification for phase 1 close decisions.

## 2. Blocker Classes

Canonical blocker classes:

- class_a_close_blocker
- class_b_resume_blocker
- class_c_transition_blocker
- class_d_attention_only

## 3. Class Rules

class_a_close_blocker:
- prevents phase1 close entirely
- examples: missing closure logic, unresolved high-priority design gap

class_b_resume_blocker:
- prevents execution resume
- does not necessarily prevent design completion

class_c_transition_blocker:
- prevents transition to phase 2
- examples: no explicit phase2 candidate, unresolved transition condition

class_d_attention_only:
- does not block close by itself
- requires documentation in close decision report

## 4. Required Blocker Fields

Each blocker record must contain:

- blocker_id
- blocker_class
- blocker_scope
- blocker_summary
- blocker_impact
- resolution_path_note
- close_blocking_flag
- resume_blocking_flag
- transition_blocking_flag

## 5. Acceptance Checklist

- blocker classes fixed
- class rules fixed
- required blocker fields fixed
