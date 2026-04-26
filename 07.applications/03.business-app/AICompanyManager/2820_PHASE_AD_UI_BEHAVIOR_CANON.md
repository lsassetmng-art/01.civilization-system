# ============================================================
# AICompanyManager Phase AD UI Behavior Canon
# ============================================================

phase: Phase AD
status: phase-ad-ui-behavior-canon-created

## 1. Required Screens

- company dashboard
- company rules
- department task ledger
- work packet
- department inbox
- handoff

## 2. Department Task Ledger Screen

The department task ledger screen contains:

- department selector
- deliverable name
- task name
- work type
- responsible role
- responsible robot
- reference file metadata
- attachment file metadata
- status
- handoff link

## 3. Work Packet Screen

Work packet screen remains structured and minimizes free text.

Free text:
- work packet name
- short supplemental note

Everything else:
- dropdown
- checkbox
- preset
- file attachment
- generated summary

## 4. Binding Rule

Work packets and Leader task rows bind to department task ledger rows by:

- deliverable name
- task row id
- selected reference files
- selected applicable rules

Do not infer the design document only from the file name.
