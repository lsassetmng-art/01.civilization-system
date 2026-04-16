# CX22073JW Foundation Capability Map
- project: CX22073JW
- document_type: foundation-capability-map
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document maps the main foundation capabilities of CX22073JW.

## 2. Capability Areas

### 2-1. Knowledge Serving
Role:
- provide article / chunk / faq / scope based knowledge serving

Main assets:
- knowledge core tables
- caller / scope / route_policy

Primary consumers:
- Portal Site
- OS support
- consultation / study apps

### 2-2. Knowledge Structuring
Role:
- structure concepts, characters, aliases, relations, classifications

Main assets:
- entity / character
- relation knowledge
- academic classification
- audience / difficulty
- summaries
- learning paths

Primary consumers:
- study apps
- support apps
- RAG / retrieval layer

### 2-3. Trust / Governance
Role:
- support source / review / publication / registry governance

Main assets:
- source / review
- registry / version / publication tables

Primary consumers:
- governance
- operations
- release control

### 2-4. Health Compare / Score Foundation
Role:
- provide health reference lookup
- provide score / total band / comment basis

Main assets:
- health reference tables
- health score tables
- bodymetrics helper views/functions

Primary consumers:
- BodyMetrics

### 2-5. Nutrition / Food Recommendation Foundation
Role:
- provide food dictionary
- provide intake reference
- provide deficit -> candidate basis

Main assets:
- food / nutrient tables
- intake reference tables
- recipe / meal tables
- mealplanner helper views/functions

Primary consumers:
- MealPlanner
- TrainingCoach adjacency
- BodyMetrics adjacency

### 2-6. Operations / Verification Foundation
Role:
- monitor readiness, linkage, coverage, runbook validity

Main assets:
- monitoring views
- runbook SQL
- helper verification functions

Primary consumers:
- development
- operations

### 2-7. Foundation Intelligence / Optimization
Role:
- optimize storage structure
- optimize placement and organization
- support indexing and retrieval efficiency
- support summarization/compression-oriented organization
- improve preservation efficiency of stored assets

Main assets:
- normalized reusable models
- abstraction views
- helper functions
- summary/index support logic
- future optimization helpers

Primary consumers:
- the CX22073JW storage foundation itself
- operations
- retrieval layer
- future internal optimization services

## 3. Capability Layering

### Layer A
Knowledge / classification / trust core

### Layer B
Reference logic and abstraction

### Layer C
Compare / score / candidate extraction

### Layer D
Foundation intelligence / optimization support

### Layer E
Runbook / verification / implementation-ready packaging

## 4. Important Distinction
CX22073JW foundation intelligence is not the same as a front-facing assistant.

It mainly acts as:
- storage intelligence
- organization intelligence
- indexing intelligence
- summarization/compression support intelligence

User-facing full assistant logic remains a different concern.

## 5. Conclusion
CX22073JW is not only a table store.
It is a layered foundation capability set composed of:
- knowledge structure
- trust/governance
- compare/score logic
- recommendation logic
- foundation intelligence / optimization
- operational verification assets
