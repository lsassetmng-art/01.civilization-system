# ============================================================
# LIFE PLANNER CONSISTENCY AUDIT CHECKLIST
# ============================================================

status: draft
system: LifePlanner
layer: 130.development
subfolder: 050.design-audit
owner: Boss
prepared_by: Zero
schema: life

audit_checklist:
  naming:
    - [ ] life_plan vs plan wording aligned
    - [ ] family_viewer / family_editor naming aligned
    - [ ] scenario decision enum wording aligned
    - [ ] reflection candidate wording aligned

  storage:
    - [ ] all persistence references point to life schema
    - [ ] logical tables map to all major UI sections
    - [ ] derived values are not treated as stored fields

  access:
    - [ ] family_viewer never gets edit permission
    - [ ] family_editor never gets final share control
    - [ ] owner-only actions are consistent across docs
    - [ ] sensitive category visibility rules match share flags

  pricing:
    - [ ] Family-only features match all docs
    - [ ] Free scope never contradicts screen rules
    - [ ] pricing guide triggers align with UI blocking rules

  runtime:
    - [ ] state transitions match payload actions
    - [ ] validation rules match screen required fields
    - [ ] reflection apply side effects match review log policy

  operations:
    - [ ] review cycle docs align with notification docs
    - [ ] dashboard derived numbers align with source entities
