# ============================================================
# CIVILIZATION REQUEST DUPLICATE AND NEAR DUPLICATE CATALOG
# ============================================================

status: duplicate-catalog
layer: implementation
domain: 018.meta
subdomain: 770.request-dependency-and-overlap-pack
document_id: 1201851702
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how duplicate and near-duplicate request cases are recognized.

## 2. Duplicate Families

duplicate_01:
- name: exact_duplicate
- meaning: same intent, same action family, same required path

duplicate_02:
- name: near_duplicate_same_goal
- meaning: wording differs but end goal and routing are materially the same

duplicate_03:
- name: near_duplicate_shifted_scope
- meaning: looks similar but scope boundary differs enough to matter

duplicate_04:
- name: false_duplicate
- meaning: superficially similar wording but actually different request class or path

## 3. Detection Rule

If two requests would resolve through the same routed path and same result family,
treat them as duplicate or near-duplicate first before opening separate active work.

## 4. Hard Rule

Similarity of topic alone does not prove duplication.

## 5. Acceptance Checklist

- duplicate families fixed
- detection rule fixed
- no-topic-only-duplication rule fixed
