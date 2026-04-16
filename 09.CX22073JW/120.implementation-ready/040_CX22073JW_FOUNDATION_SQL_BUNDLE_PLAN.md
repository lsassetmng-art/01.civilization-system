# CX22073JW Foundation SQL Bundle Plan
- project: CX22073JW
- document_type: foundation-sql-bundle-plan
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document defines how foundation SQL assets should be grouped into bundles.

## 2. Bundle Groups

### 2-1. Bundle A: Core DDL
Contents:
- phase1 adopted reference tables
- indexes
- constraints
- triggers

Purpose:
- establish base schema structures

### 2-2. Bundle B: Core Seed
Contents:
- health reference seed
- health score seed
- ingredient support seed
- nutrition reference seed

Purpose:
- make compare/score/candidate logic runnable

### 2-3. Bundle C: Monitoring Views
Contents:
- readiness views
- linkage views
- runtime visibility views

Purpose:
- verify bundle A/B correctness

### 2-4. Bundle D: BodyMetrics Helper Logic
Contents:
- bodymetrics helper views
- bodymetrics score/total/comment functions
- sample verification SQL

Purpose:
- provide reusable score foundation

### 2-5. Bundle E: MealPlanner Helper Logic
Contents:
- mealplanner helper views
- nutrition compare functions
- deficit -> food/recipe functions
- sample verification SQL

Purpose:
- provide reusable recommendation foundation

### 2-6. Bundle F: Runbook SQL
Contents:
- multi-compare runbook
- deficit runbook
- meal-slot separated runbook

Purpose:
- provide operations-side verification and scenario testing

## 3. Execution Order
Recommended execution order:
1. Bundle A
2. Bundle B
3. Bundle C
4. Bundle D
5. Bundle E
6. Bundle F

## 4. Packaging Rule
Each bundle should be:
- idempotent where possible
- reviewable in one block
- separable from runtime app code
- safe for repeated verification use

## 5. Future Bundle Extensions
Future groups:
- exercise/lifestyle bundle
- legal support bundle
- inheritance/end-of-life bundle
- career reusable template bundle

## 6. Conclusion
Foundation SQL should be packaged as formal reusable bundles, not scattered ad-hoc fragments.
