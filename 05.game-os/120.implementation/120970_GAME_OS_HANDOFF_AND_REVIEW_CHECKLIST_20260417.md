# ============================================================
# GAME OS HANDOFF AND REVIEW CHECKLIST
# ============================================================

status: active
system: Civilization System
os: GameOS
folder: 120.implementation
prepared_for: Boss
prepared_by: Zero
updated_at: 2026-04-17
language: English

purpose:
This checklist is for internal handoff, review, or takeover situations.

usage_cases:
- another person resumes work
- a batch is handed to reviewer
- implementation pauses and later resumes
- acceptance review begins

---

## 0. Quick handoff checklist

Confirm all of the following before handoff:
- current active batch is known
- current active modules are known
- status board is updated
- worklog is updated
- blockers are updated
- gaps are updated
- decisions are updated
- relevant acceptance evidence is linked or marked missing

---

## 1. Design authority checklist

The receiver should confirm:
- root files are present
- implementation-start chain is known
- current batch runner pack is known
- module memo is known
- acceptance anchors are known

---

## 2. Operational continuity checklist

The receiver should know:
- today's or latest concrete next step
- whether any blocker pauses work
- whether any gap forces redesign or clarification
- whether next batch handoff is already allowed or still blocked

---

## 3. Review checklist

A reviewer should confirm:
- evidence exists for claimed behavior
- claimed behavior matches canonical design meaning
- no blocker is silently hidden
- no local implementation detail changed canonical semantics without artifact update

---

## 4. Handoff failure signs

Handoff quality is poor if:
- no one can say which module is active
- blocker status is unclear
- evidence is missing but work is claimed complete
- behavior differs from design but no decision or gap exists
- next step is unclear

---

## 5. Checklist success meaning

Handoff and review are healthy when:
- the next person can continue without rediscovering context
- the reviewer can judge without guesswork
- the trace from design to evidence stays intact
