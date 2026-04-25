import type { AssetSummaryViewModel } from "../../contracts/ui-types";

export interface LibraryShelfProps {
  title: string;
  items: AssetSummaryViewModel[];
}

export function LibraryShelf(props: LibraryShelfProps) {
  const { title, items } = props;

  return (
    <section>
      <h2>{title}</h2>
      <ul>
        {items.map((item) => (
          <li key={item.assetId}>
            <strong>{item.title}</strong>
            <span>{item.assetType}</span>
          </li>
        ))}
      </ul>
    </section>
  );
}
