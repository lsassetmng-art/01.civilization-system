# TALENT GROWTH SCREEN DETAIL

status: draft-screen-detail
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. 目的
本資料は、
TalentGrowth の全体画面構成を固定し、
役割別に何を見て、何を操作し、何を判断するかを明確化するための画面設計資料である。

前提:
- 共通部品設計は対象外
- TalentGrowth 固有画面責務に集中する
- 多言語対応
- 多通貨対応
- iPhone対応
- Android対応
- PC対応
- タブレット対応

# 1. 画面設計の基本方針
- 役割別最適化
- 証拠起点
- 現在地と次行動の同時表示
- 評価と育成を分断しない

# 2. 役割
- employee
- manager
- HR
- executive
- admin

# 3. グローバル画面
## TG-GLOBAL-001 ログイン / 認証画面
目的:
- 利用者を正しい権限で認証する
項目:
- メールアドレス / ID
- パスワード
- MFA入力
- 言語切替
操作:
- ログイン
- パスワード再設定
- MFA確認
- 言語変更

## TG-GLOBAL-002 ホーム / ナビゲーションハブ
目的:
- 権限に応じて利用可能機能へ遷移させる
項目:
- 未処理件数
- 進行中サイクル
- 重要アラート
- 最近見た画面
- 役割別ショートカット
操作:
- 機能遷移
- 通知確認
- クイック検索

## TG-GLOBAL-003 通知センター
目的:
- 評価、資格期限、差戻し、承認依頼を一元表示する
項目:
- 通知種別
- 発生日
- 対象
- 緊急度
- 未読 / 既読
操作:
- 詳細表示
- 一括既読
- 対象画面遷移

## TG-GLOBAL-004 検索画面
目的:
- 社員、評価、資格、スキル、計画を横断検索する
項目:
- キーワード
- 対象
- 組織絞込
- 状態絞込
操作:
- 条件検索
- 保存検索
- 詳細遷移

# 4. employee 画面群
## TG-EMP-001 employee dashboard
目的:
- 本人が自分の現在地と次行動を把握する
項目:
- 現職適合スコア
- 目標職位適合スコア
- growth potential
- 現在ランク
- 次回レビュー日
- 未提出項目
- 資格期限アラート
- 成長アクション上位3件
- 最近の評価推移
操作:
- 自己評価開始
- スキル更新
- 資格追加
- 成長計画確認
- 推奨研修確認

## TG-EMP-002 my profile
目的:
- 本人基本情報を確認 / 補完する
項目:
- 氏名
- 所属
- 役職
- 雇用区分
- 勤務地
- 現職種 / 現等級
- 希望職種
- 希望キャリア方向
操作:
- 編集申請
- 一部自己更新
- 希望キャリア更新

## TG-EMP-003 academic history
目的:
- 学歴情報を記録し、評価根拠へ接続する
項目:
- 学校名
- 学位
- 専攻
- 卒業年月
- 職務関連度
- 根拠書類有無
操作:
- 学歴追加
- 修正申請
- 証拠添付

## TG-EMP-004 certification management
目的:
- 保有資格 / 免許の登録と期限管理を行う
項目:
- 資格名
- 発行団体
- 取得日
- 有効期限
- 更新要否
- 失効リスク
- 業務必須との一致状態
操作:
- 資格追加
- 更新記録
- 証書添付
- 更新計画登録

## TG-EMP-005 skill inventory
目的:
- 本人のスキルを登録し、熟練度と根拠を持たせる
項目:
- スキルカテゴリ
- スキル名
- 熟練度
- 最終使用日
- 使用頻度
- 根拠件数
- 要件との差分
操作:
- スキル追加
- 熟練度更新
- 証拠追加
- 自己コメント入力

## TG-EMP-006 career history
目的:
- 職務経験と経験年数を整理する
項目:
- 配属履歴
- 担当業務
- 期間
- 管理経験有無
- 業界経験
- 主な成果
操作:
- 経歴追加
- 実績追加
- 添付追加

## TG-EMP-007 achievement input
目的:
- 実績を評価根拠として登録する
項目:
- 実績区分
- 実績内容
- 定量値
- 期間
- 目標との関係
- 根拠資料
操作:
- 実績登録
- 修正
- 目標紐付け
- 証拠添付

## TG-EMP-008 self review
目的:
- 自己評価を提出する
項目:
- 評価サイクル
- 自己評価対象軸
- 前回との差分
- 未入力項目
- 根拠不足警告
操作:
- 入力
- 一時保存
- 提出
- 差戻し修正

