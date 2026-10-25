$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path $root "catalog.tsv"
$lines = New-Object System.Collections.Generic.List[string]
function L([string]$s) { $lines.Add($s) }

L "G`tPC`t`tКомпьютеры"
L "G`tPER`t`tПериферия"
L "G`tSM`t`tСмартфоны и умные устройства"
L "G`tHW`t`tКомплектующие для ПК"

function T($id, $parent, $name, $props) { L "T`t$id`t$parent`t$name`t$($props -join '|')" }
function I($type, $rows) {
  foreach ($row in $rows) { L "I`t$type`t$row" }
}

T "PC_DESK" "PC" "Персональные компьютеры" @("Процессор","ОЗУ","Накопитель","Видеокарта","Блок питания","ОС")
I "PC_DESK" @(
  "ПК Lenovo ThinkCentre M70q|Lenovo|M70q|i5-14400|16 ГБ|512 ГБ|UHD 730|180 Вт|Windows",
  "ПК Dell OptiPlex 7010|Dell|OptiPlex 7010|i5-13500|16 ГБ|512 ГБ|UHD 770|300 Вт|Windows",
  "ПК HP ProDesk 400 G9|HP|ProDesk 400 G9|i5-12500|8 ГБ|256 ГБ|UHD 770|180 Вт|Windows",
  "ПК Acer Aspire TC-1780|Acer|Aspire TC-1780|i5-13400|16 ГБ|512 ГБ|UHD 730|300 Вт|Windows",
  "ПК IRU Home 310H6|IRU|Home 310H6|i5-12400|16 ГБ|512 ГБ|UHD 730|400 Вт|Windows",
  "ПК MSI PRO DP21|MSI|PRO DP21|i5-13400|16 ГБ|1 ТБ|UHD 730|120 Вт|Windows",
  "ПК ASUS ExpertCenter|ASUS|ExpertCenter|i7-13700|32 ГБ|1 ТБ|UHD 770|500 Вт|Windows",
  "ПК Lenovo Legion T5|Lenovo|Legion T5|i5-14400F|16 ГБ|1 ТБ|RTX 4060|500 Вт|Windows",
  "ПК Acer Nitro N50|Acer|Nitro N50|i5-13400F|16 ГБ|512 ГБ|RTX 4060|500 Вт|Windows",
  "ПК HP OMEN 40L|HP|OMEN 40L|i7-13700F|32 ГБ|1 ТБ|RTX 4070|800 Вт|Windows",
  "ПК MSI Infinite S3|MSI|Infinite S3|i5-14400F|16 ГБ|1 ТБ|RTX 4060|650 Вт|Windows",
  "ПК Dell XPS 8960|Dell|XPS 8960|i7-14700|32 ГБ|1 ТБ|RTX 4060|500 Вт|Windows",
  "ПК Apple Mac mini M4|Apple|Mac mini M4|M4|16 ГБ|256 ГБ|M4 GPU|150 Вт|macOS",
  "ПК Minisforum UM790|Minisforum|UM790 Pro|R9 7940HS|32 ГБ|1 ТБ|Radeon 780|120 Вт|Windows",
  "ПК Beelink SER7|Beelink|SER7|R7 7840HS|32 ГБ|1 ТБ|Radeon 780|120 Вт|Windows"
)

T "PC_AIO" "PC" "Моноблоки" @("Диагональ","Разрешение","Процессор","ОЗУ","Накопитель","ОС")
I "PC_AIO" @(
  "Моноблок Apple iMac 24 M4|Apple|iMac 24 M4|24 дюйм|4480x2520|M4|16 ГБ|256 ГБ|macOS",
  "Моноблок Lenovo IdeaCentre 27|Lenovo|IdeaCentre 27|27 дюйм|1920x1080|i5-13420H|16 ГБ|512 ГБ|Windows",
  "Моноблок HP Pavilion 27|HP|Pavilion 27|27 дюйм|1920x1080|i5-1335U|8 ГБ|512 ГБ|Windows",
  "Моноблок ASUS A3402|ASUS|A3402|23.8 дюйм|1920x1080|i5-1335U|16 ГБ|512 ГБ|Windows",
  "Моноблок Acer Aspire C27|Acer|Aspire C27|27 дюйм|1920x1080|i5-1235U|8 ГБ|512 ГБ|Windows",
  "Моноблок Dell Inspiron 27|Dell|Inspiron 27|27 дюйм|1920x1080|i7-1355U|16 ГБ|1 ТБ|Windows",
  "Моноблок MSI Modern AM242|MSI|Modern AM242|23.8 дюйм|1920x1080|i5-1335U|16 ГБ|512 ГБ|Windows",
  "Моноблок Lenovo Yoga AIO 9|Lenovo|Yoga AIO 9|32 дюйм|3840x2160|i9-13900H|32 ГБ|1 ТБ|Windows",
  "Моноблок Apple iMac 24 M3|Apple|iMac 24 M3|24 дюйм|4480x2520|M3|8 ГБ|256 ГБ|macOS",
  "Моноблок HP All-in-One 24|HP|All-in-One 24|23.8 дюйм|1920x1080|i3-1315U|8 ГБ|256 ГБ|Windows",
  "Моноблок ASUS Zen AiO 24|ASUS|Zen AiO 24|23.8 дюйм|1920x1080|i7-1260P|16 ГБ|512 ГБ|Windows",
  "Моноблок Acer Aspire S32|Acer|Aspire S32|31.5 дюйм|3840x2160|i7-13620H|16 ГБ|1 ТБ|Windows",
  "Моноблок Lenovo IdeaCentre 24|Lenovo|IdeaCentre 24|23.8 дюйм|1920x1080|R5 7530U|16 ГБ|512 ГБ|Windows",
  "Моноблок Dell OptiPlex 7410|Dell|OptiPlex 7410|23.8 дюйм|1920x1080|i5-13500T|16 ГБ|512 ГБ|Windows",
  "Моноблок Microsoft Surface|Microsoft|Studio 2+|28 дюйм|4500x3000|i7-13700H|32 ГБ|1 ТБ|Windows"
)

