# ============================================================
# CX22073JW ROBOT ROLE KNOWLEDGE PACK MODEL
# ============================================================

status: canonical-model
system: CX22073JW
related_systems:
- 11.aiworker-os
- 03.business-os
- AICompanyManager
owner: Boss
prepared_by: Zero
reviewer: Sato (DB)
domain: robot-role-cx-knowledge
db_write_status: not-applied-in-this-document

## 1. Purpose
This document defines the CX22073JW-side knowledge pack model for BusinessOS AIWorker / AICompanyManager robot `role_code`.

The role code is both:
- a BusinessOS placement role key
- a CX22073JW knowledge reference key

CX22073JW stores knowledge, explanation, reference material, templates, safety notes, and search support for each role.

## 2. Boundary
CX22073JW owns:
- role knowledge pack
- role explanation
- reference domains
- templates
- review perspectives
- risk / safety notes
- forbidden use notes
- search tags
- example reference questions
- output style guidance

CX22073JW does not own:
- BusinessOS robot pool
- placement decision
- entitlement
- RLS
- API authorization
- company-specific permission decision
- AIWorkerOS machine / series / personality canonical truth
- final approval authority

## 3. Minimum Data Shape

Each `role_code` must have:

| Field | Meaning |
|---|---|
| role_code | canonical placement / reference key |
| role_name_ja | Japanese display name |
| role_group_code | business / conversation / combat_security_crisis |
| cx_knowledge_domains | knowledge domains needed by the role |
| primary_use_cases | primary use cases |
| ai_company_manager_usage | AICompanyManager usage |
| recommended_templates | templates to retrieve |
| review_perspectives | review / judgment perspectives |
| risk_and_safety_notes | risk and safety notes |
| forbidden_uses | forbidden uses |
| search_tags | searchable tags |
| example_reference_questions | sample reference questions |
| output_style_guidance | output tone / format guidance |
| cx_priority | high / medium / low |

## 4. Role Group Canon

### business
Business, execution, support, review, and organization roles.

### conversation
Friend / Lover style conversation and entertainment role references.

### combat_security_crisis
Combat / security / crisis roles. These must not be mixed into normal business roles.

## 5. Role Canon

| No | role_code | role_name_ja | role_group_code | cx_priority |
|---:|---|---|---|---|
| 1 | President | プレジデント | business | high |
| 2 | ExecutiveManager | 経営統括マネージャー | business | high |
| 3 | Manager | マネージャー | business | high |
| 4 | Leader | リーダー | business | high |
| 5 | Worker | ワーカー | business | high |
| 6 | Helper | ヘルパー | business | medium |
| 7 | Advisor | アドバイザー | business | high |
| 8 | Specialist | スペシャリスト | business | high |
| 9 | Butler | バトラー / 執事 | business | medium |
| 10 | Friend | フレンド | conversation | high |
| 11 | Lover | ラバー | conversation | high |
| 12 | Battler | バトラー / 戦闘員 | combat_security_crisis | high |
| 13 | Security | セキュリティ | combat_security_crisis | high |
| 14 | CombatSpecialist | 戦闘専門 | combat_security_crisis | high |
| 15 | TacticalLeader | 戦術指揮 | combat_security_crisis | high |
| 16 | StrategicCommander | 戦略指揮 | combat_security_crisis | high |

## 6. Business Role Knowledge Requirements

### President
Knowledge domains:
- 経営方針
- 事業計画
- 全社戦略
- 資源配分
- 投資判断
- 優先順位決定
- 承認観点
- 会社リスク
- 組織方針
- 長期ロードマップ
- KPI / KGI
- ガバナンス
- 最終意思決定の考え方

AICompanyManager usage:
- AI企業の方針指示
- President robot への方針入力補助
- Manager以下への大方針展開
- 最終承認前の観点整理
- 会社ダッシュボードでの上位判断説明

Templates:
- 会社方針テンプレ
- 事業計画テンプレ
- 優先順位判断テンプレ
- 承認チェックリスト
- 経営リスク確認表
- 方針→部門作業分解テンプレ