## TG-EMP-009 my evaluation result
目的:
- 確定した評価結果を確認する
項目:
- 総合スコア
- 現職適合
- 目標職位適合
- growth potential
- ランク
- コメント
- 根拠一覧
- 前回比較
- 校正後変更点
操作:
- 詳細確認
- 根拠表示
- 成長計画へ遷移

## TG-EMP-010 gap analysis
目的:
- 目標職位や目標等級との差分を確認する
項目:
- 不足スキル
- 不足資格
- 不足経験
- 行動面差分
- 優先改善順
操作:
- 目標変更
- 差分確認
- 成長計画へ反映
- 推奨研修表示

## TG-EMP-011 growth plan
目的:
- 成長計画を確認 / 実行する
項目:
- 3か月計画
- 6か月計画
- 12か月計画
- 期限
- 進捗率
- 担当者
- 上長コメント
操作:
- 進捗更新
- 完了報告
- 再計画申請
- メモ追加

## TG-EMP-012 recommendation center
目的:
- 推奨研修、資格、OJT、配属候補を確認する
項目:
- 推奨種別
- 推奨理由
- 対象差分
- 想定効果
- 優先度
操作:
- 詳細確認
- 計画へ追加
- 辞退理由記録
- 研修申請

## TG-EMP-013 mbo linked view
目的:
- 目標と評価、成長計画の関係を確認する
項目:
- 目標一覧
- 達成度
- 評価反映項目
- 未達原因
- 成長計画連携状態
操作:
- 目標詳細確認
- 実績根拠表示
- 成長計画へ反映

## TG-EMP-014 career simulation
目的:
- 次の職種 / 等級 / ロール候補を見る
項目:
- 候補職種
- 候補等級
- 現在到達率
- 必要差分
- 想定期間
操作:
- 候補比較
- 必要条件確認
- 目標設定へ反映

# 5. manager 画面群
## TG-MGR-001 manager dashboard
目的:
- 部下の評価進行、リスク、育成優先事項を把握する
項目:
- 未レビュー件数
- 差戻し件数
- 要更新資格件数
- 高成長候補
- 停滞者
- リスク人材
- チーム平均スコア
- チーム不足スキル
操作:
- レビュー一覧へ遷移
- チーム比較へ遷移
- 1on1準備

## TG-MGR-002 team member list
目的:
- 部下一覧を評価 / 成長視点で見る
項目:
- 氏名
- 所属
- 現ランク
- 現職適合
- 資格期限リスク
- 成長計画進捗
- 要対応状態
操作:
- 並び替え
- 絞込
- 詳細表示
- 一括レビュー起点

## TG-MGR-003 employee comparison
目的:
- 複数人の現在地と差分を比較する
項目:
- スコア比較
- スキル比較
- 資格比較
- 実績比較
- 目標達成比較
- 成長推移比較
操作:
- 比較対象追加
- 比較軸切替
- CSV出力

## TG-MGR-004 team skill heatmap
目的:
- チーム全体のスキル偏在と不足を把握する
項目:
- スキル×メンバーのマトリクス
- 重要スキルの充足率
- 欠員リスク
- 代替可能性
操作:
- スキル絞込
- 重要度切替
- 不足人材抽出

## TG-MGR-005 review input
目的:
- 上長評価を入力する
項目:
- 自己評価内容
- 根拠一覧
- 上長評価項目
- コメント欄
- 差分警告
- 根拠不足警告
操作:
- 上長評価入力
- コメント入力
- 一時保存
- 差戻し
- 承認送信

## TG-MGR-006 one-on-one support
目的:
- 面談で必要な情報を一画面で扱う
項目:
- 現在地
- 前回面談からの変化
- 目標
- 不足項目
- 推奨アクション
- 面談メモ履歴
操作:
- 面談メモ入力
- 次回アクション設定
- 成長計画更新

## TG-MGR-007 growth plan review
目的:
- 部下の成長計画を確認 / 修正する
項目:
- 計画一覧
- 優先度
- 期限
- 実行状況
- 成果見込み
- リスク
操作:
- 承認
- 修正提案
- 優先度変更
- 期限変更
- 追加アクション設定

## TG-MGR-008 role-fit candidate view
目的:
- 部下の配置 / 昇格候補性を確認する
項目:
- 現職適合
- 他ロール適合
- 不足差分
- 到達見込み
- リスク要因
操作:
- 候補比較
- 人事共有
- 成長計画反映
- 配置候補推薦

