﻿#language: ru

@tree

Функционал: Финальное задание

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Добавление картинки в Товар
	Дано Я открываю навигационную ссылку 'e1cib/list/Справочник.Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' | 'Поставщик'  | 'Цвет'      |
		| 'ОБ-001'  | '000000002' | 'Сапоги'       | 'Пантера АО' | 'Бронзовый' |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю кнопку очистить у поля с именем 'ФайлКартинки'
	И я нажимаю кнопку выбора у поля с именем 'ФайлКартинки'
	Тогда открылось окно "Файлы"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Файл (создание)"
	И в поле с именем 'Наименование' я ввожу текст "2"
	И я выбираю файл 'C:\Education\GitHub\HANS62RUS\Features_IRP\Files\itempicture2.png'
	И я нажимаю на кнопку с именем 'ВыбратьФайлСДискаИЗаписать'
	Тогда открылось окно "* (Файл)"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "* (Файл)" в течение 20 секунд
	Тогда открылось окно "Файлы"
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я закрываю все окна клиентского приложения
	

Сценарий: Тестирование отчета Остатки
	И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
	И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
	Тогда открылось окно 'Выбор варианта отчета'
	И в таблице "СписокНастроек" я перехожу к строке:
		| 'Представление' |
		| 'Основной'      |
	И я нажимаю на кнопку с именем 'Загрузить'
	Тогда открылось окно 'Остатки товаров'
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Использование'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение" я выбираю по строке 'Хлеб '
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И я жду, что табличный документ "Результат" заполнится данными в течение 20 секунд
	Дано табличный документ "Результат" равен макету "ОстаткиТоваров" по шаблону
	И я закрываю все окна клиентского приложения


Сценарий: Проверка документа Расход товара
	И В командном интерфейсе я выбираю 'Продажи' 'Документы продаж'
	Тогда открылось окно 'Документы продаж'
	И я нажимаю на кнопку с именем 'ФормаСоздатьПоПараметруРасходТовара'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Мелкооптовая'
	И из выпадающего списка с именем "Покупатель" я выбираю по строке 'Пантера'
	И я перехожу к следующему реквизиту
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000011' | 'Продукты'     |
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       |
		| '000000032' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Продажа товара (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,00'
	И я перехожу к следующему реквизиту
	И я перехожу к закладке с именем "Прочее"
	И в таблице "Товары" я завершаю редактирование строки
	И в поле с именем 'ОбоснованиеОтгрузки' я ввожу текст 'Тестовое обоснование'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда не появилось окно предупреждения системы
	И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
	Дано табличный документ "SpreadsheetDocument" равен макету "ПечатнаяФорма" по шаблону
	И я закрываю текущее окно
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
	И я жду, что в таблице 'Список' количество строк будет "больше" 0 в течение 10 секунд
	Тогда таблица "Список" содержит строки
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Контрагент' | 'Сумма'  | 'Валюта' |
		| '*'      | '*'           | '1'            | 'Пантера АО' | '750,00' | 'Рубли'  |
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
	И я жду, что в таблице 'Список' количество строк будет "больше" 0 в течение 10 секунд
	Тогда таблица "Список" содержит строки
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Покупатель' | 'Товар' | 'Количество' | 'Сумма'  |
		| '*'      | '*'           | '1'            | 'Пантера АО' | 'Торт ' | '5,00'       | '750,00' |
	И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
	И я жду, что в таблице 'Список' количество строк будет "больше" 0 в течение 10 секунд
	Тогда таблица "Список" содержит строки
		| 'Период' | 'Регистратор' | 'Номер строки' | 'Товар' | 'Склад'   | 'Количество' |
		| '*'      | '*'           | '1'            | 'Торт ' | 'Большой' | '5,00'       |
	И я закрываю текущее окно
	И я закрываю все окна клиентского приложения
	
	