﻿#language: ru

@tree

Функционал: Проверка отображения возвратов в Отчете D2001 Продажи 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка отображения возвратов в Отчете D2001 Продажи 
И В командном интерфейсе я выбираю "Отчеты" "D2001 Продажи"
Тогда открылось окно "D2001 Продажи"
И я нажимаю на кнопку с именем 'FormChangeVariant'
Тогда открылось окно "Вариант \"Default\" отчета \"D2001 Продажи\""
И в таблице 'SettingsComposerSettingsDataParameters' я перехожу к строке:
	| "Дата начала"        | "Дата окончания"      | "Значение"   | "Использование" | "Параметр" |
	| "01.03.2025 0:00:00" | "31.03.2025 23:59:59" | "Этот месяц" | "Да"            | "Период"   |
И в таблице 'SettingsComposerSettingsDataParameters' я изменяю флаг с именем 'SettingsComposerSettingsDataParametersUse'
И в таблице 'SettingsComposerSettingsDataParameters' я завершаю редактирование строки
И я перехожу к закладке с именем 'FilterPage'
И в таблице 'SettingsComposerSettingsFilter' я нажимаю на кнопку с именем 'SettingsComposerSettingsFilterAddFilterItem'
И в таблице 'SettingsComposerSettingsFilter' из выпадающего списка с именем 'SettingsComposerSettingsFilterLeftValue' я выбираю точное значение "Количество"
И я перехожу к следующему реквизиту
И в таблице 'SettingsComposerSettingsFilter' из выпадающего списка с именем 'SettingsComposerSettingsFilterComparisonType' я выбираю точное значение "Меньше"
И я перехожу к следующему реквизиту
И в таблице 'SettingsComposerSettingsFilter' в поле с именем 'SettingsComposerSettingsFilterRightValue' я ввожу текст "0,000"
И в таблице 'SettingsComposerSettingsFilter' я завершаю редактирование строки
И я нажимаю на кнопку с именем 'FormEndEdit'
Тогда открылось окно "D2001 Продажи"
И я нажимаю на кнопку с именем 'FormGenerate'
Тогда табличный документ 'Result' содержит строки:
	| 'Отбор:'                   | 'Вид мультивалютной аналитики Равно "en наименование не заполнено" И\nКоличество Меньше "0"' | ''        | ''                  | ''             |
	| ''                         | ''                                                                                           | ''        | ''                  | ''             |
	| 'Период, месяц'            | 'Итого'                                                                                      | ''        | ''                  | ''             |
	| 'Номенклатура'             | ''                                                                                           | ''        | ''                  | ''             |
	| 'Характеристика'           | 'Количество'                                                                                 | 'Сумма'   | 'Сумма без налогов' | 'Сумма скидки' |
	| 'Март 2021'                | '-2,000'                                                                                     | '-680,00' | '-566,66'           | ''             |
	| 'Товар с характеристиками' | '-1,000'                                                                                     | '-190,00' | '-158,33'           | ''             |
	| 'S/Красный'                | '-1,000'                                                                                     | '-190,00' | '-158,33'           | ''             |
	| 'Товар без характеристик'  | '-1,000'                                                                                     | '-490,00' | '-408,33'           | ''             |
	| 'Товар без характеристик'  | '-1,000'                                                                                     | '-490,00' | '-408,33'           | ''             |
	| 'Итого'                    | '-2,000'                                                                                     | '-680,00' | '-566,66'           | ''             |
