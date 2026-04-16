# TALENT GROWTH FULL SCOPE FEATURE ADDITION

status: draft-additive-full-scope
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. この追加束の位置づけ
本資料は、
ライバル比較で抽出した競争対抗機能を
保留なくすべて TalentGrowth の正式機能対象へ加えるための追加設計である。

方針:
- 追加候補は全採用とする
- 共通部品設計とは切り分ける
- TalentGrowth 固有責務として保持する
- 実装順は分けるが、設計上は全て in-scope とする

# 1. 追加対象の最終確定
TalentGrowth は、以下の機能を正式機能として持つ。

- 職種別スキルテンプレート
- 資格 / 免許の期限管理
- スキルマップ / 分布図 / ヒートマップ
- 継続評価スナップショット
- 成長アクション推薦
- MBO / 目標連携
- 校正 / 監査 / 承認ログ
- 9box / HRポートフォリオ
- 配置シミュレーション
- 学習 / 研修連携
- 後継者パイプライン
- 人材投資ROI分析
- AIレビュー補助
- キャリアシミュレーション

# 2. TalentGrowth の正式機能構成

## 2-1. 人材基礎情報管理
- 人材基本情報
- 学歴履歴
- 職歴 / 配属履歴
- 経験年数
- 保有資格 / 免許
- 受講履歴
- 実績履歴
- 行動評価履歴

## 2-2. 職種別評価基準管理
- job_family 単位要件
- job_role 単位要件
- grade 単位要件
- role requirement version 管理
- スキル要件
- 資格要件
- 経験要件
- 行動要件
- 実績要件
- テンプレート複製
- テンプレート改版履歴
- テンプレート配布

## 2-3. スコアリング / ランク付け
- academic score
- certification score
- skill score
- experience score
- performance score
- behavior score
- growth trajectory score
- current role fit score
- target role fit score
- promotion readiness score
- successor readiness score
- total evaluation score
- current state rank
- future readiness rank

## 2-4. 証拠付き評価
- 証拠添付
- 根拠リンク
- 証拠種類分類
- 証拠信頼度管理
- 評価コメントと証拠のひも付け
- 評価変更理由記録
- 承認前後の証拠凍結

## 2-5. 資格 / 免許管理
- 資格登録
- 資格分類
- 発行団体管理
- 有効期限管理
- 更新期限アラート
- 失効状態表示
- 更新履歴
- 更新費用記録
- 業務必須資格との突合
- 失効見込み一覧

## 2-6. スキル管理
- スキル辞書
- 熟練度管理
- 最終使用日
- 利用頻度
- 実務証拠数
- スキルごとの重み
- 職種別要求水準
- スキルツリー
- スキルマトリクス
- スキルヒートマップ
- スキル不足抽出

## 2-7. 継続評価 / 推移管理
- サイクルごとの評価保存
- スコア推移
- ランク推移
- スキル推移
- 資格推移
- コメント差分
- 証拠差分
- 成長速度可視化
- 低下検知
- 停滞検知

## 2-8. 成長支援
- ギャップ分析
- 推奨研修
- 推奨資格
- 推奨OJT
- 推奨案件 / 配属
- 推奨ロール
- 3か月計画
- 6か月計画
- 12か月計画
- 実施状況追跡
- 上長レビュー
- 本人確認
- 次回見直し日

## 2-9. MBO / 目標連携
- 目標取込
- 目標一覧連携
- 目標達成度参照
- 目標証拠参照
- 評価とのひも付け
- 成長計画とのひも付け
- 目標差分表示
- 未達原因メモ
- 能力成長との相関表示

## 2-10. 校正 / 承認 / 監査
- 自己評価提出
- 上長レビュー
- 人事レビュー
- 校正会議
- 差戻し
- 再提出
- 承認
- 公開
- 評価変更履歴
- コメント変更履歴
- 承認履歴
- 校正会議ログ
- AI提案参照履歴
- 監査出力
- エクスポート履歴

## 2-11. 分析 / 可視化
- 個人レーダーチャート
- チームスキルマトリクス
- 部署別ヒートマップ
- 資格保有率分布
- ランク分布
- role-fit 分布
- growth potential 分布
- 9box
- HRポートフォリオ
- 評価者偏り分析
- 組織比較
- 拠点比較
- 雇用区分比較

## 2-12. 配置 / 後継者 / キャリア
- role-fit 候補抽出
- 配置候補比較
- 異動候補抽出
- 昇格候補抽出
- successor pool
- successor readiness
- critical role coverage
- キャリアパス候補
- 次職種候補
- 次等級候補
- 到達条件一覧
- キャリアシミュレーション