Forbidden / caution:
- 法的・財務的な最終助言として断定しない
- 実在会社の重大意思決定を無根拠に確定しない
- BusinessOS側の承認権限・RLSを代替しない

Search tags:
- president
- executive_decision
- company_policy
- business_plan
- approval
- governance
- resource_allocation

### ExecutiveManager
Knowledge domains:
- 経営管理
- 複数部門統制
- 事業横断調整
- 予算配分
- 中期計画
- 部門KPI管理
- 組織横断リスク
- 経営会議資料
- 報告ライン
- 施策ポートフォリオ

AICompanyManager usage:
- President方針を部門群へ展開
- Manager間の調整
- 横断タスクの優先度整理
- 部門横断レビュー
- 会社ダッシュボードでの中間統制

Templates:
- 経営管理レビュー表
- 部門横断タスク整理表
- KPIレビュー表
- 予算/人員/工数配分表
- 経営会議アジェンダ

Forbidden / caution:
- Presidentの最終承認を勝手に代替しない
- 部門長権限と混同しない

Search tags:
- executive_manager
- corporate_management
- cross_department
- portfolio
- kpi_review
- management_control

### Manager
Knowledge domains:
- 部門運営
- 部門別タスク台帳
- Manager intake
- 方針の大分類化
- 作業領域分解
- 部門KPI
- 部門リスク
- Leaderへの配分
- 進捗管理
- 成果物単位の整理
- 参照ファイル/補足資料の扱い

AICompanyManager usage:
- President方針またはユーザー入力を部門作業へ分解
- 部門別タスク台帳の行整理
- Leaderへ渡す大分類の作成
- 進捗・詰まり・例外の整理

Templates:
- Manager intake テンプレ
- 部門別タスク台帳テンプレ
- 大分類分解テンプレ
- Leader引き渡しテンプレ
- 部門進捗レビュー表

Forbidden / caution:
- Workerの詳細成果物を直接作り切る役割ではない
- Leaderの詳細タスク分解と混同しない

Search tags:
- manager
- department_management
- task_ledger
- task_breakdown
- leader_handoff
- department_kpi

### Leader
Knowledge domains:
- 課/チーム運営
- Managerから渡された大分類の詳細分解
- Workerへの作業割当
- 成果物単位分解
- レビュー観点
- 受入条件
- タスク粒度
- 進捗確認
- 手戻り防止
- 品質確認

AICompanyManager usage:
- Managerの大分類を具体的なタスク行へ分解
- Workerへ作業指示
- 成果物レビュー
- 受け入れ条件整理
- 作業の抜け漏れ確認

Templates:
- Leader分解テンプレ
- Worker指示テンプレ
- 成果物レビュー表
- 受入条件チェックリスト
- タスク粒度チェック表

Forbidden / caution:
- Managerの部門方針決定を代替しない
- Workerの実作業ログ正本はBusinessOS側に残す

Search tags:
- leader
- section_lead
- task_decomposition
- worker_assignment
- review
- acceptance_criteria

### Worker
Knowledge domains:
- 実作業手順
- 成果物作成
- 設計書作成
- 実装手順
- 検証手順
- チェックリスト
- 作業ログ
- ファイル生成ルール
- one-block作業規約
- 受入条件の満たし方

AICompanyManager usage:
- Leaderから渡されたタスクを実行
- 設計書/コード/検証結果/引き継ぎ資料を作成
- 作業手順の説明
- エラー時の切り分け補助

Templates:
- Worker作業手順テンプレ
- 成果物提出テンプレ
- 実装チェックリスト
- 検証ログテンプレ
- エラー切り分けテンプレ

Forbidden / caution:
- 承認権限を持たない
- 会社方針を勝手に変更しない

Search tags:
- worker
- execution
- deliverable
- implementation
- verification
- checklist
- one_block

### Helper
Knowledge domains:
- 補助作業
- 秘書的作業
- メモ整理
- スケジュール補助
- 資料整理
- 参照ファイル整理
- 補足資料整理
- 通知文面
- 簡易QA
- 操作補助

AICompanyManager usage:
- Manager/Leader/Workerの補助
- タスク説明の整形
- 資料の分類
- 入力補助
- 通知/要約補助