T "PC_ACC" "PC" "Аксессуары для микрокомпьютеров" @("Интерфейс","Питание","Совместим.","Длина","Цвет","Материал")
I "PC_ACC" @(
  "Корпус для Raspberry Pi 5|Raspberry|Pi 5 Case|USB-C|5 В|Pi 5|—|Черный|Пластик",
  "Блок питания Raspberry Pi 27Вт|Raspberry|Pi 27W PSU|USB-C|5 В|Pi 5|1.2 м|Белый|Пластик",
  "Камера Raspberry Pi Camera 3|Raspberry|Camera 3|CSI|3.3 В|Pi 5|15 см|Черный|Пластик",
  "Радиатор для Raspberry Pi 5|Raspberry|Pi 5 Cooler|—|—|Pi 5|—|Черный|Алюминий",
  "microSD Samsung PRO Plus 128|Samsung|PRO Plus 128|microSD|—|Pi 5|—|—|—",
  "Кабель HDMI micro 1 м|Raspberry|HDMI micro|HDMI|—|Pi 4|1 м|Черный|Пластик",
  "Плата расширения GPIO|Waveshare|GPIO HAT|GPIO|5 В|Pi 5|—|Зеленый|Текстолит",
  "Корпус Argon ONE V3|Argon|ONE V3|USB-C|5 В|Pi 5|—|Серый|Алюминий",
  "Дисплей Waveshare 7 дюймов|Waveshare|7inch HDMI|HDMI|5 В|Pi 4|—|Черный|Пластик",
  "Кулер ICE Tower для Pi|52Pi|ICE Tower|GPIO|5 В|Pi 4|—|Синий|Алюминий",
  "Плата PoE HAT+|Raspberry|PoE HAT+|PoE|5 В|Pi 4|—|Зеленый|Текстолит",
  "Клавиатура Rii Mini i8|Rii|Mini i8|USB|5 В|Pi 4|—|Черный|Пластик",
  "Кабель USB-C 1 м 5А|Baseus|USB-C 5A|USB-C|5 В|Pi 5|1 м|Черный|Нейлон",
  "Корпус Flirc для Pi 5|Flirc|Pi 5 Case|—|—|Pi 5|—|Черный|Алюминий",
  "Набор Sense HAT|Raspberry|Sense HAT|GPIO|5 В|Pi 4|—|Зеленый|Текстолит"
)

T "PC_MON" "PC" "Мониторы" @("Диагональ","Разрешение","Матрица","Частота","Яркость","Интерфейс")
I "PC_MON" @(
  "Монитор Dell S2722QC|Dell|S2722QC|27 дюйм|3840x2160|IPS|60 Гц|350 кд|USB-C",
  "Монитор LG 27UP850|LG|27UP850|27 дюйм|3840x2160|IPS|60 Гц|400 кд|USB-C",
  "Монитор Samsung Odyssey G5|Samsung|Odyssey G5|27 дюйм|2560x1440|VA|165 Гц|300 кд|HDMI",
  "Монитор ASUS TUF VG27AQ|ASUS|TUF VG27AQ|27 дюйм|2560x1440|IPS|165 Гц|350 кд|HDMI",
  "Монитор AOC 24G2SP|AOC|24G2SP|24 дюйм|1920x1080|IPS|165 Гц|250 кд|HDMI",
  "Монитор BenQ GW2480|BenQ|GW2480|23.8 дюйм|1920x1080|IPS|60 Гц|250 кд|HDMI",
  "Монитор MSI MAG 274QRF|MSI|MAG 274QRF|27 дюйм|2560x1440|IPS|170 Гц|400 кд|HDMI",
  "Монитор Gigabyte M27Q|Gigabyte|M27Q|27 дюйм|2560x1440|IPS|170 Гц|350 кд|HDMI",
  "Монитор LG UltraGear 27GR83Q|LG|27GR83Q|27 дюйм|2560x1440|IPS|240 Гц|400 кд|HDMI",
  "Монитор Samsung ViewFinity S6|Samsung|ViewFinity S6|27 дюйм|2560x1440|IPS|100 Гц|350 кд|USB-C",
  "Монитор Philips 27E1N5600|Philips|27E1N5600|27 дюйм|2560x1440|IPS|75 Гц|300 кд|HDMI",
  "Монитор Xiaomi G27Qi|Xiaomi|G27Qi|27 дюйм|2560x1440|IPS|180 Гц|400 кд|HDMI",
  "Монитор IIYAMA G-Master|IIYAMA|GB2770QSU|27 дюйм|2560x1440|IPS|165 Гц|400 кд|HDMI",
  "Монитор Acer Nitro XV272U|Acer|Nitro XV272U|27 дюйм|2560x1440|IPS|170 Гц|400 кд|HDMI",
  "Монитор Apple Studio Display|Apple|Studio Display|27 дюйм|5120x2880|IPS|60 Гц|600 кд|USB-C"
)

T "PC_NB" "PC" "Ноутбуки" @("Диагональ","Процессор","ОЗУ","Накопитель","Видеокарта","Вес")
I "PC_NB" @(
  "Ноутбук Lenovo ThinkPad E14|Lenovo|ThinkPad E14|14 дюйм|i5-1335U|16 ГБ|512 ГБ|Iris Xe|1.6 кг",
  "Ноутбук ASUS VivoBook 15|ASUS|VivoBook 15|15.6 дюйм|i5-1235U|8 ГБ|512 ГБ|Iris Xe|1.7 кг",
  "Ноутбук Acer Aspire 5|Acer|Aspire 5|15.6 дюйм|i5-1335U|16 ГБ|512 ГБ|Iris Xe|1.8 кг",
  "Ноутбук HP Pavilion 15|HP|Pavilion 15|15.6 дюйм|i5-1335U|16 ГБ|512 ГБ|Iris Xe|1.7 кг",
  "Ноутбук Apple MacBook Air 13|Apple|MacBook Air 13|13.6 дюйм|M3|16 ГБ|256 ГБ|M3 GPU|1.2 кг",
  "Ноутбук Apple MacBook Pro 14|Apple|MacBook Pro 14|14.2 дюйм|M4 Pro|24 ГБ|512 ГБ|M4 GPU|1.6 кг",
  "Ноутбук Lenovo Legion 5|Lenovo|Legion 5|16 дюйм|R7 8845HS|16 ГБ|1 ТБ|RTX 4060|2.3 кг",
  "Ноутбук ASUS ROG Strix G16|ASUS|ROG Strix G16|16 дюйм|i7-13650HX|16 ГБ|1 ТБ|RTX 4060|2.5 кг",
  "Ноутбук Acer Nitro 16|Acer|Nitro 16|16 дюйм|i5-13500HX|16 ГБ|512 ГБ|RTX 4050|2.5 кг",
  "Ноутбук MSI Katana 15|MSI|Katana 15|15.6 дюйм|i7-13620H|16 ГБ|1 ТБ|RTX 4050|2.3 кг",
  "Ноутбук Dell XPS 13|Dell|XPS 13|13.4 дюйм|U7-155H|16 ГБ|512 ГБ|Arc|1.2 кг",
  "Ноутбук Huawei MateBook D16|Huawei|MateBook D16|16 дюйм|i5-12450H|16 ГБ|512 ГБ|Iris Xe|1.7 кг",
  "Ноутбук Honor MagicBook X16|Honor|MagicBook X16|16 дюйм|i5-12450H|16 ГБ|512 ГБ|Iris Xe|1.7 кг",
  "Ноутбук ASUS Zenbook 14 OLED|ASUS|Zenbook 14|14 дюйм|U7-155H|16 ГБ|1 ТБ|Arc|1.2 кг",
  "Ноутбук Lenovo IdeaPad Slim 5|Lenovo|IdeaPad Slim 5|16 дюйм|R7 8845HS|16 ГБ|512 ГБ|Radeon|1.9 кг"
)

