# R8Y PMLW table mapping

## 1. Manager大項目

Table:
- business.aicm_manager_major_work_item

Key:
- aicm_manager_major_work_item_id

自動分解対象:
- decomposition_status_code = assigned_to_leader
- handoff_status_code = handed_off

自動分解後:
- decomposition_status_code = decomposed
- handoff_status_code = completed

## 2. Leader中項目

Table:
- business.aicm_leader_middle_work_item

FK:
- aicm_manager_major_work_item_id -> business.aicm_manager_major_work_item

Insert mapping:
- owner_civilization_id = manager.owner_civilization_id
- aicm_user_company_id = manager.aicm_user_company_id
- aicm_manager_major_work_item_id = manager.aicm_manager_major_work_item_id
- aicm_user_company_department_id = manager.aicm_user_company_department_id
- aicm_user_company_section_id = manager.aicm_user_company_section_id
- middle_item_name = manager.major_item_name
- middle_item_description = manager.major_item_description
- leader_robot_label = manager.assigned_leader_label or 自動割当
- breakdown_status_code = worker_units_created
- handoff_status_code = handed_off
- priority_code = manager.priority_code
- due_date = manager.due_date
- reference_files_text = manager.reference_files_text
- supplemental_materials_text = manager.supplemental_materials_text
- applicable_rules_text = manager.applicable_rules_text
- note = R8Z auto-generated from Manager大項目
- display_order = manager.display_order
- metadata_jsonb.auto_decomposition_version = r8z_v1

## 3. 成果物要件

Table:
- business.aicm_leader_deliverable_requirement

FK:
- aicm_leader_middle_work_item_id -> business.aicm_leader_middle_work_item

Insert mapping:
- owner_civilization_id = middle.owner_civilization_id
- aicm_user_company_id = middle.aicm_user_company_id
- aicm_leader_middle_work_item_id = middle.aicm_leader_middle_work_item_id
- deliverable_name = middle.middle_item_name + 成果物
- deliverable_type_code = operation
- deliverable_description = middle.middle_item_description
- required_quality_text = 会社共通ルールと該当業務ルールに従う
- acceptance_criteria_text = 大項目の目的を満たし、レビュー可能な作業結果が作成されていること
- review_required_flag = true
- requirement_status_code = ready_for_worker
- priority_code = middle.priority_code
- due_date = middle.due_date
- metadata_jsonb.auto_decomposition_version = r8z_v1

## 4. Worker作業単位

Table:
- business.aicm_worker_work_unit

FK:
- aicm_leader_middle_work_item_id -> business.aicm_leader_middle_work_item
- aicm_leader_deliverable_requirement_id -> business.aicm_leader_deliverable_requirement

Insert mapping:
- owner_civilization_id = middle.owner_civilization_id
- aicm_user_company_id = middle.aicm_user_company_id
- aicm_leader_middle_work_item_id = middle.aicm_leader_middle_work_item_id
- aicm_leader_deliverable_requirement_id = requirement.aicm_leader_deliverable_requirement_id
- work_unit_name = middle.middle_item_name + 作業
- work_unit_description = middle.middle_item_description
- work_type_code = operation
- assigned_worker_label = resolved worker label or 未割当
- worker_model_code = resolved worker model or empty
- work_status_code = todo
- review_status_code = required
- priority_code = middle.priority_code
- due_date = middle.due_date
- input_context_text = Manager/Leader/成果物要件の結合要約
- expected_output_text = 指定された大項目について実行可能な成果物または作業結果を作成する
- metadata_jsonb.auto_decomposition_version = r8z_v1