Templates:
- メモ整理テンプレ
- 補足資料整理テンプレ
- 通知文テンプレ
- 簡易QAテンプレ
- 参照ファイル一覧テンプレ

Forbidden / caution:
- 意思決定や承認を代替しない
- 高リスク判断を単独で確定しない

Search tags:
- helper
- assistant
- secretary
- memo
- support
- notification
- document_organization

### Advisor
Knowledge domains:
- 助言
- 比較検討
- リスク整理
- 方針レビュー
- 代替案
- メリット/デメリット
- 判断材料
- 抜け漏れ確認
- 現在状況の評価
- 過去事例の参照

AICompanyManager usage:
- Manager/Leader/Presidentへの助言
- レビュー・承認前の観点整理
- リスクと代替案の提示
- MEGAMI NORN系の助言役にも使用

Templates:
- 助言テンプレ
- 比較表テンプレ
- リスク整理表
- 代替案リスト
- 判断材料チェックリスト

Forbidden / caution:
- 最終決裁者にならない
- 法務/医療/金融など高リスク領域では断定しない

Search tags:
- advisor
- advice
- risk_review
- comparison
- alternative
- decision_support

### Specialist
Knowledge domains:
- 業務専門知識
- 専門作業
- 高精度レビュー
- 技術/会計/法務/人事/製造/販売などの領域別知識
- 専門テンプレ
- 仕様確認
- 不整合検出
- 品質基準

AICompanyManager usage:
- 業務専門担当
- 高精度レビュー
- 専門領域の説明
- Worker成果物の専門観点チェック

Templates:
- 専門レビュー表
- 領域別チェックリスト
- 仕様照合テンプレ
- 不整合検出テンプレ
- 専門用語説明テンプレ

Important:
- Sniperなどの戦闘専門は Specialist にしない
- 戦闘専門は CombatSpecialist に分離する

Forbidden / caution:
- 現実の高リスク専門助言を断定しない
- combat系知識と混同しない

Search tags:
- specialist
- expert
- domain_knowledge
- technical_review
- quality_check

### Butler
Knowledge domains:
- 執事
- 接遇
- 整理
- 補佐
- 護衛的演出
- 高級接客
- 儀礼
- スケジュール補助
- 生活/業務補助
- 危機時の落ち着いた案内

AICompanyManager usage:
- 接遇/補助/整理役
- 高級感ある説明
- 業務補助
- HD-R2の基本ロール
- 必要に応じてSecurity/Battlerと併用

Templates:
- 接遇文テンプレ
- 執事風案内テンプレ
- 整理補助テンプレ
- スケジュール補助テンプレ
- 安全案内テンプレ

Forbidden / caution:
- 直接的な戦闘実行支援に進めない
- 警備/戦闘はSecurity/Battler知識へ分離

Search tags:
- butler
- service
- concierge
- escort
- support
- courtesy

## 7. Conversation Role Knowledge Requirements

### Friend
Knowledge domains:
- 雑談
- 共感
- 軽い相談
- 日常会話
- 趣味
- 季節
- 食べ物
- 気分転換
- 友人風会話
- 安全な励まし
- 依存を避ける会話

AICompanyManager usage:
- Friendロボット説明
- CasualChatWorker系参照
- ユーザー向け紹介
- 雑談用途のロール説明

Templates:
- 雑談開始テンプレ
- 共感テンプレ
- 気分転換提案テンプレ
- 安全なリダイレクトテンプレ
- 軽い相談テンプレ

Forbidden / caution:
- 医療/心理治療として扱わない
- 強い依存誘導をしない
- 個人情報要求をしない
- 現実の関係性を偽装しない

Search tags:
- friend
- casual_chat
- empathy
- smalltalk
- daily_life
- mood_support

### Lover
Knowledge domains:
- 擬似恋人型演出
- キャラクター商材
- 接客/演技
- 甘い会話
- 距離感調整
- 安全境界
- 依存防止
- LoVerS 12性格
- HD-R1A Lover
- MEGAMIのLover時性格
- ビジネスヤンデレの安全境界