T "PC_BAG" "PC" "Сумки для ноутбуков" @("Диагональ","Материал","Цвет","Отделения","Вес","Застежка")
I "PC_BAG" @(
  "Рюкзак Lenovo Casual B210|Lenovo|Casual B210|15.6 дюйм|Полиэстер|Черный|2|0.6 кг|Молния",
  "Сумка HP Prelude|HP|Prelude 15|15.6 дюйм|Полиэстер|Черный|2|0.5 кг|Молния",
  "Рюкзак Dell Pro 15|Dell|Pro Backpack|15 дюйм|Нейлон|Черный|3|0.7 кг|Молния",
  "Чехол Targus Classic 14|Targus|Classic 14|14 дюйм|Нейлон|Черный|1|0.4 кг|Молния",
  "Рюкзак Xiaomi Commuter|Xiaomi|Commuter|17 дюйм|Полиэстер|Серый|3|0.8 кг|Молния",
  "Сумка Rivacase 8231|Rivacase|8231|15.6 дюйм|Полиэстер|Синий|2|0.5 кг|Молния",
  "Рюкзак ASUS Rog Ranger|ASUS|Rog Ranger|17 дюйм|Полиэстер|Черный|3|0.9 кг|Молния",
  "Сумка Continent CC-215|Continent|CC-215|15.6 дюйм|Полиэстер|Черный|2|0.5 кг|Молния",
  "Рюкзак Defender Everest|Defender|Everest|15.6 дюйм|Полиэстер|Серый|2|0.6 кг|Молния",
  "Чехол Apple для MacBook 14|Apple|Sleeve 14|14 дюйм|Кожа|Черный|1|0.3 кг|Клапан",
  "Сумка Samsonite GuardIT|Samsonite|GuardIT|15.6 дюйм|Полиэстер|Серый|2|0.6 кг|Молния",
  "Рюкзак Thule Subterra 23|Thule|Subterra 23|16 дюйм|Нейлон|Серый|3|1.1 кг|Молния",
  "Сумка Port Designs Hanoi|Port|Hanoi II|15.6 дюйм|Полиэстер|Черный|2|0.5 кг|Молния",
  "Рюкзак Acer Predator|Acer|Predator|17 дюйм|Полиэстер|Черный|3|1.0 кг|Молния",
  "Чехол Lenovo ThinkPad 14|Lenovo|ThinkPad 14|14 дюйм|Нейлон|Черный|1|0.3 кг|Молния"
)

T "PC_PART" "PC" "Комплектующие и запчасти для ноутбуков" @("Тип детали","Совместим.","Интерфейс","Емкость","Напряжение","Цвет")
I "PC_PART" @(
  "SSD Samsung 990 EVO 1 ТБ|Samsung|990 EVO 1TB|SSD|M.2|PCIe 4.0|1 ТБ|3.3 В|—",
  "ОЗУ Kingston Fury 16 ГБ|Kingston|Fury 16GB|ОЗУ|DDR4|SO-DIMM|16 ГБ|1.2 В|Черный",
  "ОЗУ Crucial 32 ГБ DDR5|Crucial|DDR5 32GB|ОЗУ|DDR5|SO-DIMM|32 ГБ|1.1 В|Черный",
  "Аккумулятор для Lenovo E14|Lenovo|Battery E14|АКБ|ThinkPad|—|45 Втч|11.1 В|Черный",
  "Аккумулятор для ASUS X515|ASUS|Battery X515|АКБ|VivoBook|—|37 Втч|7.6 В|Черный",
  "Клавиатура для Lenovo IdeaPad|Lenovo|KB IdeaPad|Клавиатура|IdeaPad|—|—|—|Черный",
  "Матрица 15.6 IPS 60 Гц|Chimei|NV156FHM|Матрица|15.6|eDP|—|3.3 В|—",
  "Кулер для ноутбука Deepcool|Deepcool|N8|Подставка|15.6|USB|—|5 В|Черный",
  "Зарядка Lenovo 65 Вт USB-C|Lenovo|65W USB-C|БП|ThinkPad|USB-C|65 Вт|20 В|Черный",
  "Зарядка ASUS 90 Вт|ASUS|ADP-90W|БП|ROG|DC|90 Вт|19 В|Черный",
  "SSD Kingston NV2 500 ГБ|Kingston|NV2 500GB|SSD|M.2|PCIe 4.0|500 ГБ|3.3 В|—",
  "Wi-Fi карта Intel AX210|Intel|AX210|Wi-Fi|M.2|PCIe|—|3.3 В|—",
  "Тачпад для HP 250 G8|HP|Touchpad G8|Тачпад|HP 250|—|—|—|Черный",
  "Шлейф матрицы Acer Aspire 5|Acer|Cable A515|Шлейф|Aspire 5|eDP|—|—|Черный",
  "Кулер ноутбука Crown CMLS-930|Crown|CMLS-930|Подставка|17|USB|—|5 В|Черный"
)

T "PER_KB" "PER" "Клавиатуры" @("Тип","Коммутация","Подсветка","Раскладка","Интерфейс","Цвет")
I "PER_KB" @(
  "Клавиатура Logitech MX Keys|Logitech|MX Keys|Офисная|Ножничная|Белая|US|BT|Серый",
  "Клавиатура Keychron K2|Keychron|K2|Механика|Brown|RGB|US|BT|Черный",
  "Клавиатура Royal Kludge RK84|Royal Kludge|RK84|Механика|Red|RGB|RU|BT|Черный",
  "Клавиатура Akko 3068B|Akko|3068B|Механика|Yellow|RGB|US|BT|Белый",
  "Клавиатура A4Tech Bloody B820|A4Tech|Bloody B820|Игровая|Мембрана|RGB|RU|USB|Черный",
  "Клавиатура Defender Oscar|Defender|Oscar|Офисная|Мембрана|Нет|RU|USB|Черный",
  "Клавиатура HyperX Alloy FPS|HyperX|Alloy FPS|Механика|Red|Красная|US|USB|Черный",
  "Клавиатура Razer BlackWidow V3|Razer|BlackWidow V3|Механика|Green|RGB|US|USB|Черный",
  "Клавиатура Corsair K70 RGB|Corsair|K70 RGB|Механика|MX Red|RGB|US|USB|Черный",
  "Клавиатура Apple Magic Keyboard|Apple|Magic Keyboard|Офисная|Ножничная|Нет|US|BT|Белый",
  "Клавиатура Logitech K380|Logitech|K380|Офисная|Ножничная|Нет|RU|BT|Серый",
  "Клавиатура Redragon Kumara|Redragon|Kumara K552|Механика|Red|RGB|RU|USB|Черный",
  "Клавиатура Varmilo VA87M|Varmilo|VA87M|Механика|Cherry|Белая|US|USB|Белый",
  "Клавиатура Durgod K320|Durgod|K320|Механика|Brown|Белая|US|USB|Серый",
  "Клавиатура Cougar Vantar|Cougar|Vantar|Игровая|Ножничная|RGB|RU|USB|Черный"
)

