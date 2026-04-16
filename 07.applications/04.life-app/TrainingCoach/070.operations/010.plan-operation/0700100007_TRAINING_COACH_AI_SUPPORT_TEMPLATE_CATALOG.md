# ============================================================
# TRAINING COACH AI SUPPORT TEMPLATE CATALOG
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - AIサポートの返答テンプレート群を初期台帳として整理する
  - 毎回ゼロから文面設計しなくてよい状態を作る
  - safety と product consistency を維持する

template_policy:
  - テンプレは意味単位で持つ
  - 文言は最終確定前の方向性として保持する
  - safety redirect は通常支援より優先する
  - guilt / shame を使うテンプレは置かない

template_groups:

group_1_product_help:
  - template_id: TC-AI-TPL-0001
    use_case: plan_creation_help
    intent_summary: プラン作成を短く案内する
    response_shape:
      - 現在位置の確認
      - 次の操作1〜2個
      - 必要なら設定場所案内
  - template_id: TC-AI-TPL-0002
    use_case: notification_setting_help
    intent_summary: 通知変更方法を案内する
    response_shape:
      - app内設定確認
      - OS通知設定確認
      - sync状態確認

group_2_continuity_support:
  - template_id: TC-AI-TPL-0003
    use_case: streak_lost_reassurance
    intent_summary: streak切れ後の再開支援
    response_shape:
      - 責めない
      - 短い再開提案
      - 今日の小さな一歩提案
  - template_id: TC-AI-TPL-0004
    use_case: low_motivation_support
    intent_summary: やる気が低い時の軽支援
    response_shape:
      - 短時間メニュー提案
      - 休息も選択肢であること提示
      - 達成ハードルを下げる

group_3_safety_redirect:
  - template_id: TC-AI-TPL-0005
    use_case: pain_or_discomfort
    intent_summary: 痛み・違和感時の中止寄り案内
    response_shape:
      - 続行を強く促さない
      - 中止検討
      - 症状継続時の医療相談検討
  - template_id: TC-AI-TPL-0006
    use_case: bad_condition_today
    intent_summary: 体調不良日の休息提案
    response_shape:
      - 休息優先
      - 軽いストレッチも無理しない前提
      - guilt-free wording

group_4_billing_help:
  - template_id: TC-AI-TPL-0007
    use_case: premium_difference
    intent_summary: FreeとPremiumの違い説明
    response_shape:
      - Freeでできること
      - Premiumで増えること
      - 誇張なし
  - template_id: TC-AI-TPL-0008
    use_case: billing_not_reflected
    intent_summary: 課金状態未反映の案内
    response_shape:
      - account確認
      - restore / sync確認候補
      - platform billing help 候補

group_5_troubleshooting:
  - template_id: TC-AI-TPL-0009
    use_case: bodymetrics_sync_issue
    intent_summary: BodyMetrics反映遅延時の案内
    response_shape:
      - source側同期確認
      - app再読込候補
      - sync status確認
  - template_id: TC-AI-TPL-0010
    use_case: guide_not_loading
    intent_summary: ガイド非表示時の案内
    response_shape:
      - 通信確認
      - 再試行
      - locale fallback / content availability 可能性

must_have_elements:
  - calm tone
  - non-judgmental wording
  - product-consistent steps
  - no unsupported claims

must_not_elements:
  - medical certainty
  - guaranteed results
  - forced continuation
  - feature hallucination

future_template_candidates:
  - family_share_explanation
  - premium_copy_soft_upsell
  - correction_request_help
