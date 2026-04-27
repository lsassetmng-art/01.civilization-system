# AICompanyManager robot UI screen placement repair scope

## Screen placement

### 会社ダッシュボード
Dashboard must not directly show President setting or robot placement forms.
It may show navigation/status only.

### AI企業設定
This screen owns:
- President robot selection
- company business policy instruction to President

### 組織詳細
This screen owns:
- organization cards
- robot add action per organization card
- selection from Business registered robot catalog local mirror

## Local-only storage
- aicm.businessRegisteredRobots.v1
- aicm.companyPresidentRobot.v2
- aicm.companyPresidentPolicyInstruction.v1
- aicm.organizationCards.v1
- aicm.organizationRobotPlacements.v2
- aicm.currentScreen.v1

## Superseded panels hidden
- aicm-robot-add-local-fallback
- aicm-company-president-robot-fallback
- aicm-correct-robot-responsibility-ui

## Boundary
This phase is UI placement repair only.
Persistent DB integration is not executed.
