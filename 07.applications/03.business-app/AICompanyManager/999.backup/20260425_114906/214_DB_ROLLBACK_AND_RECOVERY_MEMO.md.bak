# ============================================================
# AICompanyManager DB Rollback and Recovery Memo
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
phase: Phase D
status: rollback-recovery-memo-created

## 1. Purpose

This memo defines the rollback and recovery stance for AICompanyManager DB apply.

## 2. Current Apply Type

Initial apply is additive-only.

It creates:
- schema if not exists
- new tables if not exists
- new indexes if not exists
- table comments

It does not:
- drop
- truncate
- delete
- update existing data
- rename tables
- rename columns
- replace existing policies

## 3. Recovery Stance

Because the initial apply is additive-only, preferred recovery is not destructive rollback.

Preferred actions:
1. Stop using the new app tables.
2. Mark the apply as failed in meta report.
3. Create corrective additive migration.
4. Avoid dropping tables unless Boss gives separate explicit destructive approval.

## 4. Destructive Rollback

Destructive rollback is not included in the default package.

Destructive rollback would require:
- Boss explicit destructive GO
- Sato DB review
- backup evidence
- table usage confirmation
- data export if any data exists

## 5. RLS Note

RLS exact policy creation is deferred.
If RLS is later applied incorrectly, recovery should use additive policy correction or policy disable only after review.