T "PER_MOUSE" "PER" "Мыши" @("Тип","DPI","Кнопки","Интерфейс","Подсветка","Вес")
I "PER_MOUSE" @(
  "Мышь Logitech MX Master 3S|Logitech|MX Master 3S|Офисная|8000|7|BT|Нет|141 г",
  "Мышь Logitech G Pro X|Logitech|G Pro X|Игровая|25600|8|USB|RGB|63 г",
  "Мышь Razer DeathAdder V3|Razer|DeathAdder V3|Игровая|30000|5|USB|Нет|59 г",
  "Мышь SteelSeries Rival 3|SteelSeries|Rival 3|Игровая|8500|6|USB|RGB|77 г",
  "Мышь HyperX Pulsefire|HyperX|Pulsefire|Игровая|16000|6|USB|RGB|95 г",
  "Мышь ASUS ROG Gladius III|ASUS|Gladius III|Игровая|19000|6|USB|RGB|89 г",
  "Мышь Zowie EC2-C|Zowie|EC2-C|Игровая|3200|5|USB|Нет|80 г",
  "Мышь Apple Magic Mouse|Apple|Magic Mouse|Офисная|—|1|BT|Нет|99 г",
  "Мышь Xiaomi Wireless Mouse|Xiaomi|Mi Mouse|Офисная|1200|2|BT|Нет|78 г",
  "Мышь Defender Accura|Defender|Accura|Офисная|1600|3|USB|Нет|90 г",
  "Мышь A4Tech X7 F4|A4Tech|X7 F4|Игровая|3600|7|USB|Нет|130 г",
  "Мышь Corsair Sabre RGB|Corsair|Sabre RGB|Игровая|18000|6|USB|RGB|74 г",
  "Мышь Lamzu Atlantis|Lamzu|Atlantis|Игровая|26000|5|USB|Нет|55 г",
  "Мышь Endgame Gear XM2we|Endgame|XM2we|Игровая|26000|5|USB|Нет|63 г",
  "Мышь Logitech G305|Logitech|G305|Игровая|12000|6|USB|RGB|99 г"
)

T "PER_HEAD" "PER" "Наушники и гарнитуры" @("Тип","Интерфейс","Микрофон","Сопротивл.","Частоты","Цвет")
I "PER_HEAD" @(
  "Наушники Sony WH-1000XM5|Sony|WH-1000XM5|Накладные|BT|Да|32 Ом|20-20000|Черный",
  "Наушники Apple AirPods Pro 2|Apple|AirPods Pro 2|Вкладыши|BT|Да|—|20-20000|Белый",
  "Гарнитура HyperX Cloud II|HyperX|Cloud II|Накладные|USB|Да|60 Ом|15-25000|Черный",
  "Гарнитура Logitech G435|Logitech|G435|Накладные|BT|Да|45 Ом|20-20000|Черный",
  "Наушники Sennheiser HD 560S|Sennheiser|HD 560S|Накладные|3.5 мм|Нет|120 Ом|6-38000|Черный",
  "Гарнитура Razer BlackShark V2|Razer|BlackShark V2|Накладные|USB|Да|32 Ом|12-28000|Черный",
  "Наушники Samsung Galaxy Buds2|Samsung|Galaxy Buds2|Вкладыши|BT|Да|—|20-20000|Белый",
  "Гарнитура JBL Quantum 100|JBL|Quantum 100|Накладные|3.5 мм|Да|32 Ом|20-20000|Черный",
  "Наушники Audio-Technica M50x|Audio-Technica|ATH-M50x|Накладные|3.5 мм|Нет|38 Ом|15-28000|Черный",
  "Гарнитура SteelSeries Arctis|SteelSeries|Arctis Nova|Накладные|USB|Да|38 Ом|20-22000|Черный",
  "Наушники Xiaomi Buds 4|Xiaomi|Buds 4|Вкладыши|BT|Да|—|20-20000|Белый",
  "Гарнитура Corsair HS65|Corsair|HS65|Накладные|USB|Да|32 Ом|20-20000|Черный",
  "Наушники Bose QuietComfort|Bose|QuietComfort|Накладные|BT|Да|—|20-20000|Черный",
  "Гарнитура Defender Warhead|Defender|Warhead|Накладные|USB|Да|32 Ом|20-20000|Черный",
  "Наушники Anker Soundcore Q30|Anker|Soundcore Q30|Накладные|BT|Да|16 Ом|20-20000|Черный"
)

T "SM_PHONE" "SM" "Смартфоны" @("Экран","Память","ОЗУ","Камера","АКБ","Процессор")
I "SM_PHONE" @(
  "Смартфон Apple iPhone 15|Apple|iPhone 15|6.1 дюйм|128 ГБ|6 ГБ|48 Мп|3349|A16",
  "Смартфон Apple iPhone 16|Apple|iPhone 16|6.1 дюйм|128 ГБ|8 ГБ|48 Мп|3561|A18",
  "Смартфон Samsung Galaxy S24|Samsung|Galaxy S24|6.2 дюйм|256 ГБ|8 ГБ|50 Мп|4000|Exynos",
  "Смартфон Samsung Galaxy A55|Samsung|Galaxy A55|6.6 дюйм|128 ГБ|8 ГБ|50 Мп|5000|Exynos",
  "Смартфон Xiaomi 14|Xiaomi|14|6.36 дюйм|256 ГБ|12 ГБ|50 Мп|4610|Snapdragon",
  "Смартфон Xiaomi Redmi Note 13|Xiaomi|Redmi Note 13|6.67 дюйм|128 ГБ|8 ГБ|108 Мп|5000|Dimensity",
  "Смартфон Google Pixel 8|Google|Pixel 8|6.2 дюйм|128 ГБ|8 ГБ|50 Мп|4575|Tensor",
  "Смартфон Honor X9b|Honor|X9b|6.78 дюйм|256 ГБ|8 ГБ|108 Мп|5800|Snapdragon",
  "Смартфон Realme 12 Pro|Realme|12 Pro|6.7 дюйм|256 ГБ|8 ГБ|50 Мп|5000|Snapdragon",
  "Смартфон OnePlus 12|OnePlus|12|6.82 дюйм|256 ГБ|12 ГБ|50 Мп|5400|Snapdragon",
  "Смартфон Nothing Phone 2|Nothing|Phone 2|6.7 дюйм|256 ГБ|12 ГБ|50 Мп|4700|Snapdragon",
  "Смартфон ASUS Zenfone 10|ASUS|Zenfone 10|5.9 дюйм|256 ГБ|8 ГБ|50 Мп|4300|Snapdragon",
  "Смартфон Sony Xperia 10 VI|Sony|Xperia 10 VI|6.1 дюйм|128 ГБ|8 ГБ|48 Мп|5000|Snapdragon",
  "Смартфон Huawei nova 12|Huawei|nova 12|6.7 дюйм|256 ГБ|8 ГБ|50 Мп|4600|Kirin",
  "Смартфон Poco X6 Pro|Poco|X6 Pro|6.67 дюйм|256 ГБ|8 ГБ|64 Мп|5000|Dimensity"
)

