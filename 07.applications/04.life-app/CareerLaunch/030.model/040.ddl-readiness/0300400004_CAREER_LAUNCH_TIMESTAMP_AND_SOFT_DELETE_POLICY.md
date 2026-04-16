# CareerLaunch TIMESTAMP AND SOFT DELETE POLICY
## Timestamp
- created_at / updated_at は timestamptz。
- 面接・応募・送付時刻はユーザー timezone 表示で扱う。
- deleted_at は soft delete 管理に使用する。
