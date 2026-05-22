# RobotRentalStore DB Connection Canon

## 1. DB
- DB env: PERSONA_DATABASE_URL
- ERP DATABASE_URL: 不使用

## 2. 参照元候補
BusinessOS:
- business.robot_pool
- business.robot_placement_role_catalog
- business.worker_rental_price_catalog
- business.worker_rental_contract
- business.worker_rental_usage_log
- business.worker_rental_ticket / app-specific entitlement tables

AIWorkerOS:
- aiworker.robot_series_behavior_profile
- aiworker.robot_model_personality_profile
- aiworker.robot_model_public_profile

CX22073JW:
- cx22073jw.vw_robot_role_reference_v1
- cx22073jw.vw_robot_personality_reference_v1
- cx22073jw.vw_robot_public_profile_reference_v1
- cx22073jw.vw_robot_model_full_reference_v2
- future: cx22073jw.vw_robot_role_knowledge_pack_v1
- future: cx22073jw.vw_robot_model_full_reference_v3

## 3. Rental core rule
WorkerRentalCoreは複数アプリに使える汎用レンタル基盤。
アプリ別に最短レンタル単位・無料チケット・上限時間を持つ。

CasualChatWorker:
- 最長2時間
- 月初に無料チケット2枚
- 1チケット=30分

RobotRentalStore:
- 汎用ロボットレンタル入口
- 対象ロボット/アプリごとに rental_unit / max_duration / price を変える

## 4. 今回未確定
- 本番決済
- 本番ユーザーID
- company_id / personal user identity binding
- quote永続化方式
- contract確定API
