# -*- coding: utf-8 -*-
"""Export nomenclature fill data with retail prices (RUB) to the processor template."""
from __future__ import annotations

import json
import sys
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
sys.path.insert(0, str(TOOLS))

import build_nomenclature_catalog as cat  # noqa: E402

ROOT = Path(r"D:\prj\1c\УчебнаяКонфигурация")
JSON_OUT = (
    ROOT
    / "src"
    / "DataProcessors"
    / "ЗаполнениеНоменклатуры"
    / "Templates"
    / "ДанныеЗаполнения"
    / "Template.txt"
)

RENAME = {
    "СкоростьЧт": "Чтение, МБ/с",
    "СкоростьЗп": "Запись, МБ/с",
}

# Розница РФ, осень 2026, округление. Ориентир витрин DNS и Яндекс Маркета.
PRICES = {
    "Персональные компьютеры": [165000, 62000, 58000, 72000, 55000, 175000, 95000, 185000, 249000, 78000, 92000, 74000, 195000, 165000, 125000, 175000, 115000, 89000],
    "Моноблоки": [189000, 72000, 65000, 68000, 85000, 52000, 64000, 98000, 105000, 99000, 42000, 61000, 58000, 125000, 98000, 72000],
    "Аксессуары для микрокомпьютеров": [1200, 1800, 4500, 2200, 4500, 2500, 5500, 1800, 900, 6500, 800, 2800, 900, 1900, 1500, 4200],
    "Мониторы": [28000, 27000, 32000, 29000, 26000, 24000, 27000, 18000, 25000, 14000, 17000, 42000, 45000, 65000, 62000, 32000, 22000, 16000],
    "Ноутбуки": [135000, 210000, 110000, 165000, 145000, 155000, 85000, 98000, 95000, 75000, 65000, 62000, 125000, 98000, 78000, 135000, 175000, 115000],
    "Сумки для ноутбуков": [6900, 8900, 1800, 3500, 2900, 1900, 3200, 2100, 4500, 5500, 6200, 7500, 6900, 8900, 2500, 2200],
    "Комплектующие и запчасти для ноутбуков": [5500, 11000, 7500, 5200, 4500, 4500, 3900, 3200, 9500, 1200, 2800, 700, 2500, 6500, 2200, 2500],
    "Клавиатуры": [12000, 11000, 16000, 9000, 6500, 14000, 9000, 8500, 9000, 14000, 12000, 15000, 13000, 1800, 3500, 14000],
    "Мыши": [10000, 14000, 11000, 15000, 9000, 7500, 11000, 9000, 12000, 14000, 12000, 5500, 1500, 1800, 9000, 7000],
    "Наушники и гарнитуры": [32000, 55000, 38000, 28000, 9000, 16000, 15000, 7000, 24000, 22000, 12000, 11000, 16000, 15000, 18000, 4500],
    "Смартфоны": [105000, 110000, 75000, 70000, 75000, 72000, 45000, 32000, 25000, 28000, 32000, 40000, 85000, 70000, 75000, 65000, 42000, 28000],
    "Смарт-часы и браслеты": [38000, 28000, 65000, 12000, 18000, 15000, 14000, 11000, 55000, 45000, 24000, 6000, 5000, 3500, 42000, 6000],
    "Умные кольца": [28000, 32000, 18000, 25000, 22000, 6000, 5000, 3500, 15000, 25000, 7000, 2500, 4000, 3500, 4000],
    "Аксессуары для смартфонов": [14000, 3500, 4500, 3500, 1200, 2500, 1500, 14000, 2500, 1800, 3500, 4500, 5500, 4000, 1500, 5500],
    "Процессоры": [42000, 18000, 48000, 28000, 38000, 52000, 11000, 12000, 14000, 42000, 45000, 12000, 18000, 32000, 36000, 7000],
    "Материнские платы": [18000, 19000, 13000, 14000, 32000, 15000, 28000, 7000, 30000, 26000, 11000, 55000, 9000, 24000, 17000, 11000],
    "Видеокарты": [78000, 45000, 210000, 62000, 28000, 34000, 68000, 48000, 32000, 60000, 130000, 32000, 24000, 95000, 22000, 65000],
    "Оперативная память": [11000, 13000, 10000, 11000, 10500, 4500, 7000, 4500, 11000, 10000, 14000, 5000, 3500, 24000, 18000, 1800],
    "Блоки питания": [11000, 12000, 14000, 13000, 10000, 9000, 13000, 7000, 12000, 11000, 11000, 10000, 20000, 5500, 14000, 4000],
    "Корпуса": [7500, 9500, 9000, 7000, 8500, 11000, 8000, 5500, 8000, 6500, 8000, 5500, 14000, 16000, 4500, 3000],
    "Охлаждение компьютера": [11000, 5500, 9000, 7500, 12000, 16000, 3500, 2000, 5500, 3500, 2500, 2500, 3000, 10000, 6500, 8000],
    "Твердотельные накопители SSD": [14000, 12000, 11000, 12000, 6500, 9000, 6000, 4500, 6500, 8000, 14000, 13000, 16000, 18000, 3500, 8500],
    "Жесткие диски HDD": [6500, 5000, 6200, 12000, 13000, 18000, 7500, 16000, 7000, 8000, 9000, 7000, 11000, 9000, 20000, 10000],
}