# 6. HR 画面群
## TG-HR-001 HR dashboard
目的:
- 全社評価運用と人材状況を俯瞰する
項目:
- サイクル進捗
- 未承認件数
- 校正待ち件数
- 期限切れ資格件数
- 組織別分布
- 評価偏り警告
- 重要職種不足
操作:
- サイクル管理へ遷移
- 校正ボードへ遷移
- 監査ログ確認

## TG-HR-002 cycle control
目的:
- 評価サイクルを開始 / 締結する
項目:
- サイクル名
- 対象範囲
- 期間
- 状態
- 締切
- 公開日
- 差戻し件数
操作:
- 開始
- 締切変更
- 再開
- 公開
- 締結

## TG-HR-003 role requirement management
目的:
- 職種別 / 等級別要件を管理する
項目:
- job family
- job role
- grade
- 必須スキル
- 推奨資格
- 必須経験
- 行動要件
- version
操作:
- 新規作成
- 複製
- 改版
- 無効化
- 差分比較

## TG-HR-004 template management
目的:
- 評価テンプレートと職種別テンプレートを管理する
項目:
- テンプレート名
- 対象職種
- 対象等級
- 評価項目数
- version
- 利用中状態
操作:
- 作成
- 複製
- 改版
- 有効化
- 配布

## TG-HR-005 skill dictionary management
目的:
- スキル辞書と階層構造を管理する
項目:
- スキルカテゴリ
- スキル名
- 説明
- 上位 / 下位関係
- 有効状態
- 多言語ラベル
操作:
- 登録
- 編集
- 階層変更
- 廃止
- 多言語更新

## TG-HR-006 certification master management
目的:
- 資格 / 免許マスタを管理する
項目:
- 資格名
- 発行団体
- 更新要否
- 標準有効期間
- 関連職種
- 必須区分
操作:
- 登録
- 編集
- 有効期限ルール更新
- 職種要件反映

## TG-HR-007 calibration board
目的:
- 評価の甘辛差や偏りを補正する
項目:
- 対象社員一覧
- 事前評価
- コメント
- 根拠数
- 組織平均
- 評価者平均との差
- 変更候補
操作:
- 校正メモ入力
- 補正案登録
- 補正確定
- 差戻し
- 会議ログ保存

## TG-HR-008 evaluator bias analysis
目的:
- 評価者ごとの偏りを検知する
項目:
- 評価者別平均
- 組織平均との差
- 極端値率
- 部門別差
- 雇用区分差
- 変動傾向
操作:
- 期間切替
- 組織切替
- 詳細ドリルダウン

## TG-HR-009 distribution analytics
目的:
- 全社分布を分析する
項目:
- ランク分布
- role-fit 分布
- growth potential 分布
- 資格保有率
- スキル不足領域
- 組織比較
- 拠点比較
操作:
- 条件絞込
- 比較表示
- エクスポート

## TG-HR-010 9box / HR portfolio
目的:
- 人材ポートフォリオを確認する
項目:
- performance proxy
- growth potential
- 9box配置
- リスク人材
- 高潜在人材
- 後継候補マーク
操作:
- 軸切替
- フィルタ
- 候補抽出

## TG-HR-011 successor management
目的:
- 後継者候補を管理する
項目:
- critical role
- successor pool
- readiness
- 欠員リスク
- 不足条件
- 想定到達時期
操作:
- 候補追加
- 候補比較
- 計画反映

## TG-HR-012 training / investment analysis
目的:
- 研修投資と成長効果を分析する
項目:
- 研修費
- 資格費
- 通貨
- reporting amount
- ROI
- 成長改善量
- 部門別比較
- 海外拠点比較
操作:
- 期間切替
- 通貨表示切替
- 比較
- 出力

## TG-HR-013 audit log viewer
目的:
- 評価 / 校正 / 承認 / AI参照の履歴を監査する
項目:
- 操作日時
- 操作者
- 対象
- 変更前後
- 理由
- AI参照有無
- export履歴
操作:
- 検索
- フィルタ
- 詳細表示
- 監査出力

# 7. executive 画面群
## TG-EXE-001 executive dashboard
目的:
- 経営視点で人材状況を把握する
項目:
- 重要職種充足率
- 後継者カバー率
- 高潜在人材数
- リスク人材数
- 投資対効果
- 組織別比較
操作:
- 各分析画面へ遷移
- 期間変更
- 比較対象変更

