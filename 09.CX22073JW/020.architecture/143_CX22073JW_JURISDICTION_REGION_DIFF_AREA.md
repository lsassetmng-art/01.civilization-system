# CX22073JW Jurisdiction / Region Difference Area
- project: CX22073JW
- document_type: data-area-design
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This area manages jurisdictional and regional system differences.

## 2. Main Role
- legal region master
- administrative region master
- procedure scope by jurisdiction
- regional requirement differences
- public office reference

## 3. Candidate Tables
- `jurisdiction_master`
- `region_master`
- `legal_region_requirement`
- `procedure_scope_master`
- `public_office_reference`

## 4. Main Consumers
- LegalSupport
- InheritanceSupport
- EndOfLifePlanner

## 5. Why It Belongs in CX22073JW
Jurisdictional differences are reusable reference knowledge and should be centralized.

## 6. Priority
High
