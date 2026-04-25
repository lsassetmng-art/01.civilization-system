import type {
  AssetCreateRequestDto,
  AssetSummaryDto,
  LocalizationWriteRequestDto,
  PublishActionRequestDto,
  ReviewDecisionRequestDto,
  RightsPolicyWriteRequestDto,
  SalesOfferWriteRequestDto,
  StateActionRequestDto,
  SubscriptionRuleWriteRequestDto,
} from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";

export interface AssetRepository {
  createDraft(input: AssetCreateRequestDto, meta: RequestMeta): Promise<AssetSummaryDto>;
  getDetail(assetId: Uuid): Promise<Record<string, unknown> | null>;
  upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  runSelfCheck(assetId: Uuid, versionToken: string, meta: RequestMeta): Promise<Record<string, unknown>>;
  createReviewRequest(
    assetId: Uuid,
    requestedReviewTypes: string[],
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  decideReview(
    reviewRequestId: Uuid,
    input: ReviewDecisionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  publishMarketplace(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  publishLibraryOnly(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>>;
  delist(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  restrict(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
  archive(assetId: Uuid, input: StateActionRequestDto, meta: RequestMeta): Promise<Record<string, unknown>>;
}

export class AssetService {
  constructor(private readonly repository: AssetRepository) {}

  async createDraft(
    input: AssetCreateRequestDto,
    meta: RequestMeta,
  ): Promise<AssetSummaryDto> {
    return this.repository.createDraft(input, meta);
  }

  async getAssetDetail(assetId: Uuid): Promise<Record<string, unknown> | null> {
    return this.repository.getDetail(assetId);
  }

  async upsertLocalization(
    assetId: Uuid,
    languageCode: string,
    input: LocalizationWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.upsertLocalization(assetId, languageCode, input, meta);
  }

  async updateRightsPolicy(
    assetId: Uuid,
    input: RightsPolicyWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateRightsPolicy(assetId, input, meta);
  }

  async updateSalesOffer(
    assetId: Uuid,
    input: SalesOfferWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateSalesOffer(assetId, input, meta);
  }

  async updateSubscriptionRule(
    assetId: Uuid,
    input: SubscriptionRuleWriteRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.updateSubscriptionRule(assetId, input, meta);
  }

  async runSelfCheck(
    assetId: Uuid,
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.runSelfCheck(assetId, versionToken, meta);
  }

  async createReviewRequest(
    assetId: Uuid,
    requestedReviewTypes: string[],
    versionToken: string,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.createReviewRequest(assetId, requestedReviewTypes, versionToken, meta);
  }

  async decideReview(
    reviewRequestId: Uuid,
    input: ReviewDecisionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.decideReview(reviewRequestId, input, meta);
  }

  async publishMarketplace(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.publishMarketplace(assetId, input, meta);
  }

  async publishLibraryOnly(
    assetId: Uuid,
    input: PublishActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.publishLibraryOnly(assetId, input, meta);
  }

  async delist(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.delist(assetId, input, meta);
  }

  async restrict(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.restrict(assetId, input, meta);
  }

  async archive(
    assetId: Uuid,
    input: StateActionRequestDto,
    meta: RequestMeta,
  ): Promise<Record<string, unknown>> {
    return this.repository.archive(assetId, input, meta);
  }
}
