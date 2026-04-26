# AICompanyManager Action Router Canon

phase: Phase CA
status: action-router-canon
real_api_connect: false

## 1. 目的

data-action 文字列から category handler へルーティングする。

## 2. routing対象

company:
- switch-company
- add-company
- save-company
- delete-company
- add-common-rules

department:
- switch-department
- add-department
- save-department
- delete-department

organization:
- switch-organization
- add-organization
- save-organization
- delete-organization

ledger:
- add-ledger-row
- save-ledger-row
- delete-ledger-row

csv:
- preview-csv
- import-csv
- copy-csv-prompt

review:
- approve-review
- reject-review
- request-review-revision

## 3. 今回の安全方針

routerはbundleへ入れるが、accepted UI の handleAction は置換しない。

次Phaseで明示的に接続する。
