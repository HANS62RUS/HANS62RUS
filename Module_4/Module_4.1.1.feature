﻿#language: ru

@tree

Функционал: Проверка заполнения и блокировок полей документа Заказ покупателя

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка заполнения и блокировок полей документа Заказ покупателя
* Открытие формы создания документа Заказ покупателя
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
* Проверка задизейбленности поля Контрагент
	И поле "Партнер" не заполнено
	И элемент формы "Контрагент" не доступен
* Проверка заполнения полей Партнер и Соглашение
	Когда открылось окно "Заказ покупателя (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	И в таблице 'List' я перехожу к строке
		| 'Наименование'            |
		| 'Клиент 1 (1 соглашение)' |
	И я нажимаю на кнопку с именем 'FormChoose'
	И поле с именем "Agreement" заполнено
		