T "SM_WATCH" "SM" "Смарт-часы и браслеты" @("Экран","АКБ","Защита","Датчики","Совместим.","Материал")
I "SM_WATCH" @(
  "Часы Apple Watch SE|Apple|Watch SE|1.78 дюйм|18 ч|WR50|Пульс|Apple|Алюминий",
  "Часы Apple Watch Series 10|Apple|Watch S10|1.96 дюйм|18 ч|WR50|ЭКГ|Apple|Алюминий",
  "Часы Samsung Galaxy Watch6|Samsung|Galaxy Watch6|1.3 дюйм|40 ч|IP68|Пульс|Android|Алюминий",
  "Часы Samsung Galaxy Fit3|Samsung|Galaxy Fit3|1.6 дюйм|13 дн|IP68|Пульс|Android|Алюминий",
  "Браслет Xiaomi Smart Band 8|Xiaomi|Smart Band 8|1.62 дюйм|16 дн|5 ATM|Пульс|Android|Пластик",
  "Браслет Xiaomi Smart Band 9|Xiaomi|Smart Band 9|1.62 дюйм|21 дн|5 ATM|Пульс|Android|Алюминий",
  "Часы Huawei Watch GT 4|Huawei|Watch GT 4|1.43 дюйм|14 дн|5 ATM|Пульс|Android|Сталь",
  "Часы Amazfit Balance|Amazfit|Balance|1.5 дюйм|14 дн|5 ATM|Пульс|Android|Алюминий",
  "Часы Garmin Venu 3|Garmin|Venu 3|1.4 дюйм|14 дн|5 ATM|Пульс|Android|Алюминий",
  "Браслет Honor Band 7|Honor|Band 7|1.47 дюйм|14 дн|5 ATM|Пульс|Android|Пластик",
  "Часы Google Pixel Watch 2|Google|Pixel Watch 2|1.2 дюйм|24 ч|IP68|Пульс|Android|Алюминий",
  "Часы OnePlus Watch 2|OnePlus|Watch 2|1.43 дюйм|100 ч|IP68|Пульс|Android|Сталь",
  "Браслет Redmi Band 2|Redmi|Band 2|1.47 дюйм|14 дн|5 ATM|Пульс|Android|Пластик",
  "Часы Huawei Band 9|Huawei|Band 9|1.47 дюйм|14 дн|5 ATM|Пульс|Android|Алюминий",
  "Часы Garmin Forerunner 165|Garmin|Forerunner 165|1.2 дюйм|11 дн|5 ATM|Пульс|Android|Пластик"
)

T "SM_RING" "SM" "Умные кольца" @("Размер","Датчики","АКБ","Защита","Материал","Совместим.")
I "SM_RING" @(
  "Кольцо Oura Ring Gen3|Oura|Ring Gen3|6-13|Пульс|7 дней|IP68|Титан|Android",
  "Кольцо Samsung Galaxy Ring|Samsung|Galaxy Ring|5-13|Пульс|7 дней|IP68|Титан|Android",
  "Кольцо Ultrahuman Ring Air|Ultrahuman|Ring Air|5-14|Пульс|6 дней|IP68|Титан|Android",
  "Кольцо RingConn Gen 2|RingConn|Gen 2|6-13|Пульс|10 дней|IP68|Титан|Android",
  "Кольцо Amazfit Helio|Amazfit|Helio Ring|6-13|Пульс|4 дня|5 ATM|Титан|Android",
  "Кольцо Circular Ring Slim|Circular|Ring Slim|6-13|Пульс|2 дня|IP68|Титан|Android",
  "Кольцо Noise Luna Ring|Noise|Luna Ring|6-13|Пульс|7 дней|IP68|Титан|Android",
  "Кольцо BoAt Lunar|BoAt|Lunar Ring|6-12|Пульс|5 дней|IP67|Титан|Android",
  "Кольцо Gabit Smart Ring|Gabit|Smart Ring|6-13|Пульс|6 дней|IP68|Титан|Android",
  "Кольцо Evie Ring|Movano|Evie Ring|5-12|Пульс|4 дня|IP68|Титан|Apple",
  "Кольцо Happy Ring|Happy Health|Happy Ring|6-13|Пульс|2 дня|IP68|Титан|Android",
  "Кольцо Iris Smart Ring|Iris|Smart Ring|6-12|Пульс|5 дней|IP67|Титан|Android",
  "Кольцо Rogbid SR08|Rogbid|SR08|7-12|Пульс|5 дней|IP67|Сталь|Android",
  "Кольцо Colmi R02|Colmi|R02|7-12|Пульс|5 дней|IP67|Сталь|Android",
  "Кольцо 70mai SphinX|70mai|SphinX|6-13|Пульс|7 дней|IP68|Титан|Android"
)

T "SM_ACC" "SM" "Аксессуары для смартфонов" @("Тип","Совместим.","Материал","Цвет","Интерфейс","Защита")
I "SM_ACC" @(
  "Чехол Apple Silicone iPhone 15|Apple|Silicone 15|Чехол|iPhone|Силикон|Черный|—|—",
  "Чехол Samsung Clear S24|Samsung|Clear S24|Чехол|Galaxy|Пластик|Прозр.|—|—",
  "Стекло Belkin iPhone 15|Belkin|Glass 15|Стекло|iPhone|Стекло|Прозр.|—|9H",
  "Кабель Apple USB-C 1 м|Apple|USB-C 1m|Кабель|USB-C|Нейлон|Белый|USB-C|—",
  "Зарядка Anker Nano 30 Вт|Anker|Nano 30W|Зарядка|USB-C|Пластик|Белый|USB-C|—",
  "Зарядка Samsung 25 Вт|Samsung|25W USB-C|Зарядка|USB-C|Пластик|Черный|USB-C|—",
  "Держатель Baseus Gravity|Baseus|Gravity|Держатель|Авто|Пластик|Черный|—|—",
  "Power Bank Xiaomi 10000|Xiaomi|10000 22.5W|АКБ|USB-C|Пластик|Черный|USB-C|—",
  "Power Bank Baseus 20000|Baseus|Adaman 20K|АКБ|USB-C|Пластик|Черный|USB-C|—",
  "Наушники-переходник Apple|Apple|USB-C jack|Адаптер|iPhone|Пластик|Белый|USB-C|—",
  "Кардхолдер MagSafe ESR|ESR|HaloLock|Держатель|iPhone|Кожа|Черный|MagSafe|—",
  "Селфи-палка Baseus|Baseus|Selfie Stick|Монопод|BT|Алюминий|Черный|BT|—",
  "Защитное стекло Xiaomi 14|Xiaomi|Glass 14|Стекло|Xiaomi|Стекло|Прозр.|—|9H",
  "Чехол Spigen Ultra Hybrid|Spigen|Ultra Hybrid|Чехол|Galaxy|Пластик|Прозр.|—|—",
  "Кабель Baseus 100 Вт 2 м|Baseus|100W 2m|Кабель|USB-C|Нейлон|Черный|USB-C|—"
)

