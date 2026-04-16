# TALENT GROWTH EXACT TABLE COLUMN FIXED

status: draft-exact-column-fixed
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の主要テーブルについて、
exact column を固定するための資料である。

原則:
- additive first
- 表示名と内部keyを分離する
- id / code / label を混同しない
- 多言語対応
- 多通貨対応
- 監査可能性
- AI補助は別ログで追跡する

# 1. 共通監査列
以下は主要業務テーブルで共通採用候補とする。

- created_at
- created_by
- updated_at
- updated_by
- deleted_at
- deleted_by
- audit_trace_id
- version_no

# 2. employee_profile
目的:
- 人材基本情報の正本保持

columns:
- employee_id
- company_id
- employee_code
- external_employee_key
- full_name
- full_name_kana
- display_name
- email
- phone
- employment_type_code
- organization_id
- position_title
- current_job_family_id
- current_job_role_id
- current_grade_id
- manager_employee_id
- work_location_code
- country_code
- preferred_language_code
- reporting_currency_code
- hire_date
- termination_date
- is_active
- career_preference_text
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 3. employee_academic_history
目的:
- 学歴と関連度の保持

columns:
- employee_academic_history_id
- company_id
- employee_id
- school_name
- faculty_name
- department_name
- degree_code
- major_name
- graduation_status_code
- graduation_date
- academic_relevance_score
- evidence_file_id
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 4. employee_certification
目的:
- 資格 / 免許の保有状態管理

columns:
- employee_certification_id
- company_id
- employee_id
- certification_id
- certification_name_snapshot
- issuer_name_snapshot
- license_number
- acquired_date
- expiry_date
- renewal_required
- certification_status_code
- last_renewed_at
- next_renewal_due_at
- source_amount
- source_currency
- reporting_amount
- reporting_currency
- fx_rate
- fx_rate_applied_at
- evidence_file_id
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 5. employee_certification_renewal
目的:
- 資格更新履歴

columns:
- employee_certification_renewal_id
- company_id
- employee_certification_id
- employee_id
- renewed_at
- old_expiry_date
- new_expiry_date
- renewal_cost_source_amount
- renewal_cost_source_currency
- renewal_cost_reporting_amount
- renewal_cost_reporting_currency
- renewal_fx_rate
- renewal_fx_rate_applied_at
- evidence_file_id
- renewal_note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 6. skill_master
目的:
- スキル辞書正本

columns:
- skill_id
- company_id
- skill_code
- skill_category_code
- parent_skill_id
- label_ja
- label_en
- label_zh
- label_ko
- description_text
- skill_level_min
- skill_level_max
- is_active
- sort_order
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 7. employee_skill
目的:
- 個人スキル状態

columns:
- employee_skill_id
- company_id
- employee_id
- skill_id
- proficiency_level
- self_rating
- manager_rating
- last_used_at
- usage_frequency_code
- evidence_count
- evidence_confidence
- skill_freshness_score
- is_primary_skill
- employee_comment
- manager_comment
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 8. employee_skill_evidence
目的:
- スキル根拠管理

columns:
- employee_skill_evidence_id
- company_id
- employee_skill_id
- employee_id
- evidence_type_code
- evidence_title
- evidence_description
- evidence_file_id
- source_system_code
- source_reference_key
- occurred_at
- confidence_score
- is_verified
- verified_by
- verified_at
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 9. employee_career_history
目的:
- 経歴、配属、経験年数の基礎

columns:
- employee_career_history_id
- company_id
- employee_id
- organization_id
- job_family_id
- job_role_id
- title_name
- start_date
- end_date
- years_of_experience_months
- industry_code
- is_manager_role
- summary_text
- achievement_summary_text
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 10. employee_achievement
目的:
- 実績記録