## 2-13. 学習 / 研修 / 投資分析
- 研修カタログ連携
- 外部講座リンク
- 社内研修連携
- 推奨受講提示
- 受講完了反映
- 資格取得費管理
- 研修費管理
- 人材投資集計
- training ROI
- certification ROI
- 部門別投資対効果
- 海外拠点比較

## 2-14. AI補助
- 評価コメント下書き
- 不足スキル要約
- 成長提案下書き
- 役割適合の補助説明
- 監査観点サジェスト
- 面談観点サジェスト
- 校正時の偏り警告
- 最終決定は禁止

# 3. 追加が必要なデータモデル

## 3-1. マスタ系
- job_family_master
- job_role_master
- grade_master
- skill_master
- skill_tree_master
- certification_master
- competency_master
- training_master
- career_path_master
- critical_role_master
- evaluation_template_master

## 3-2. 要件 / テンプレート系
- role_requirement
- role_requirement_skill
- role_requirement_certification
- role_requirement_experience
- role_requirement_behavior
- role_requirement_performance
- role_requirement_template
- role_requirement_template_skill
- role_requirement_template_certification
- role_requirement_template_behavior
- role_requirement_template_version

## 3-3. 人材情報系
- employee_profile
- employee_academic_history
- employee_certification
- employee_certification_renewal
- employee_skill
- employee_skill_evidence
- employee_career_history
- employee_training_history
- employee_achievement
- employee_goal_link
- employee_role_preference

## 3-4. 評価運用系
- evaluation_cycle
- evaluation_sheet
- evaluation_score
- evaluation_score_detail
- evaluation_comment
- evaluation_evidence
- evaluation_snapshot
- evaluation_change_audit
- evaluation_approval
- evaluation_reopen_log
- calibration_session
- calibration_log
- reviewer_bias_snapshot

## 3-5. 成長支援系
- growth_gap
- growth_goal
- growth_plan
- growth_action
- growth_action_progress
- growth_recommendation
- training_recommendation
- certification_recommendation
- assignment_recommendation

## 3-6. 配置 / 後継者 / キャリア系
- role_fit_snapshot
- placement_candidate
- promotion_candidate
- successor_candidate
- successor_pool
- career_simulation
- career_simulation_result

## 3-7. 分析 / 投資系
- skill_heatmap_snapshot
- talent_distribution_snapshot
- hr_portfolio_snapshot
- training_roi_snapshot
- certification_roi_snapshot
- org_talent_summary_snapshot

## 3-8. AI / 監査系
- ai_assist_reference_log
- ai_draft_comment
- ai_growth_suggestion
- ai_bias_alert_log
- audit_export_log

# 4. 共通主要列候補
- effective_from
- effective_to
- version_no
- evidence_count
- evidence_confidence
- last_used_at
- usage_frequency
- expiry_date
- renewal_required
- renewal_cost_amount
- renewal_cost_currency
- source_currency
- reporting_currency
- fx_rate
- recommendation_reason
- fit_score
- readiness_score
- bias_flag
- approval_status
- reviewed_at
- published_at
- next_review_due_at
- audit_trace_id

# 5. 追加が必要な連携
- ERP employee / organization / grade / position master 連携
- MBO 目標 / 達成度 / 証拠連携
- 研修 / 学習連携
- 経費 / 投資連携

# 6. ポリシー
- AIは提案のみ
- 最終評価確定禁止
- 最終昇格確定禁止
- 最終配置決定禁止
- スコア根拠保存必須
- ランク根拠保存必須
- 推奨理由保存必須
- 変更履歴保存必須
- 校正会議ログ必須
- 評価者偏り検知必須

# 7. 実装順
## phase A
- 人材基本情報
- 学歴 / 資格 / スキル / 経験年数
- 職種別要件
- スコアリング
- ランク
- 証拠付き評価
- 承認 / 差戻し / 監査ログ
- ギャップ分析
- 成長計画

## phase B
- 資格期限管理
- スキルマップ / 分布図 / ヒートマップ
- 継続評価スナップショット
- MBO連携
- 推奨研修 / 資格 / OJT

## phase C
- 9box
- 配置候補抽出
- 昇格候補抽出
- 後継者候補抽出
- キャリアシミュレーション
- 投資分析

## phase D
- AIレビュー補助
- 偏り警告
- 高度分析
- 海外拠点比較
- 高度なROI分析

# 8. 結論
TalentGrowth は、
競合対抗上必要な機能を限定追加するのではなく、
見える化、継続評価、成長支援、配置 / 後継者 / キャリア、
投資分析、監査 / 校正 / 承認、AI補助を
すべて正式機能として保持する。

ただし中心価値は最後まで変えない。
- evidence-first
- role-fit first
- growth-action first
- explainability first
