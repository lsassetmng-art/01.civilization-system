# ============================================================
# STATIC ART OS OPENAPI SKELETON
# ============================================================

status: implementation-prep
system: StaticArtOS
owner: Boss
prepared_by: Zero

openapi_sections:
  - info
  - servers
  - security
  - tags
  - paths
  - components.schemas
  - components.parameters
  - components.responses
  - components.headers
  - components.securitySchemes

core_schema_targets:
  - AssetSummary
  - AssetDetail
  - LocalizationWriteRequest
  - RightsPolicyWriteRequest
  - SalesOfferWriteRequest
  - SubscriptionRuleWriteRequest
  - SelfCheckResult
  - ReviewRequestCreateRequest
  - ReviewDecisionRequest
  - PublishActionRequest
  - EntitlementResponse
  - AccessSessionRequest
  - AccessSessionResponse
  - LibraryItem
  - ReaderProgressRequest
  - ViewerProgressRequest
  - FavoriteResponse
  - AnnotationCreateRequest
  - ExhibitionProjectionResponse
  - PurchaseReflectRequest
  - SubscriptionReflectRequest
  - ErrorResponse

rules:
  - success and error shapes must stay consistent across endpoints
  - request_id must appear in response meta
  - cursor pagination components must be reusable
  - error code enum must match fixed error contract
