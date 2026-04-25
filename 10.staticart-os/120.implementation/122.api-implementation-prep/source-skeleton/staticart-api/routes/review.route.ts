import type { ReviewDecisionRequestDto } from "../contracts/dto";
import type { RequestMeta, Uuid } from "../contracts/types";
import { success } from "../core/response";
import { requireActor } from "../guards/permission-guard";
import { AssetService } from "../services/asset-service";

export class ReviewRoute {
  constructor(private readonly assetService: AssetService) {}

  async createReviewRequest(
    meta: RequestMeta,
    assetId: Uuid,
    versionToken: string,
    requestedReviewTypes: string[],
  ) {
    requireActor(meta, ["creator_owner", "publisher_operator"]);
    const data = await this.assetService.createReviewRequest(
      assetId,
      requestedReviewTypes,
      versionToken,
      meta,
    );
    return success(meta.requestId, data);
  }

  async decideReview(
    meta: RequestMeta,
    reviewRequestId: Uuid,
    body: ReviewDecisionRequestDto,
  ) {
    requireActor(meta, ["review_admin", "policy_admin"]);
    const data = await this.assetService.decideReview(reviewRequestId, body, meta);
    return success(meta.requestId, data);
  }
}