## TG-EXE-002 org talent summary
目的:
- 組織単位での人材力を見る
項目:
- 組織別平均スコア
- ランク分布
- 不足スキル
- 必須資格不足
- 昇格候補数
- 離脱リスク参考指標
操作:
- 組織比較
- 深掘り表示
- レポート出力

## TG-EXE-003 successor pipeline
目的:
- 重要ポジションの後継者状況を確認する
項目:
- critical role 一覧
- ready now / ready later
- 欠員リスク
- 候補不足理由
- 育成状況
操作:
- ロール絞込
- 候補確認
- 人事への確認依頼

## TG-EXE-004 investment and growth view
目的:
- 人材投資と成長成果の相関を見る
項目:
- 投資額
- 通貨 / 換算額
- 成長スコア改善量
- 部門差
- 研修別効果
- 資格別効果
操作:
- 期間切替
- 部門切替
- 通貨表示切替
- 出力

# 8. admin 画面群
## TG-ADM-001 user / role management
目的:
- 利用者と権限を管理する
項目:
- 利用者一覧
- 付与ロール
- 組織範囲
- 有効状態
- 最終利用日
操作:
- ロール付与
- ロール変更
- 停止
- 再有効化

## TG-ADM-002 organization / scope control
目的:
- 組織範囲と閲覧範囲を管理する
項目:
- 組織階層
- 権限範囲
- 例外設定
- 共有範囲
操作:
- 範囲設定
- 例外追加
- 閲覧制御更新

## TG-ADM-003 localization settings
目的:
- 多言語表示設定を管理する
項目:
- 対応言語
- 既定言語
- 翻訳未完了項目
- ラベル差分
操作:
- 言語追加
- 表示順変更
- 翻訳更新

## TG-ADM-004 currency / reporting settings
目的:
- 多通貨表示と換算表示ルールを管理する
項目:
- reporting currency
- 表示通貨
- 丸め規則
- 換算基準日
- 比較表示設定
操作:
- 通貨設定変更
- 表示桁数変更
- 換算表示切替

## TG-ADM-005 integration settings
目的:
- 外部連携設定を管理する
項目:
- ERP連携状態
- MBO連携状態
- 研修連携状態
- 同期最終時刻
- エラー件数
操作:
- 接続確認
- 同期実行
- エラー再試行
- 設定更新

## TG-ADM-006 AI assist settings
目的:
- AI補助機能の利用範囲を制御する
項目:
- 利用対象画面
- 利用対象ロール
- 利用ログ保持期間
- 禁止範囲
- 注意文言設定
操作:
- 有効化 / 無効化
- 対象変更
- 出力制限更新
- ログ確認

# 9. 端末別最適化方針
## smartphone
主利用画面:
- employee dashboard
- certification management
- skill inventory
- self review
- growth plan
- notification center
方針:
- 入力優先
- 1画面1目的
- 縦スクロール中心

## tablet
主利用画面:
- one-on-one support
- review input
- employee comparison
- growth plan review
- calibration board 簡易版
方針:
- 面談 / 会議利用
- 2カラム前提
- 比較表示強化

## PC
主利用画面:
- HR dashboard
- role requirement management
- template management
- distribution analytics
- 9box
- audit log viewer
- investment analysis
方針:
- 一覧 / 比較 / 分析重視
- 横長表と複数フィルタ対応
- エクスポート前提

# 10. 中核導線
## employee主要導線
dashboard
-> self review
-> my evaluation result
-> gap analysis
-> growth plan
-> recommendation center

## manager主要導線
manager dashboard
-> team member list
-> review input
-> one-on-one support
-> growth plan review
-> role-fit candidate view

## HR主要導線
HR dashboard
-> cycle control
-> role requirement management
-> calibration board
-> distribution analytics
-> audit log viewer

## executive主要導線
executive dashboard
-> org talent summary
-> successor pipeline
-> investment and growth view

# 11. 結論
TalentGrowth の画面設計は、
単なる人事評価画面群ではなく、
- 本人が現在地と次行動を理解できる
- 上長が育成判断できる
- 人事が制度運用と校正を回せる
- 経営が人材投資と後継者状況を見られる
- 管理者が権限、多言語、多通貨、連携を維持できる
という5層構造で固定する。

また、
どの主要画面でも
- evidence-first
- role-fit first
- growth-action first
- explainability first
を崩さない。
