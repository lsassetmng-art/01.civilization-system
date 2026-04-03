# ============================================================
# INFRASTRUCTURE TYPE CANONICAL DICTIONARY
# ============================================================

status: canonical
source: extracted-and-normalized from infrastructure candidates
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: NETWORK_INFRASTRUCTURE
  display_name_ja: ネットワーク基盤
  display_name_en: NETWORK INFRASTRUCTURE
  description_ja: 通信接続、ネットワーク到達性、回線接続を担うインフラ種別。
  description_en: An infrastructure type for communication connectivity, network reachability, and line connections.
  status: canonical

- code: COMPUTE_INFRASTRUCTURE
  display_name_ja: 計算基盤
  display_name_en: COMPUTE INFRASTRUCTURE
  description_ja: 計算資源、実行環境、処理能力を提供するインフラ種別。
  description_en: An infrastructure type that provides compute resources, execution environments, and processing capacity.
  status: canonical

- code: STORAGE_INFRASTRUCTURE
  display_name_ja: ストレージ基盤
  display_name_en: STORAGE INFRASTRUCTURE
  description_ja: データ保存、ファイル保持、長期保管を担うインフラ種別。
  description_en: An infrastructure type for data storage, file retention, and long-term persistence.
  status: canonical

- code: DATABASE_INFRASTRUCTURE
  display_name_ja: データベース基盤
  display_name_en: DATABASE INFRASTRUCTURE
  description_ja: 構造化データ管理、検索、整合性維持を担うインフラ種別。
  description_en: An infrastructure type for structured data management, querying, and consistency maintenance.
  status: canonical

- code: SECURITY_INFRASTRUCTURE
  display_name_ja: セキュリティ基盤
  display_name_en: SECURITY INFRASTRUCTURE
  description_ja: 保護、認証、制御、脅威対策を担うインフラ種別。
  description_en: An infrastructure type for protection, authentication, control, and threat defense.
  status: canonical

- code: OBSERVABILITY_INFRASTRUCTURE
  display_name_ja: 監視観測基盤
  display_name_en: OBSERVABILITY INFRASTRUCTURE
  description_ja: 監視、可観測性、記録、異常把握を担うインフラ種別。
  description_en: An infrastructure type for monitoring, observability, recording, and anomaly visibility.
  status: canonical

- code: DEPLOYMENT_INFRASTRUCTURE
  display_name_ja: 配備基盤
  display_name_en: DEPLOYMENT INFRASTRUCTURE
  description_ja: 配布、配置、更新、反映を担うインフラ種別。
  description_en: An infrastructure type for distribution, deployment, updates, and rollout.
  status: canonical

- code: BACKUP_INFRASTRUCTURE
  display_name_ja: バックアップ基盤
  display_name_en: BACKUP INFRASTRUCTURE
  description_ja: 退避、複製、保全、復元準備を担うインフラ種別。
  description_en: An infrastructure type for backup, replication, preservation, and restore readiness.
  status: canonical

- code: DISASTER_RECOVERY_INFRASTRUCTURE
  display_name_ja: 災害復旧基盤
  display_name_en: DISASTER RECOVERY INFRASTRUCTURE
  description_ja: 障害時の復旧、代替運用、継続確保を担うインフラ種別。
  description_en: An infrastructure type for disaster recovery, fallback operation, and continuity assurance.
  status: canonical

# ============================================================
# NOTE
# ============================================================

This dictionary defines infrastructure types.
Specific seeded infrastructure entities must be managed separately
in an initial infrastructure dictionary.