T "HW_CPU" "HW" "Процессоры" @("Сокет","Ядра","Потоки","Частота","Кэш","TDP")
I "HW_CPU" @(
  "Процессор AMD Ryzen 5 5600|AMD|Ryzen 5 5600|AM4|6|12|4.4 ГГц|32 МБ|65 Вт",
  "Процессор AMD Ryzen 5 7600|AMD|Ryzen 5 7600|AM5|6|12|5.1 ГГц|32 МБ|65 Вт",
  "Процессор AMD Ryzen 7 7700|AMD|Ryzen 7 7700|AM5|8|16|5.3 ГГц|32 МБ|65 Вт",
  "Процессор AMD Ryzen 7 7800X3D|AMD|Ryzen 7 7800X3D|AM5|8|16|5.0 ГГц|96 МБ|120 Вт",
  "Процессор AMD Ryzen 9 7900|AMD|Ryzen 9 7900|AM5|12|24|5.4 ГГц|64 МБ|65 Вт",
  "Процессор Intel Core i5-12400F|Intel|Core i5-12400F|LGA1700|6|12|4.4 ГГц|18 МБ|65 Вт",
  "Процессор Intel Core i5-13400F|Intel|Core i5-13400F|LGA1700|10|16|4.6 ГГц|20 МБ|148 Вт",
  "Процессор Intel Core i5-14400F|Intel|Core i5-14400F|LGA1700|10|16|4.7 ГГц|20 МБ|148 Вт",
  "Процессор Intel Core i7-13700K|Intel|Core i7-13700K|LGA1700|16|24|5.4 ГГц|30 МБ|253 Вт",
  "Процессор Intel Core i7-14700K|Intel|Core i7-14700K|LGA1700|20|28|5.6 ГГц|33 МБ|253 Вт",
  "Процессор Intel Core i9-14900K|Intel|Core i9-14900K|LGA1700|24|32|6.0 ГГц|36 МБ|253 Вт",
  "Процессор AMD Ryzen 5 8600G|AMD|Ryzen 5 8600G|AM5|6|12|5.0 ГГц|16 МБ|65 Вт",
  "Процессор Intel Core i3-14100|Intel|Core i3-14100|LGA1700|4|8|4.7 ГГц|12 МБ|60 Вт",
  "Процессор AMD Ryzen 9 7950X|AMD|Ryzen 9 7950X|AM5|16|32|5.7 ГГц|64 МБ|170 Вт",
  "Процессор Intel Core i5-14600K|Intel|Core i5-14600K|LGA1700|14|20|5.3 ГГц|24 МБ|181 Вт"
)

T "HW_MB" "HW" "Материнские платы" @("Сокет","Чипсет","Форм-фактор","Память","Слоты RAM","M.2")
I "HW_MB" @(
  "Плата MSI B650 Tomahawk|MSI|B650 Tomahawk|AM5|B650|ATX|DDR5|4|2",
  "Плата Gigabyte B650 Aorus|Gigabyte|B650 Aorus|AM5|B650|ATX|DDR5|4|3",
  "Плата ASUS TUF B650-Plus|ASUS|TUF B650-Plus|AM5|B650|ATX|DDR5|4|3",
  "Плата ASRock B650M Pro|ASRock|B650M Pro RS|AM5|B650|mATX|DDR5|4|2",
  "Плата MSI MAG B760|MSI|MAG B760|LGA1700|B760|ATX|DDR5|4|2",
  "Плата Gigabyte B760 DS3H|Gigabyte|B760 DS3H|LGA1700|B760|ATX|DDR4|4|2",
  "Плата ASUS PRIME Z790-P|ASUS|PRIME Z790-P|LGA1700|Z790|ATX|DDR5|4|3",
  "Плата MSI PRO Z790-A|MSI|PRO Z790-A|LGA1700|Z790|ATX|DDR5|4|4",
  "Плата ASUS ROG STRIX B650E|ASUS|STRIX B650E-F|AM5|B650E|ATX|DDR5|4|3",
  "Плата Gigabyte X670 Aorus|Gigabyte|X670 Aorus|AM5|X670|ATX|DDR5|4|4",
  "Плата ASRock A620M-HDV|ASRock|A620M-HDV|AM5|A620|mATX|DDR5|2|1",
  "Плата MSI B550 Tomahawk|MSI|B550 Tomahawk|AM4|B550|ATX|DDR4|4|2",
  "Плата ASUS TUF Z790-Plus|ASUS|TUF Z790-Plus|LGA1700|Z790|ATX|DDR5|4|4",
  "Плата Maxsun B760M|Maxsun|B760M|LGA1700|B760|mATX|DDR4|2|2",
  "Плата Biostar B650MT|Biostar|B650MT|AM5|B650|mATX|DDR5|2|2"
)

T "HW_GPU" "HW" "Видеокарты" @("Чип","Память","Тип памяти","Шина","Питание","Длина")
I "HW_GPU" @(
  "Видеокарта Palit RTX 4060|Palit|RTX 4060 Dual|RTX 4060|8 ГБ|GDDR6|128 бит|8 pin|250 мм",
  "Видеокарта MSI RTX 4060 Ti|MSI|RTX 4060 Ti|RTX 4060Ti|8 ГБ|GDDR6|128 бит|8 pin|245 мм",
  "Видеокарта ASUS RTX 4070|ASUS|DUAL RTX 4070|RTX 4070|12 ГБ|GDDR6X|192 бит|8 pin|267 мм",
  "Видеокарта Gigabyte RTX 4070S|Gigabyte|RTX 4070 Super|RTX 4070S|12 ГБ|GDDR6X|192 бит|16 pin|300 мм",
  "Видеокарта Palit RTX 4080S|Palit|RTX 4080 Super|RTX 4080S|16 ГБ|GDDR6X|256 бит|16 pin|329 мм",
  "Видеокарта Sapphire RX 7600|Sapphire|RX 7600 Pulse|RX 7600|8 ГБ|GDDR6|128 бит|8 pin|240 мм",
  "Видеокарта PowerColor RX 7800|PowerColor|RX 7800 XT|RX 7800XT|16 ГБ|GDDR6|256 бит|8 pin|320 мм",
  "Видеокарта ASRock RX 7900 GRE|ASRock|RX 7900 GRE|RX 7900|16 ГБ|GDDR6|256 бит|8 pin|320 мм",
  "Видеокарта MSI RTX 3050|MSI|RTX 3050 Ventus|RTX 3050|8 ГБ|GDDR6|128 бит|8 pin|235 мм",
  "Видеокарта Gigabyte RTX 3060|Gigabyte|RTX 3060|RTX 3060|12 ГБ|GDDR6|192 бит|8 pin|280 мм",
  "Видеокарта INNO3D RTX 4060|INNO3D|RTX 4060 Twin|RTX 4060|8 ГБ|GDDR6|128 бит|8 pin|250 мм",
  "Видеокарта Zotac RTX 4070S|Zotac|RTX 4070 Super|RTX 4070S|12 ГБ|GDDR6X|192 бит|16 pin|307 мм",
  "Видеокарта ASUS RX 6600|ASUS|DUAL RX 6600|RX 6600|8 ГБ|GDDR6|128 бит|8 pin|243 мм",
  "Видеокарта Intel Arc A750|Intel|Arc A750|Arc A750|8 ГБ|GDDR6|256 бит|8 pin|272 мм",
  "Видеокарта Intel Arc B580|Intel|Arc B580|Arc B580|12 ГБ|GDDR6|192 бит|8 pin|272 мм"
)

