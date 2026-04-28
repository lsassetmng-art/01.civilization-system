# AICompanyManager Phase WJ-WM robot candidate label cleanup roadmap

## Phase
- WJ-WM

## Current position
BusinessOS DB-backed robot_pool connection works.
Role-specific exact filter works.
Candidate counts are reasonable:
- President
- Manager
- Leader
- Worker

## Problem
Candidate labels are correct but hard to read.
Example:
ASIC Leader3 / BYD2-003 / President/Manager/ExecutiveManager / BusinessOS DB

## This phase
Change only select option labels:
- Put current placement role first.
- Put robot name and model next.
- Put multiple supported roles as a support note.
- Keep BusinessOS DB source visible.
- Keep exact filter.
- Keep Android select stability.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