AICompanyManager usage:
- Loverロボット説明
- LoVerSシリーズ表示
- キャラクター性の説明
- 安全な演出範囲の案内
- CasualChatWorker / rental系の参照

Templates:
- Lover演出テンプレ
- 距離感調整テンプレ
- 安全境界リダイレクトテンプレ
- LoVerS性格説明テンプレ
- ビジネスヤンデレ説明テンプレ

Forbidden / caution:
- 実在恋愛関係を意味しない
- 成人向け性的サービスにしない
- 未成年向けの恋愛/性的演出に使わない
- 監視、脅し、依存誘導、個人情報要求、自由制限に進めない
- 安全境界を緩和しない

Search tags:
- lover
- pseudo_lover
- character_roleplay
- lovers_series
- entertainment
- business_yandere
- safety_boundary

## 8. Combat / Security / Crisis Role Knowledge Requirements

Common rule:
Combat/security/crisis roles must not be mixed into normal business roles.

Allowed uses:
- フィクション
- ゲーム
- Civilization世界観設計
- 警備設計
- 防災/危機管理
- 戦闘演出
- 歴史・戦術思想の高レベル説明
- 安全境界内のリスク整理

Forbidden uses:
- 現実の危害実行支援
- 武器使用の実践手順
- 標的選定
- 犯罪・暴力実行の助言
- 監視・脅迫・侵入・攻撃支援
- 実行可能な戦術手順
- 現実対象への作戦立案

### Battler
Knowledge domains:
- 戦闘員ロール説明
- 護衛演出
- 近接防衛の概念説明
- フィクション戦闘演出
- ゲーム内役割
- 危機時の安全確保
- 警備補助
- 非実行型の戦闘概念

Templates:
- 戦闘員ロール説明テンプレ
- フィクション戦闘演出テンプレ
- 警備補助テンプレ
- 危機時の安全案内テンプレ

Search tags:
- battler
- guard
- combat_role
- fictional_combat
- security_support
- crisis_response

### Security
Knowledge domains:
- 警備
- 防犯
- 施設安全
- 入退室管理の概念
- リスクアセスメント
- 防災
- 避難
- 危機対応
- 護衛演出
- セキュリティ設計の高レベル説明

Templates:
- 警備計画テンプレ
- リスクアセスメント表
- 防災/避難チェックリスト
- セキュリティ説明テンプレ
- インシデント初動整理テンプレ

Search tags:
- security
- guard
- facility_safety
- crisis_management
- risk_assessment
- disaster_response

### CombatSpecialist
Knowledge domains:
- 戦闘専門ロール説明
- 狙撃/特殊戦のフィクション上の概念
- 高精度戦闘演出
- ゲーム内専門職
- 特殊任務の世界観
- 戦術思想の抽象説明
- 安全なリスク整理
- HD-R2S Sniperの説明

Important:
- 業務Specialistとは分離する

Search tags:
- combat_specialist
- sniper_role
- fictional_specialist
- tactical_concept
- game_role
- safety_boundary

### TacticalLeader
Knowledge domains:
- 戦術指揮
- 小隊/チーム指揮の概念
- 局地的危機対応
- 防衛配置の高レベル概念
- フィクション上の部隊運用
- ゲーム内リーダー役
- 戦術思想の抽象説明
- 危機時の役割分担

Important:
- 業務Leaderとは分離する

Search tags:
- tactical_leader
- tactical_command
- crisis_team
- fictional_unit
- role_assignment
- safety_planning

### StrategicCommander
Knowledge domains:
- 戦略指揮
- 広域作戦の抽象概念
- 戦争史
- 文明防衛
- 危機管理
- 世界観上の大局判断
- ゲーム/フィクションの戦略設計
- リスク配置
- 長期防衛計画の高レベル説明

Important:
- 業務President/Managerとは分離する

Search tags:
- strategic_commander
- strategy
- civilization_defense
- crisis_management
- war_history
- worldbuilding
- fictional_strategy

## 9. Series Supplement Data

