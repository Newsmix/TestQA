﻿#language: ru

@tree

Функционал: проверка отчета Остатки товаров

Как Тестировщик я хочу
проверить работу отчета Остатки товаров
чтобы убедиться в ее корректности

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <Проверка отчета Остатки товаров>
	Дано Загрузка Поступление товаров
	
	И В командном интерфейсе я выбираю 'Продажи' 'Остатки товаров'
	Тогда открылось окно 'Остатки товаров'
	И в табличном документе 'Результат' я перехожу к ячейке "R1C1"
	И я устанавливаю флаг с именем 'КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Использование'
	И из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент1Значение" я выбираю точное значение 'Торт'
	И я нажимаю на кнопку с именем 'ФормаСформировать'
	И Табличный документ "Результат" равен макету "Макет"
	
	
