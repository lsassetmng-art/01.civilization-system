# ============================================================
# JAVA CLASS SKELETON MVP
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

core_classes:

app:
- AppDevelopmentStudioApplication
- AppContainer

api.common:
- ApiResponse
- ApiError
- ApiMeta

api.request:
- CreateDevelopmentRequestRequest
- CreateDevelopmentRequestResponse

api.readiness:
- AssessGenerationReadinessRequest
- AssessGenerationReadinessResponse

api.proposal:
- GenerateDesignProposalRequest
- GenerateJavaProposalRequest
- GenerateSqlProposalRequest
- ProposalResponse

api.review:
- RetainProposalRequest
- ApproveProposalRequest
- RejectProposalRequest

api.apply:
- ExecuteApplyRequest
- ExecuteApplyResponse

api.bug:
- CreateBugRecordRequest
- CreateBugRecordResponse

api.progress:
- UpdateTestProgressRequest
- UpdateTestProgressResponse
- UpdateProjectProgressRequest
- UpdateProjectProgressResponse

application.request:
- DevelopmentRequestService
- DevelopmentRequestValidator

application.readiness:
- GenerationReadinessService
- GenerationReadinessScorer

application.proposal:
- ProposalGenerationService
- DesignProposalService
- JavaProposalService
- SqlProposalService

application.review:
- ProposalReviewService

application.apply:
- ApplyExecutionService
- BackupPreparationService
- VerificationService

application.sql:
- SqlSafetyClassifier
- SqlExecutionPolicyResolver

application.git:
- GitControlService
- GitPolicyResolver

application.bug:
- BugRecordService

application.progress:
- TestProgressService
- ProjectProgressService

application.settings:
- RuleProfileService
- LanguageProfileService
- BuildPolicyService

domain.model:
- DevelopmentRequest
- Proposal
- ProposalReview
- ApplyExecution
- BugRecord
- TestProgressRecord
- DevelopmentProgressRecord
- ConnectionProfile
- RuleProfile

domain.policy:
- ReviewPolicy
- ApprovalPolicy
- BuildPolicy
- SqlSafetyPolicy
- GitControlPolicy
- EscalationPolicy
- ReadinessThresholdPolicy

domain.runtime:
- ReadinessDecision
- EffectiveControlDecision
- SqlSafetyClassification
- GitActionDecision

infrastructure.persistence:
- DevelopmentRequestRepository
- ProposalRepository
- ProposalReviewRepository
- ApplyExecutionRepository
- BugRecordRepository
- TestProgressRepository
- DevelopmentProgressRepository
- RuleProfileRepository

infrastructure.git:
- GitRepositoryGateway

infrastructure.sql:
- SqlExecutionGateway
- ConnectionProfileGateway

infrastructure.audit:
- AuditRunRepository
- AuditStepRepository

ui.screen.request:
- RequestInputViewModel
- RequestInputState

ui.screen.readiness:
- ReadinessResultViewModel
- ReadinessResultState

ui.screen.proposal:
- ProposalListViewModel
- ProposalListState
- DiffViewerViewModel
- DiffViewerState

ui.screen.review:
- ReviewApprovalViewModel
- ReviewApprovalState

ui.screen.bug:
- BugListViewModel
- BugDetailViewModel

ui.screen.progress:
- TestProgressViewModel
- ProjectProgressViewModel
