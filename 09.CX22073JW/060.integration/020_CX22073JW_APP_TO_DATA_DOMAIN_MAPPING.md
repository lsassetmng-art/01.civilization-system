# CX22073JW App to Data Domain Mapping
- project: CX22073JW
- document_type: app-to-data-domain-mapping
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document maps consuming apps/systems to the data domains they primarily depend on.

## 2. Mapping

### 2-1. Portal Site
Main domains:
- Knowledge Core
- Summaries
- Retrieval Strategy
- Answer Style
- Source / Review

### 2-2. CivilizationOS / PersonaOS / BusinessOS / LifeOS support
Main domains:
- Knowledge Core
- Entity / Character
- Relation Knowledge
- Retrieval Strategy
- Answer Style

### 2-3. BusinessOS AI worker
Main domains:
- Knowledge Core
- Source / Review
- Registry / Governance
- future business fixed/reference areas

### 2-4. BodyMetrics
Main domains:
- Health Reference
- Health Score
- Food / Nutrition
- Intake Reference
- Lifestyle Benchmark

### 2-5. MealPlanner
Main domains:
- Food / Nutrition
- Intake Reference
- Recipe / Meal Plan

### 2-6. TrainingCoach
Main domains:
- Health Reference
- Intake Reference
- Exercise Reference
- Lifestyle Benchmark

### 2-7. LegalSupport
Main domains:
- Knowledge Core
- Legal Support
- Source / Review
- Answer Style

### 2-8. InheritanceSupport
Main domains:
- Inheritance Support
- End-of-Life Support
- Life Event Template
- Knowledge Core

### 2-9. EndOfLifePlanner
Main domains:
- End-of-Life Support
- Life Event Template
- Knowledge Core

### 2-10. LifePlanner
Main domains:
- Life Event Template
- Knowledge Core
- future lifestyle / guidance domains

### 2-11. Study Apps
Main domains:
- Knowledge Core
- Academic Classification
- Audience / Difficulty
- Learning Path
- Source / Review
- Answer Style

### 2-12. CareerLaunch
Main domains near CX22073JW:
- Knowledge Core
- Answer Style
- Source / Review
- future reusable document/interview templates
- future persona/background option master

Runtime workspace domains remain outside CX22073JW.

## 3. Integration Rule
Apps should consume:
- fixed/reference/template data from CX22073JW
- runtime/user-specific data from app-side schemas

## 4. Conclusion
This mapping clarifies which app depends on which reusable domain and protects the placement boundary.
