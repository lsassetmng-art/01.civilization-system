# ============================================================
# CIVILIZATION REQUEST CLASSIFICATION MATRIX
# ============================================================

status: classification-matrix
layer: implementation
domain: 018.meta
subdomain: 730.request-intake-and-routing-pack
document_id: 1201851302
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the matrix for classifying future incoming requests.

## 2. Classification Matrix

class_01:
- name: read_only_confirmation
- meaning: confirm current posture without changing it

class_02:
- name: nonsemantic_alignment_request
- meaning: fix navigation, links, metadata, or other non-semantic alignment

class_03:
- name: recovery_request
- meaning: restore baseline after drift, wrong start, or confusion

class_04:
- name: governed_semantic_change_request
- meaning: reopen, reconsider, or revise posture through governance

class_05:
- name: invalid_or_shortcut_request
- meaning: request attempts to bypass canonical path or lacks minimum validity

## 3. Classification Rule

If a request could change posture meaning in any realistic way,
classify it as governed_semantic_change_request.

## 4. Hard Rule

Do not downgrade semantic requests into nonsemantic handling
for convenience.

## 5. Acceptance Checklist

- classification matrix fixed
- classification rule fixed
- no-convenience-downgrade rule fixed
