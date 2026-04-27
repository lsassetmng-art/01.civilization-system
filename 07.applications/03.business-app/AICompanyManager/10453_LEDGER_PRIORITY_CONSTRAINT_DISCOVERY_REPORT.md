# AICompanyManager Ledger Priority Constraint Discovery Report

phase: Phase IS-IV repair
status: generated
generated_at: 20260427_111806

constraint_name:
- aicm_department_task_ledger_priority_check

constraint_definition:
```
CHECK ((priority = ANY (ARRAY['高'::text, '中'::text, '低'::text])))
```

selected_priority_value:
- 高

notes:
- selected_priority_value is the first quoted literal discovered from the CHECK constraint.
- This value is used only for rollback smoke.
