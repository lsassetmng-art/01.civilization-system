# COMMON OS TARGET OS ADOPTION PLAN TEMPLATE CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document defines the standard template for producing a CommonOS adoption plan for one target OS, app, or ERP surface.

## Required sections

### 1. Target declaration
- target name
- target category
- target design root
- target implementation root
- current phase

### 2. CommonOS adoption boundary
- surfaces to adopt from CommonOS
- surfaces not adopted from CommonOS
- business-canon boundaries that remain local

### 3. Shared UI adoption
- shell
- list / detail / form / search
- dialog / toast / confirm
- queue / retry / conflict
- attachment / help / notification
- tokens / density / variants

### 4. Non-UI shared-foundation adoption
- transport exterior discipline
- local runtime pattern
- draft / queue / sync pattern
- validation presentation pattern
- verify templates
- runtime skeleton usage

### 5. Variant plan
- required variants
- ERP-dense needs if relevant
- target-specific presentation exceptions

### 6. Offline-first plan
- local-read coverage
- local-edit coverage
- local-draft coverage
- queue coverage
- sync trigger plan

### 7. Excluded local business canon
- pricing
- entitlement
- access decision core
- approval authority
- transaction truth
- any other domain-owned canon

### 8. Execution order
- adoption order by surface
- risk points
- acceptance checks
