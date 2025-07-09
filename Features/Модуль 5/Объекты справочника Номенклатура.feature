﻿#language: ru

@tree

Функционал: создание элементов справочника Номенклатура


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание элементов справочника Номенклатура
	И Я открываю навигационную ссылку "e1cib/list/Catalog.Items"
	И Я запоминаю значение выражения '1' в переменную "Шаг"
	И Я делаю 10 раз
			И Я запоминаю значение выражения "$Шаг$ + 1" в переменную "Шаг"
			И Я запоминаю значение выражения '"Товар без характеристик" + $Шаг$' в переменную "Номенклатура"
			И я проверяю или создаю для справочника "Items" объекты:
				| 'Ref'                                                               | 'DeletionMark' | 'Code' | 'ItemType' | 'Unit'                                                          | 'MainPricture' | 'Vendor'                                                           | 'ItemID' | 'PackageUnit' | 'Description_en' | 'Description_hash' | 'Description_ru' | 'Description_tr' | 'Height' | 'Length' | 'Volume' | 'Weight' | 'Width' |
				| '{"e1cib/data/Catalog.Items?ref=" + StrReplace(New UUID, "-", "")}' | 'False'        |        | ''         | 'e1cib/data/Catalog.Units?ref=b762b13668d0905011eb76684b9f687b' | ''             | 'e1cib/data/Catalog.Partners?ref=b762b13668d0905011eb7663e35d794d' | ''       | ''            | '$Номенклатура$' | ''                 | ''               | ''               |          |          |          |          |         |
					