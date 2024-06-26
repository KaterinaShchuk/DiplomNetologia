﻿#language: ru

@tree
@ExportScenarios
@ТипШага: Нетология. Автотесты
@Описание: Сценарий выполняет обработку "Массовое создание актов" от имени Бухгалтера
@ПримерИспользования: И я запускаю обработку Массовое создание актов от имени Бухгалтера с датой "ДатаСозданияАктов"

Функционал: Массовое создание актов от имени Бухгалтера

Как Бухгалтер ИТ-фирмы я хочу
массово создавать реализации товаров и услуг с помощью обработки Массовое создание актов
чтобы сократить время на создание актов вручную   

Контекст:
	И я подключаю TestClient "IT-master" логин "ГалкаИАБухгалтер" пароль ""

Сценарий: И я запускаю обработку Массовое создание актов от имени Бухгалтера с датой "ДатаСозданияАктов"
	*Я открываю обработку Массовое создание актов
		И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Массовое создание актов'
		Тогда открылось окно 'Массовое создание актов'
	*Я заполняю необходимые поля и запускаю обработку
		И я нажимаю кнопку выбора у поля с именем "ВКМ_ПериодДляУказанияМесяца"
		И в поле с именем 'ВКМ_ПериодДляУказанияМесяца' я ввожу текст '[ДатаСозданияАктов]'
		И я нажимаю на кнопку с именем 'ВКМ_ЗапуститьОперацию'
	