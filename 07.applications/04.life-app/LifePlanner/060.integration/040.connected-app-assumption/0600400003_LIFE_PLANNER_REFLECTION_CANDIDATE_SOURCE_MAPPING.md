# ============================================================
# LIFE PLANNER REFLECTION CANDIDATE SOURCE MAPPING
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 040.connected-app-assumption
owner: Boss
prepared_by: Zero
schema: life

mapping_examples:
  - source_app: MoneyPlanner
    source_signal: estimated_cost_changed
    reflection_candidate.summary_example:
      - 資金計画の概算が更新されました。関連目標の費用見通しを見直してください。
    affected_entity_type_default:
      - goal
      - plan

  - source_app: EndOfLifePlanner
    source_signal: end_of_life_preparation_changed
    reflection_candidate.summary_example:
      - 終活準備状況が変化しました。終活カテゴリの優先順位を確認してください。
    affected_entity_type_default:
      - plan
      - goal

  - source_app: BodyMetrics
    source_signal: health_trend_changed
    reflection_candidate.summary_example:
      - 健康状態の変化がありました。健康目標や生活計画の見直し候補があります。
    affected_entity_type_default:
      - goal

  - source_app: TrainingCoach
    source_signal: training_goal_changed
    reflection_candidate.summary_example:
      - トレーニング目標が更新されました。健康カテゴリの計画に反映する候補があります。
    affected_entity_type_default:
      - goal
      - timeline_event

  - source_app: legal_support_app_group
    source_signal: procedure_note_added
    reflection_candidate.summary_example:
      - 手続きメモが追加されました。法務カテゴリのイベント候補を確認してください。
    affected_entity_type_default:
      - timeline_event
      - goal

mapping_rule:
  - summary はユーザーが読んで判断できる粒度にする
  - source 専門語をそのまま押し込まない
  - apply target は owner が最終選択する