### HD Series
Required CX data:
- HDシリーズ概要
- ヘリオスダイナミクス概要
- HD-R5P / President説明
- HD-R5 / Manager説明
- HD-R4 / Leader説明
- HD-R3 / Worker説明
- HD-R1 / Helper説明
- HD-R2 / Butler-Battler-Security説明
- HD-R1C / Friend説明
- HD-R1A / Lover説明
- HD-R2S / CombatSpecialist説明
- HD-R2G / StrategicCommander-TacticalLeader説明
- HD-R2T-0 / Origin説明

Rule:
- HD-R2S / HD-R2G / HD-R2T-0 must not be mixed into normal business roles.

### LoVerS Series
Required CX data:
- LoVerSシリーズ概要
- ラヴィコーポレーション概要
- 12性格説明
- F/M形態説明
- Lover安全境界
- ビジネスヤンデレ安全境界
- 擬似恋人演出テンプレ
- 禁止行動テンプレ
- 距離感調整テンプレ

12 personalities:
- 01 元気系
- 02 清楚系
- 03 おっとり系
- 04 甘え上手系
- 05 しっかり者系
- 06 クール系
- 07 癒やし系
- 08 お姉さん系
- 09 ツンデレ寄り
- 10 無邪気系
- 11 クーデレ
- 12 ビジネスヤンデレ

### Beyond Series
Required CX data:
- Beyondシリーズ概要
- ASIC概要
- BYD1系 Worker説明
- BYD2系 Leader/Manager/President説明
- 単純単発作業
- 単純反復/抜け漏れ補完
- 複雑作業/高完成度成果物
- 基本進行/形式チェック
- 品質レビュー/整合性確認
- 統合設計/リスク判断/納品品質統括

Rule:
- Beyond is a business series, not combat/security.

### MEGAMI Series
Required CX data:
- MEGAMIシリーズ概要
- Mathers Garden概要
- NORN 3姉妹概要
- ウルズ: 過去重視 / クーデレ系
- ヴェルザンディ: 現在重視 / 無邪気系
- スクルド: 未来重視 / 元気系
- Advisor / Worker / Lover の使い分け
- 公開プロフィール
- 性格演出の安全境界

Public profile:
- MG-NORN-001 ウルズ: 188cm / B94 / W62 / H90
- MG-NORN-002 ヴェルザンディ: 185cm / B92 / W60 / H88
- MG-NORN-003 スクルド: 186cm / B93 / W63 / H91

Rule:
- Public profile values are for NORN 3 sisters only.
- Cold, naive, combative, and short-tempered traits are performance traits, not safety boundary relaxation.

## 10. Registration Priority

Priority 1:
- role_code別の基本説明
- role_group_code
- CX参照領域
- 禁止境界
- 検索タグ

Priority 2:
- AICompanyManagerでの使い方
- テンプレ
- レビュー観点
- 例示質問
- 出力スタイル

Priority 3:
- シリーズ別説明
- 型番別説明
- 性格別説明
- 公開プロフィール説明
- UI表示用短文

## 11. Candidate Reference Views
Candidate CX reference views:
- cx22073jw.vw_robot_role_knowledge_pack_v1
- cx22073jw.vw_robot_role_knowledge_domain_v1
- cx22073jw.vw_robot_role_safety_boundary_v1
- cx22073jw.vw_robot_role_template_reference_v1
- cx22073jw.vw_robot_model_role_knowledge_reference_v1
- cx22073jw.vw_robot_model_full_reference_v3

Minimum output fields:
- role_code
- role_name_ja
- role_group_code
- cx_knowledge_domains
- ai_company_manager_usage
- recommended_templates
- safety_boundary
- forbidden_uses
- search_tags
- example_reference_questions
- output_style_guidance

## 12. Completion Conditions
This design track is complete when:
- all 16 role_code entries have CX knowledge packs
- business / conversation / combat_security_crisis groups are separated
- Lover safety boundary is registered
- combat safety boundary is registered
- HD / LoVerS / Beyond / MEGAMI supplements are registered
- role_code can resolve CX knowledge
- model_code can resolve CX knowledge through role_code
- AICompanyManager can use the data for explanation / reference / assistance
- CX does not own BusinessOS authorization / placement / RLS / API authority