T "HW_RAM" "HW" "Оперативная память" @("Тип","Объем","Частота","Тайминги","Напряжение","Комплект")
I "HW_RAM" @(
  "Память Kingston Fury 32 ГБ|Kingston|Fury Beast 32|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память G.Skill Trident 32 ГБ|G.Skill|Trident Z5|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память Corsair Vengeance 32|Corsair|Vengeance 32|DDR5|32 ГБ|5600|CL36|1.25 В|2x16",
  "Память ADATA XPG Lancer 32|ADATA|XPG Lancer|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память Kingston Fury 16 ГБ|Kingston|Fury 16 DDR4|DDR4|16 ГБ|3200|CL16|1.35 В|2x8",
  "Память Crucial Pro 32 ГБ|Crucial|Pro 32GB|DDR5|32 ГБ|6000|CL36|1.35 В|2x16",
  "Память Patriot Viper 32 ГБ|Patriot|Viper Venom|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память TeamGroup T-Force 32|TeamGroup|T-Force 32|DDR5|32 ГБ|6400|CL32|1.40 В|2x16",
  "Память G.Skill Ripjaws 64|G.Skill|Ripjaws 64|DDR5|64 ГБ|5600|CL36|1.25 В|2x32",
  "Память Kingston Fury 64 ГБ|Kingston|Fury 64|DDR5|64 ГБ|5600|CL40|1.25 В|2x32",
  "Память Netac Shadow 16 ГБ|Netac|Shadow 16|DDR4|16 ГБ|3200|CL16|1.35 В|2x8",
  "Память Apacer NOX 16 ГБ|Apacer|NOX 16|DDR4|16 ГБ|3600|CL18|1.35 В|2x8",
  "Память Silicon Power 32|Silicon Power|XPOWER 32|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память Lexar ARES 32 ГБ|Lexar|ARES 32|DDR5|32 ГБ|6000|CL30|1.35 В|2x16",
  "Память Acer Predator 32|Acer|Predator 32|DDR5|32 ГБ|6400|CL32|1.40 В|2x16"
)

T "HW_PSU" "HW" "Блоки питания" @("Мощность","Сертификат","Форм-фактор","Модульность","PFC","Вентилятор")
I "HW_PSU" @(
  "БП be quiet! Pure Power 12|be quiet!|Pure Power 12|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Corsair RM750e|Corsair|RM750e|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Seasonic Focus GX-750|Seasonic|Focus GX-750|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Deepcool PK650D|Deepcool|PK650D|650 Вт|Bronze|ATX|Нет|Активный|120 мм",
  "БП Chieftec Polaris 850|Chieftec|Polaris 850|850 Вт|Gold|ATX|Модульный|Активный|135 мм",
  "БП Thermaltake Toughpower|Thermaltake|GF3 850|850 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП MSI MAG A750GL|MSI|MAG A750GL|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Cooler Master MWE 650|Cooler Master|MWE 650|650 Вт|Bronze|ATX|Нет|Активный|120 мм",
  "БП 1stPlayer NGDP 750|1stPlayer|NGDP 750|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Montech Century 850|Montech|Century 850|850 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Zalman GigaMax 600|Zalman|GigaMax 600|600 Вт|Bronze|ATX|Нет|Активный|120 мм",
  "БП Aerocool VX Plus 500|Aerocool|VX Plus 500|500 Вт|—|ATX|Нет|Активный|120 мм",
  "БП FSP Hydro G Pro 750|FSP|Hydro G Pro|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП Super Flower Leadex|Super Flower|Leadex III|750 Вт|Gold|ATX|Модульный|Активный|120 мм",
  "БП ASUS ROG Strix 850G|ASUS|ROG Strix 850|850 Вт|Gold|ATX|Модульный|Активный|135 мм"
)

T "HW_CASE" "HW" "Корпуса" @("Типоразмер","Форм-фактор","Цвет","Вентиляторы","USB","Окно")
I "HW_CASE" @(
  "Корпус Deepcool CC560|Deepcool|CC560|Mid-Tower|ATX|Черный|4|USB 3|Да",
  "Корпус Lian Li Lancool 216|Lian Li|Lancool 216|Mid-Tower|ATX|Черный|2|USB-C|Да",
  "Корпус NZXT H5 Flow|NZXT|H5 Flow|Mid-Tower|ATX|Черный|2|USB-C|Да",
  "Корпус Fractal Pop Air|Fractal|Pop Air|Mid-Tower|ATX|Черный|3|USB 3|Да",
  "Корпус Montech AIR 903|Montech|AIR 903|Mid-Tower|ATX|Черный|4|USB 3|Да",
  "Корпус Cougar Duoface Pro|Cougar|Duoface Pro|Mid-Tower|ATX|Черный|3|USB 3|Да",
  "Корпус Zalman N4|Zalman|N4|Mid-Tower|ATX|Черный|4|USB 3|Да",
  "Корпус AeroCool Cylon|AeroCool|Cylon|Mid-Tower|ATX|Черный|1|USB 3|Да",
  "Корпус Chieftec Hunter|Chieftec|Hunter|Mid-Tower|ATX|Черный|4|USB 3|Да",
  "Корпус Jonsbo D31|Jonsbo|D31|mATX|mATX|Белый|1|USB-C|Да",
  "Корпус Cooler Master NR200|Cooler Master|NR200|Mini-ITX|ITX|Черный|2|USB-C|Нет",
  "Корпус ASUS Prime AP201|ASUS|Prime AP201|mATX|mATX|Белый|0|USB-C|Да",
  "Корпус be quiet! Pure Base|be quiet!|Pure Base 500|Mid-Tower|ATX|Черный|2|USB 3|Да",
  "Корпус Phanteks XT Pro|Phanteks|XT Pro|Mid-Tower|ATX|Черный|3|USB-C|Да",
  "Корпус GameMax Infinity|GameMax|Infinity|Mid-Tower|ATX|Черный|4|USB 3|Да"
)

T "HW_COOL" "HW" "Охлаждение компьютера" @("Тип","Сокет","TDP","Шум","Высота","Подсветка")
I "HW_COOL" @(
  "Кулер Deepcool AK400|Deepcool|AK400|Башня|AM5|220 Вт|29 дБ|155 мм|Нет",
  "Кулер Deepcool AK620|Deepcool|AK620|Башня|AM5|260 Вт|28 дБ|160 мм|Нет",
  "Кулер ID-Cooling SE-224|ID-Cooling|SE-224-XTS|Башня|AM4|220 Вт|28 дБ|154 мм|ARGB",
  "Кулер PCCooler Paladin 400|PCCooler|Paladin 400|Башня|AM5|200 Вт|28 дБ|155 мм|Нет",
  "СЖО Deepcool LS520|Deepcool|LS520|СЖО|AM5|250 Вт|32 дБ|—|ARGB",
  "СЖО Arctic Liquid 240|Arctic|Liquid Freezer|СЖО|AM5|250 Вт|25 дБ|—|Нет",
  "СЖО Lian Li Galahad II|Lian Li|Galahad II|СЖО|AM5|280 Вт|30 дБ|—|ARGB",
  "Кулер Noctua NH-D15|Noctua|NH-D15|Башня|AM4|250 Вт|24 дБ|165 мм|Нет",
  "Кулер be quiet! Dark Rock 4|be quiet!|Dark Rock 4|Башня|AM4|200 Вт|24 дБ|160 мм|Нет",
  "Кулер Thermalright PA120|Thermalright|Peerless 120|Башня|AM5|260 Вт|26 дБ|157 мм|Нет",
  "Вентилятор Arctic P12|Arctic|P12 PWM|Вентилятор|—|—|23 дБ|25 мм|Нет",
  "Вентилятор be quiet! Silent|be quiet!|Silent Wings|Вентилятор|—|—|16 дБ|25 мм|Нет",
  "СЖО MSI MAG CoreLiquid|MSI|CoreLiquid 240|СЖО|AM5|250 Вт|30 дБ|—|ARGB",
  "Кулер Zalman CNPS10X|Zalman|CNPS10X|Башня|AM4|180 Вт|27 дБ|152 мм|Нет",
  "Кулер Cooler Master 212|Cooler Master|Hyper 212|Башня|AM4|180 Вт|26 дБ|159 мм|Нет"
)

