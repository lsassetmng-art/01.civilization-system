# AICompanyManager Ledger All Check Constraint Discovery Report

phase: Phase IS-IV repair
status: generated
generated_at: 20260427_112040

priority_constraint:
```
CHECK ((priority = ANY (ARRAY['高'::text, '中'::text, '低'::text])))
```

selected_priority_value:
- 高

responsible_role_constraint:
```
CHECK ((responsible_role = ANY (ARRAY['Manager'::text, 'Leader'::text, 'Worker'::text])))
```

selected_responsible_role_value:
- Manager

task_status_constraint:
```
CHECK ((task_status = ANY (ARRAY['未着手'::text, '進行中'::text, 'レビュー中'::text, '完了'::text, '保留'::text])))
```

selected_task_status_value:
- 未着手

work_type_constraint:
```
CHECK ((work_type = ANY (ARRAY['設計'::text, '実装'::text, 'デザイン'::text, '修正'::text, '調査'::text, 'レビュー'::text, '資料作成'::text, '納品準備'::text, '引き継ぎ'::text])))
```

selected_work_type_value:
- 設計

notes:
- Each selected value is the first quoted literal discovered from the corresponding CHECK constraint.
- Values are used only for rollback smoke.
