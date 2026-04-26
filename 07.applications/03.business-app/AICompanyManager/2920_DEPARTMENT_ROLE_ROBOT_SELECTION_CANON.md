# ============================================================
# AICompanyManager Department Role Robot Selection Canon
# ============================================================

phase: Phase AE
status: department-role-robot-selection-canon-created

## 1. Canon

When assigning a department task row, the robot candidate list must be filtered by:

- selected department
- selected role

## 2. Rule

If selected role is:

- Manager: show Manager candidates from the selected department
- Leader: show Leader candidates from the selected department
- Worker: show Worker candidates from the selected department

## 3. Purpose

This prevents mismatch such as:

- responsible role: Manager
- responsible robot: Leader Alpha@Leader

## 4. Department Instruction

When a work packet is sent to a department, the routing method should decide which candidate pool is used:

- 部門Managerに渡す
- 部門Leaderに渡す
- 部門全体に通知
- 子部門含む
- 指定ロールへ配布
