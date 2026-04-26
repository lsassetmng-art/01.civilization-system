# AICompanyManager DB/RLS Integrated Review Package

phase: Phase BC
status: db-rls-integrated-review-package
reviewer: 佐藤（DB担当）
db_apply: false
rls_apply: false

## 1. Source files

DDL refined draft:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4810_DB_DDL_REFINED_DRAFT.sql

RLS policy draft:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/4930_RLS_POLICY_DRAFT.sql

Integrated review SQL bundle:
- /data/data/com.termux/files/home/01.civilization-system/07.applications/03.business-app/AICompanyManager/5060_DB_RLS_INTEGRATED_REVIEW_BUNDLE.sql

## 2. Review order

1. Table structure
2. FK / logical reference boundary
3. status CHECK constraints
4. actor_membership table candidate
5. helper functions
6. RLS policies
7. service role / RPC boundary
8. DB apply gate

## 3. Main review points

- business schemaでよいか
- AIWorkerOS robot identity は論理参照でよいか
- company_id重複を許容するか
- company_id整合をtriggerで守るか
- membership tableを専用化するか
- RLS helper function設計でよいか
- review_actionの監査設計でよいか
- service role / RPC設計を後続に分けてよいか
