# ============================================================
# CIVILIZATION FUTURE SESSION START PROTOCOL
# ============================================================

status: session-protocol
layer: implementation
domain: 018.meta
subdomain: 640.baseline-freeze-and-successor-pack
document_id: 1201850404
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact protocol for starting future sessions from the current baseline.

## 2. Start Protocol

Future session start order:

1. read canonical posture handoff
2. read canonical baseline snapshot
3. decide whether the intent is:
   - no change
   - decision revision
   - phase1 reopen
   - execution resume reconsideration
   - phase2 entry reconsideration
4. if no change, stop
5. if change is intended, use the governed template path

## 3. Session Classification Rule

Every future session should explicitly classify itself as one of:

- posture_read_only
- decision_update_intended
- phase1_reopen_intended
- execution_resume_reconsideration_intended
- phase2_entry_reconsideration_intended

## 4. Hard Rule

Do not start from old execution history first.
Start from the frozen current baseline first.

## 5. Acceptance Checklist

- start protocol fixed
- session classification rule fixed
- baseline-first rule fixed
