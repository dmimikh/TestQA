#language: ru

@tree

Функционал: при добавлении Услуги в документ Заказ можно ввести значения в поле Количество

Как Администратор я хочу
ввод значения в поле Количество
чтобы ввести в поле Количество числовое значение

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
Сценарий: при добавлении Услуги в документ Заказ можно ввести значения в поле Количество
* создание документа Заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* заполнение шапки документа	
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
* заполнение табличной части	
	И в таблице "Товары" я нажимаю на кнопку с именем 'КомандаПодбор'
	Тогда открылось окно 'Подбор товара'
	И в таблице  "СписокТоваров" я перехожу на один уровень вниз
	И в таблице "СписокТоваров" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4,00' //через кнопку Подбор ввожу числовое значение в поле Количество
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ОК'
