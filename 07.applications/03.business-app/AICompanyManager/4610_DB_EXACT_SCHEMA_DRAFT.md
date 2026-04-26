# AICompanyManager DB Exact Schema Draft

phase: Phase AW
status: exact-schema-draft
reviewer: 佐藤（DB担当）
db_apply: false

## schema candidate

business

理由:
- AICompanyManager は BusinessOS アプリ
- 業務上の管理事実を扱う
- AIWorkerの本体正本は AIWorkerOS 側

## AICompanyManager が持つ正本

- AI企業
- 会社共通ルール
- 部門
- 組織
- 組織ツリー
- 組織別ロボット配置
- 部門別タスク台帳
- CSV取込履歴
- AI自動処理状態
- レビュー・承認待ち
- 納品候補
- 承認/差し戻し履歴
- 参照ファイル/補足資料メタデータ

## 外部参照

- AIWorkerOS robot identity
- AIWorkerOS role / model / personality
- CommonOS UI foundation
- 実ファイル本体の保存先
- ERP側正本

## 重要ルール

部門別タスク台帳は Manager受領台帳。

Manager / Leader / Worker の分解・割当・成果物作成は自動AI処理であり、通常ユーザー操作画面にはしない。

会社共通ルールは会社レベルの単一ルール箱。

設計開発規約欄は独立させない。
