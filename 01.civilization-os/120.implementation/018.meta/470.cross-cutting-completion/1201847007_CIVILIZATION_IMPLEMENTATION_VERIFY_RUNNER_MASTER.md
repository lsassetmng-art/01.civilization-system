# ============================================================
# CIVILIZATION IMPLEMENTATION VERIFY RUNNER MASTER
# ============================================================

status: implementation-prep-verify-runner
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201847007
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the verify runner used after apply execution.

## 2. Scope

This document governs:

- existence checks
- marker checks
- duplicate checks
- path checks
- section checks
- blocker checks

## 3. Verification Classes

Required verification classes:

- file existence verification
- patch marker verification
- duplicate identity verification
- required section verification
- integrated meta linkage verification
- blocker count verification

## 4. Minimum Verify Outputs

Every verify run must produce:

- verified file count
- missing file count
- duplicate count
- marker failure count
- blocker count
- final pass/fail result

## 5. Blocking Failures

The verify runner must fail blocking when:

- a required file is missing
- duplicate canonical identity exists
- required section is absent
- blocker count is non-zero
- required master/meta document is missing

## 6. Non-Blocking Failures

The verify runner may record non-blocking findings such as:

- optional file absent
- optional patch target absent
- documentation note gaps outside declared scope

## 7. Verification Order

Recommended order:

1. anchor docs
2. bundle target docs
3. marker presence
4. required section presence
5. meta docs
6. blocker summary

## 8. Acceptance Checklist

- verify classes fixed
- blocking rules fixed
- output minimum fixed
- verification order fixed