columns:
- employee_achievement_id
- company_id
- employee_id
- achievement_type_code
- achievement_title
- achievement_description
- period_start
- period_end
- metric_name
- metric_value
- metric_unit
- goal_linked_flag
- external_goal_key
- evidence_file_id
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 11. job_family_master
columns:
- job_family_id
- company_id
- job_family_code
- label_ja
- label_en
- label_zh
- label_ko
- description_text
- is_active
- sort_order
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 12. job_role_master
columns:
- job_role_id
- company_id
- job_family_id
- job_role_code
- label_ja
- label_en
- label_zh
- label_ko
- description_text
- is_critical_role
- is_active
- sort_order
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 13. grade_master
columns:
- grade_id
- company_id
- grade_code
- label_ja
- label_en
- label_zh
- label_ko
- grade_order
- description_text
- is_active
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 14. role_requirement
目的:
- 職種 / 等級別の要件正本

columns:
- role_requirement_id
- company_id
- job_family_id
- job_role_id
- grade_id
- requirement_version
- effective_from
- effective_to
- template_name
- status_code
- overall_weight_skill
- overall_weight_certification
- overall_weight_experience
- overall_weight_performance
- overall_weight_behavior
- overall_weight_growth
- description_text
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 15. role_requirement_skill
columns:
- role_requirement_skill_id
- company_id
- role_requirement_id
- skill_id
- required_level
- preferred_level
- weight_score
- mandatory_flag
- recency_required_months
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 16. role_requirement_certification
columns:
- role_requirement_certification_id
- company_id
- role_requirement_id
- certification_id
- mandatory_flag
- preferred_flag
- weight_score
- renewal_required
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 17. evaluation_cycle
目的:
- 評価サイクル管理

columns:
- evaluation_cycle_id
- company_id
- cycle_code
- cycle_name
- target_scope_code
- period_start
- period_end
- self_review_due_at
- manager_review_due_at
- hr_review_due_at
- publish_at
- cycle_status_code
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 18. evaluation_sheet
目的:
- 評価単位の本体

columns:
- evaluation_sheet_id
- company_id
- evaluation_cycle_id
- employee_id
- manager_employee_id
- hr_owner_employee_id
- current_job_family_id
- current_job_role_id
- current_grade_id
- target_job_role_id
- target_grade_id
- evaluation_status_code
- current_state_rank
- future_readiness_rank
- total_evaluation_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- promotion_readiness_score
- successor_readiness_score
- self_review_submitted_at
- manager_review_submitted_at
- approved_at
- published_at
- reopened_at
- sent_back_at
- current_step_owner_role_code
- lock_version
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 19. evaluation_score_detail
目的:
- 評価スコア内訳保持

columns:
- evaluation_score_detail_id
- company_id
- evaluation_sheet_id
- score_category_code
- score_item_code
- raw_score
- adjusted_score
- weight_score
- final_score
- pre_calibration_score
- post_calibration_score
- calculation_note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 20. evaluation_comment
目的:
- 評価コメント保持

columns:
- evaluation_comment_id
- company_id
- evaluation_sheet_id
- comment_type_code
- actor_employee_id
- actor_role_code
- original_text
- translated_text
- language_code
- ai_assisted_flag
- ai_draft_id
- is_published_to_employee
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 21. evaluation_evidence
目的:
- 評価根拠保持

columns:
- evaluation_evidence_id
- company_id
- evaluation_sheet_id
- evidence_type_code
- evidence_title
- evidence_file_id
- source_system_code
- source_reference_key
- linked_score_category_code
- linked_score_item_code
- confidence_score
- verified_flag
- verified_by
- verified_at
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 22. evaluation_snapshot
目的:
- 継続評価スナップショット

columns:
- evaluation_snapshot_id
- company_id
- evaluation_cycle_id
- evaluation_sheet_id
- employee_id
- total_evaluation_score
- current_role_fit_score
- target_role_fit_score
- growth_potential_score
- promotion_readiness_score
- successor_readiness_score
- current_state_rank
- future_readiness_rank
- snapshot_taken_at
- created_at
- created_by
- audit_trace_id
- version_no

# 23. evaluation_change_audit
目的:
- 評価変更監査

