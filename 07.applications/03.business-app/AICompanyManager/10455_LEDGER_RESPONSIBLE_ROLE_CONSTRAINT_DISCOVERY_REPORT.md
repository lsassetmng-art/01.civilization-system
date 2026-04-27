# AICompanyManager Ledger Responsible Role Constraint Discovery Report

phase: Phase IS-IV repair
status: generated
generated_at: 20260427_111918

constraint_name:
- aicm_department_task_ledger_responsible_role_check

constraint_definition:
```
CHECK ((responsible_role = ANY (ARRAY['Manager'::text, 'Leader'::text, 'Worker'::text])))
```

selected_responsible_role_value:
- Manager

notes:
- selected_responsible_role_value is the first quoted literal discovered from the CHECK constraint.
- This value is used only for rollback smoke.