def rename_key(name: str) -> str:
    return RENAME.get(name, name)


def clip(text: str, limit: int) -> str:
    text = " ".join(str(text).split())
    return text[:limit]


def build() -> dict:
    cat.fill_items()
    cat.rest_items()
    names: set[str] = set()
    catalog = {"groups": []}
    for group in cat.GROUPS:
        group_obj = {"name": group["name"], "subgroups": []}
        for subgroup in group["subgroups"]:
            items = cat.ITEMS[subgroup]
            prices = PRICES[subgroup]
            props = [rename_key(prop) for prop in cat.PROPS[subgroup]]
            if not (15 <= len(items) <= 30):
                raise SystemExit(f"{subgroup}: {len(items)} позиций")
            if not (5 <= len(props) <= 10):
                raise SystemExit(f"{subgroup}: {len(props)} свойств")
            if len(prices) != len(items):
                raise SystemExit(f"{subgroup}: цен {len(prices)}, позиций {len(items)}")
            if len(subgroup) > 50 or len(group["name"]) > 50:
                raise SystemExit(f"Длинное имя типа: {subgroup}")
            for prop in props:
                if len(prop) > 25:
                    raise SystemExit(f"Длинное свойство: {prop}")
            subgroup_obj = {"name": subgroup, "properties": props, "items": []}
            for index, (name, brand, model, values) in enumerate(items):
                name = clip(name, 150)
                if name in names:
                    raise SystemExit(f"Повтор наименования: {name}")
                names.add(name)
                renamed = {rename_key(key): clip(value, 50) for key, value in values.items()}
                missing = [prop for prop in props if prop not in renamed or not renamed[prop]]
                if missing:
                    raise SystemExit(f"{name}: нет свойств {missing}")
                brand = clip(brand, 20)
                model = clip(model, 20)
                if not brand or not model:
                    raise SystemExit(f"{name}: пустой бренд или модель")
                price = int(prices[index])
                if price <= 0:
                    raise SystemExit(f"{name}: цена")
                subgroup_obj["items"].append(
                    {
                        "name": name,
                        "brand": brand,
                        "model": model,
                        "price": price,
                        "properties": {prop: renamed[prop] for prop in props},
                    }
                )
            group_obj["subgroups"].append(subgroup_obj)
        catalog["groups"].append(group_obj)
    return catalog


def main() -> None:
    catalog = build()
    JSON_OUT.parent.mkdir(parents=True, exist_ok=True)
    JSON_OUT.write_text(json.dumps(catalog, ensure_ascii=False, indent=2), encoding="utf-8")
    items = sum(len(sg["items"]) for g in catalog["groups"] for sg in g["subgroups"])
    print(f"groups={len(catalog['groups'])} items={items} -> {JSON_OUT}")


if __name__ == "__main__":
    main()
