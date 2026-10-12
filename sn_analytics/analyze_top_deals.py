"""
Analyse rapide de Top Deals.csv (export CRM Dynamics, encodage UTF-16 tabule).

Avant d'executer ce script, convertir le fichier source en UTF-8 :
    iconv -f UTF-16 -t UTF-8 "Top Deals.csv" > top_deals_utf8.csv
"""
import csv
from collections import Counter, defaultdict

INPUT_FILE = "top_deals_utf8.csv"

rows = []
with open(INPUT_FILE, encoding="utf-8") as f:
    reader = csv.DictReader(f, delimiter="\t")
    for r in reader:
        rows.append(r)

print("N rows:", len(rows))
print("Columns:", list(rows[0].keys()))
print()


def to_float(x):
    try:
        return float(x.replace(",", ""))
    except (ValueError, AttributeError):
        return 0.0


total_nnacv = sum(to_float(r["USD NNACV  "]) for r in rows)
print("Total USD NNACV (sum):", round(total_nnacv, 2))

stage_ct = Counter(r["Stage"] for r in rows)
print("\nBy Stage:", stage_ct)

fc_ct = Counter(r["Forecast Category  "] for r in rows)
print("\nBy Forecast Category:", fc_ct)

q_ct = Counter(r[".Quarter"] for r in rows)
print("\nBy Quarter:", q_ct)

region_sum = defaultdict(float)
for r in rows:
    region_sum[r["Opty Region"]] += to_float(r["USD NNACV  "])
print("\nTop regions by NNACV:")
for k, v in sorted(region_sum.items(), key=lambda x: -x[1])[:10]:
    print(f"  {k}: {round(v, 2)}")

acct_sum = defaultdict(float)
for r in rows:
    acct_sum[r["Parent Opty Account Name"]] += to_float(r["USD NNACV  "])
print("\nTop 10 accounts by NNACV:")
for k, v in sorted(acct_sum.items(), key=lambda x: -x[1])[:10]:
    print(f"  {k}: {round(v, 2)}")

print("\nTop 10 single deals by NNACV:")
srt = sorted(rows, key=lambda r: -to_float(r["USD NNACV  "]))
for r in srt[:10]:
    print(f"  {r['Parent Opty Account Name']} | {r['Parent Opty Name']} | "
          f"{r['USD NNACV  ']} | {r['Stage']} | {r['Close Date']}")
