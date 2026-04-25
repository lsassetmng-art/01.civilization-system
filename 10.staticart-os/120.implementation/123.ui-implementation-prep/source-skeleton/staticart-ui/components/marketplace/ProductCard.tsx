import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface ProductCardProps {
  asset: AssetSummaryViewModel;
  onOpen?: (assetId: string) => void;
}

export function ProductCard(props: ProductCardProps) {
  const { asset, onOpen } = props;

  return (
    <article>
      <h3>{asset.title}</h3>
      <p>{asset.assetType}</p>
      <p>{asset.lifecycleState}</p>
      <button onClick={() => onOpen?.(asset.assetId)}>Open</button>
    </article>
  );
}
