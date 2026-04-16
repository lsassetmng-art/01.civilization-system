# ============================================================
# LIFE PLANNER ERROR STATE COPY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

error_states:

  validation_generic:
    title: "入力内容を確認してください"
    body: "未入力または見直しが必要な項目があります。"

  forbidden_generic:
    title: "この操作はできません"
    body: "現在の権限では、この内容を変更できません。"

  share_scope_denied:
    title: "この情報は表示できません"
    body: "共有範囲の設定により、この内容は表示対象外です。"

  family_plan_required:
    title: "Familyプランで利用できます"
    body: "家族共有やシナリオ比較などの機能は、Familyプランで利用できます。"

  reflection_invalid_state:
    title: "この候補は更新されています"
    body: "状態が変わったため、もう一度一覧を読み込み直してください。"

  archived_edit_denied:
    title: "この計画は通常編集できません"
    body: "アーカイブ済みの計画です。必要な場合は再開してから編集してください。"

field_error_copy:
  plan_name_required: "計画名を入力してください。"
  start_year_required: "開始年を入力してください。"
  end_year_required: "終了年を入力してください。"
  end_year_invalid: "終了年は開始年以降にしてください。"
  goal_title_required: "目標名を入力してください。"
  category_required: "カテゴリを選択してください。"
  event_title_required: "イベント名を入力してください。"
  event_date_required: "日付を入力してください。"
  currency_required: "金額を入れる場合は通貨も選択してください。"
  review_reason_required: "見直し理由を入力してください。"
  dismiss_reason_required: "却下理由を入力してください。"
