# CX22073JW Phase1 SQL Asset Ledger
- project: CX22073JW
- document_type: phase1-sql-asset-ledger
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document records the main phase1 SQL asset groups.

## 2. Asset Groups

### 2-1. DDL Apply Assets
Role:
- create phase1 reference tables
- add constraints/indexes/triggers

Representative contents:
- health reference DDL
- health score DDL
- ingredient support DDL
- nutrition reference DDL

### 2-2. Seed Assets
Role:
- load bootstrap reference data

Representative contents:
- health measurement conditions
- health profiles and sources
- score rule sets / bands / comments / composite rules
- ingredient category / allergen / tag / price band
- nutrition profiles / items / sources / references

### 2-3. Monitoring Assets
Role:
- verify counts
- verify readiness
- verify linkage

Representative contents:
- count check SQL
- readiness views
- runtime verification views

### 2-4. BodyMetrics Helper Assets
Role:
- metric compare
- total band resolve
- comment candidate resolve

Representative contents:
- helper views
- helper functions
- multi-score runbook SQL

### 2-5. MealPlanner Helper Assets
Role:
- intake compare
- deficit extraction
- food/recipe candidate extraction

Representative contents:
- helper views
- helper functions
- deficit runbook SQL
- meal-slot runbook SQL

## 3. Asset Nature
These SQL assets are implementation-ready foundation assets.
They are not final app runtime code, but they are directly reusable for:
- schema apply
- seed apply
- logic verification
- integration preparation

## 4. Next Expansion Targets
After phase1, new SQL asset groups are expected for:
- exercise reference
- lifestyle benchmark
- legal/inheritance/end-of-life helpers
- career reusable template helpers

## 5. Conclusion
Phase1 SQL assets should be treated as a formal part of the foundation package, not temporary notes.
