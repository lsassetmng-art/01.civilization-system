import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface AssetSummaryRailProps {
  asset: AssetSummaryViewModel;
}

export function AssetSummaryRail(props: AssetSummaryRailProps) {
  const { asset } = props;

  return (
    <section>
      <h2>{asset.title}</h2>
      <p>{asset.assetType}</p>
      <p>{asset.lifecycleState}</p>
      {asset.reviewStatus ? <p>{asset.reviewStatus}</p> : null}
      {asset.salesState ? <p>{asset.salesState}</p> : null}
      {asset.subscriptionState ? <p>{asset.subscriptionState}</p> : null}
    </section>
  );
}
