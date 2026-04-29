# AICompanyManager Phase AAM-AAP Production Role Button Save Route Roadmap

## Problem
The generic DB本保存 button was injected into payload cards and accidentally appeared in unrelated UI areas.

## Canonical production design
Do not show generic DB本保存 buttons.
Each screen-specific action button performs the save for its own meaning.

## Role buttons to connect
- Presidentを設定
- Managerを設定
- Leaderを設定
- Workerを追加
- この配置を変更

## Save destination
- business.company_robot_placement

## Candidate source
- business.robot_pool

## Safety
- DB WRITE: NOT EXECUTED by this script
- API SAVE: NOT EXECUTED by this script
- RLS APPLY: NOT EXECUTED
- DELETE: NOT EXECUTED
- quantity_consumption: false