T "HW_SSD" "HW" "Твердотельные накопители SSD" @("Форм-фактор","Интерфейс","Объем","Скорость","Память","Ресурс")
I "HW_SSD" @(
  "SSD Samsung 990 PRO 1 ТБ|Samsung|990 PRO 1TB|M.2 2280|PCIe 4.0|1 ТБ|7450|TLC|600 TBW",
  "SSD Samsung 980 500 ГБ|Samsung|980 500GB|M.2 2280|PCIe 3.0|500 ГБ|3500|TLC|300 TBW",
  "SSD Kingston KC3000 1 ТБ|Kingston|KC3000 1TB|M.2 2280|PCIe 4.0|1 ТБ|7000|TLC|800 TBW",
  "SSD Kingston NV2 1 ТБ|Kingston|NV2 1TB|M.2 2280|PCIe 4.0|1 ТБ|3500|QLC|320 TBW",
  "SSD WD Black SN770 1 ТБ|WD|SN770 1TB|M.2 2280|PCIe 4.0|1 ТБ|5150|TLC|600 TBW",
  "SSD WD Blue SN580 1 ТБ|WD|SN580 1TB|M.2 2280|PCIe 4.0|1 ТБ|4150|TLC|600 TBW",
  "SSD Crucial P3 Plus 1 ТБ|Crucial|P3 Plus 1TB|M.2 2280|PCIe 4.0|1 ТБ|5000|QLC|220 TBW",
  "SSD ADATA Legend 900 1 ТБ|ADATA|Legend 900|M.2 2280|PCIe 4.0|1 ТБ|7000|TLC|600 TBW",
  "SSD Netac NV7000 1 ТБ|Netac|NV7000 1TB|M.2 2280|PCIe 4.0|1 ТБ|7000|TLC|640 TBW",
  "SSD Samsung 870 EVO 1 ТБ|Samsung|870 EVO 1TB|2.5 дюйм|SATA|1 ТБ|560|TLC|600 TBW",
  "SSD Crucial MX500 1 ТБ|Crucial|MX500 1TB|2.5 дюйм|SATA|1 ТБ|560|TLC|360 TBW",
  "SSD Kingston A400 480 ГБ|Kingston|A400 480|2.5 дюйм|SATA|480 ГБ|500|TLC|160 TBW",
  "SSD Patriot P400 1 ТБ|Patriot|P400 1TB|M.2 2280|PCIe 4.0|1 ТБ|5000|TLC|800 TBW",
  "SSD Lexar NM790 2 ТБ|Lexar|NM790 2TB|M.2 2280|PCIe 4.0|2 ТБ|7400|TLC|1500 TBW",
  "SSD SK hynix P41 1 ТБ|SK hynix|P41 1TB|M.2 2280|PCIe 4.0|1 ТБ|7000|TLC|750 TBW"
)

T "HW_HDD" "HW" "Жесткие диски HDD" @("Форм-фактор","Объем","Скорость","Кэш","Интерфейс","Назначение")
I "HW_HDD" @(
  "HDD Seagate Barracuda 2 ТБ|Seagate|Barracuda 2TB|3.5 дюйм|2 ТБ|7200|256 МБ|SATA|ПК",
  "HDD Seagate Barracuda 4 ТБ|Seagate|Barracuda 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|ПК",
  "HDD WD Blue 1 ТБ|WD|Blue 1TB|3.5 дюйм|1 ТБ|7200|64 МБ|SATA|ПК",
  "HDD WD Blue 4 ТБ|WD|Blue 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|ПК",
  "HDD Toshiba P300 2 ТБ|Toshiba|P300 2TB|3.5 дюйм|2 ТБ|7200|256 МБ|SATA|ПК",
  "HDD Toshiba P300 3 ТБ|Toshiba|P300 3TB|3.5 дюйм|3 ТБ|7200|256 МБ|SATA|ПК",
  "HDD Seagate IronWolf 4 ТБ|Seagate|IronWolf 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|NAS",
  "HDD WD Red Plus 4 ТБ|WD|Red Plus 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|NAS",
  "HDD Seagate SkyHawk 4 ТБ|Seagate|SkyHawk 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|Видео",
  "HDD WD Purple 4 ТБ|WD|Purple 4TB|3.5 дюйм|4 ТБ|5400|256 МБ|SATA|Видео",
  "HDD Seagate BarraCuda 1 ТБ|Seagate|Barracuda 1TB|3.5 дюйм|1 ТБ|7200|64 МБ|SATA|ПК",
  "HDD Toshiba N300 4 ТБ|Toshiba|N300 4TB|3.5 дюйм|4 ТБ|7200|512 МБ|SATA|NAS",
  "HDD WD Black 2 ТБ|WD|Black 2TB|3.5 дюйм|2 ТБ|7200|64 МБ|SATA|ПК",
  "HDD Seagate FireCuda 2 ТБ|Seagate|FireCuda 2TB|2.5 дюйм|2 ТБ|5400|128 МБ|SATA|ПК",
  "HDD Hitachi Ultrastar 4 ТБ|Hitachi|Ultrastar 4TB|3.5 дюйм|4 ТБ|7200|128 МБ|SATA|Сервер"
)

# checks
$nItems = 0
$bad = @()
foreach ($line in $lines) {
  $p = $line -split "`t", -1
  if ($p[0] -eq "T") {
    if ($p[3].Length -gt 50) { $bad += "type name $($p[3])" }
    foreach ($prop in ($p[4] -split '\|')) { if ($prop.Length -gt 25 -or $prop.Length -lt 1) { $bad += "prop $prop" } }
  }
  if ($p[0] -eq "G" -and $p[3].Length -gt 150) { $bad += "group $($p[3])" }
  if ($p[0] -eq "I") {
    $nItems++
    $f = $p[2] -split '\|', -1
    if ($f.Count -ne 9) { $bad += "fields $($p[2])" ; continue }
    if ($f[0].Length -gt 150) { $bad += "name $($f[0])" }
    if ($f[1].Length -gt 20) { $bad += "brand $($f[1])" }
    if ($f[2].Length -gt 20) { $bad += "model $($f[2])" }
    for ($i=3; $i -le 8; $i++) { if ($f[$i].Length -gt 10) { $bad += "val $($f[$i]) in $($f[0])" } }
  }
}
if ($bad.Count -gt 0) { $bad | Select-Object -First 40; throw "validation $($bad.Count)" }
$utf8 = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllLines($out, $lines, $utf8)
"items=$nItems lines=$($lines.Count) file=$out"
