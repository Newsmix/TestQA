﻿#language: ru
@tree


Функционал: <описание фичи>

Как Менеджер по продажам я хочу
создание документа Заказ товара 
чтобы проверить элемент формы с именем ТоварыИтогКоличество 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
И создание документа заказа товаров

* Заполнение товарной части
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Bosch15'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'

* Проверка заполнения табличной части
	Тогда таблица  "Товары" содержит строки:
		| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'     |
		| 'Bosch15' | '3 200,00' | '5'         | '16 000,00' |
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '5'
	