columns:
- evaluation_change_audit_id
- company_id
- evaluation_sheet_id
- changed_by_employee_id
- changed_by_role_code
- action_type
- changed_field_name
- old_value_text
- new_value_text
- change_reason_text
- changed_at
- audit_trace_id
- created_at
- created_by
- version_no

# 24. evaluation_approval
目的:
- 承認履歴

columns:
- evaluation_approval_id
- company_id
- evaluation_sheet_id
- approval_step_code
- approver_employee_id
- approval_action_code
- approval_comment
- acted_at
- created_at
- created_by
- audit_trace_id
- version_no

# 25. calibration_session
columns:
- calibration_session_id
- company_id
- evaluation_cycle_id
- session_name
- session_date
- session_status_code
- chair_employee_id
- note
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 26. calibration_log
columns:
- calibration_log_id
- company_id
- calibration_session_id
- evaluation_sheet_id
- pre_rank_code
- post_rank_code
- pre_total_score
- post_total_score
- change_reason_text
- meeting_note
- changed_by_employee_id
- changed_at
- created_at
- created_by
- audit_trace_id
- version_no

# 27. growth_plan
目的:
- 成長計画本体

columns:
- growth_plan_id
- company_id
- employee_id
- evaluation_sheet_id
- plan_title
- target_job_role_id
- target_grade_id
- plan_period_start
- plan_period_end
- growth_plan_status_code
- owner_employee_id
- manager_employee_id
- plan_summary_text
- next_review_due_at
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 28. growth_action
目的:
- 成長計画内行動

columns:
- growth_action_id
- company_id
- growth_plan_id
- employee_id
- action_type_code
- action_title
- action_description
- priority_code
- due_date
- reason_code
- reason_text
- linked_skill_id
- linked_certification_id
- linked_training_id
- action_status_code
- completion_percent
- completed_at
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 29. growth_recommendation
目的:
- 推奨アクション保持

columns:
- growth_recommendation_id
- company_id
- employee_id
- evaluation_sheet_id
- recommendation_type_code
- recommendation_title
- recommendation_reason
- linked_gap_code
- priority_code
- target_due_date
- accepted_flag
- accepted_at
- rejected_flag
- rejected_reason_text
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 30. role_fit_snapshot
目的:
- role-fit 候補抽出用スナップショット

columns:
- role_fit_snapshot_id
- company_id
- employee_id
- target_job_role_id
- target_grade_id
- current_role_fit_score
- target_role_fit_score
- promotion_readiness_score
- successor_readiness_score
- top_gap_codes_json
- calculated_at
- created_at
- created_by
- audit_trace_id
- version_no

# 31. successor_candidate
columns:
- successor_candidate_id
- company_id
- critical_role_id
- employee_id
- readiness_score
- readiness_code
- risk_note
- target_ready_date
- created_at
- created_by
- updated_at
- updated_by
- audit_trace_id
- version_no

# 32. training_roi_snapshot
columns:
- training_roi_snapshot_id
- company_id
- organization_id
- period_start
- period_end
- source_amount
- source_currency
- reporting_amount
- reporting_currency
- fx_rate
- score_improvement_value
- roi_ratio
- calculated_at
- created_at
- created_by
- audit_trace_id
- version_no

# 33. ai_assist_reference_log
目的:
- AI補助参照履歴

columns:
- ai_assist_reference_log_id
- company_id
- entity_type
- entity_id
- actor_employee_id
- actor_role_code
- ai_action_code
- ai_draft_id
- prompt_summary_text
- referenced_at
- created_at
- created_by
- audit_trace_id
- version_no

# 34. audit_export_log
columns:
- audit_export_log_id
- company_id
- exported_by_employee_id
- export_type_code
- date_from
- date_to
- export_file_id
- exported_at
- created_at
- created_by
- audit_trace_id
- version_no

# 35. 結論
TalentGrowth の exact table column は、
人材、要件、評価、校正、成長、候補抽出、監査、AI補助までを
初期段階から列レベルで固定する。

特に、
- evaluation_sheet
- evaluation_score_detail
- evaluation_change_audit
- growth_plan
- role_requirement
は中心正本テーブルとして扱う。
