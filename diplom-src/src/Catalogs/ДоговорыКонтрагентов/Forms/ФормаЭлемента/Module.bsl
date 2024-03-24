
//Доработка Щукина Е.Д.
//Начало программный вывод на форму новых реквизитов договора, 
//если выбран вид договора "Абонентское обслуживание"

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Объект.ВидДоговора = Перечисления.ВидыДоговоровКонтрагентов.ВКМ_АбонентскоеОбслуживание Тогда
		
		ГруппаСрокДействия = ЭтаФорма.Элементы.Добавить("ГруппаОбычная", Тип("ГруппаФормы"),ЭтаФорма);
		ГруппаСрокДействия.Вид = ВидГруппыФормы.ОбычнаяГруппа;
		ГруппаСрокДействия.Отображение = ОтображениеОбычнойГруппы.Нет;
		ГруппаСрокДействия.ОтображатьЗаголовок = ЛОЖЬ; 
		ГруппаСрокДействия.Группировка = ГруппировкаПодчиненныхЭлементовФормы.ГоризонтальнаяВсегда;
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_НачалоДействия", Тип("ПолеФормы"), ГруппаСрокДействия);
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_НачалоДействия";
		НовыйЭлемент.Заголовок = "Начало действия договора";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_ОкончаниеДействия", Тип("ПолеФормы"), ГруппаСрокДействия);
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_ОкончаниеДействия";
		НовыйЭлемент.Заголовок = "Окончание действия договора";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_АбонентскаяПлата", Тип("ПолеФормы"));
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_АбонентскаяПлата";
		НовыйЭлемент.Заголовок = "Сумма ежемесячной абоненсткой платы";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_СтоимостьЧасаРаботы", Тип("ПолеФормы"));
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_СтоимостьЧасаРаботы";
		НовыйЭлемент.Заголовок = "Стоимость часа работы специалиста";
		
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ВидДоговораПриИзменении(Элемент)
	
	Если Объект.ВидДоговора = Перечисления.ВидыДоговоровКонтрагентов.ВКМ_АбонентскоеОбслуживание Тогда
		
		ВидДоговораПриИзмененииНаСервере()
	
	Иначе 
		
		Элементы.ВКМ_НачалоДействия.Видимость = Ложь;
		Элементы.ВКМ_ОкончаниеДействия.Видимость = Ложь;
		Элементы.ВКМ_АбонентскаяПлата.Видимость = Ложь;
		Элементы.ВКМ_СтоимостьЧасаРаботы.Видимость = Ложь;
		
	КонецЕсли;
	
КонецПроцедуры

&НаСервере
Процедура ВидДоговораПриИзмененииНаСервере()
			
		ГруппаСрокДействия = ЭтотОбъект.Элементы.Добавить("ГруппаОбычная", Тип("ГруппаФормы"),ЭтаФорма);
		ГруппаСрокДействия.Вид = ВидГруппыФормы.ОбычнаяГруппа;
		ГруппаСрокДействия.Отображение = ОтображениеОбычнойГруппы.Нет;
		ГруппаСрокДействия.ОтображатьЗаголовок = ЛОЖЬ; 
		ГруппаСрокДействия.Группировка = ГруппировкаПодчиненныхЭлементовФормы.ГоризонтальнаяВсегда;
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_НачалоДействия", Тип("ПолеФормы"), ГруппаСрокДействия);
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_НачалоДействия";
		НовыйЭлемент.Заголовок = "Начало действия договора";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_ОкончаниеДействия", Тип("ПолеФормы"), ГруппаСрокДействия);
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_ОкончаниеДействия";
		НовыйЭлемент.Заголовок = "Окончание действия договора";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_АбонентскаяПлата", Тип("ПолеФормы"));
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_АбонентскаяПлата";
		НовыйЭлемент.Заголовок = "Сумма ежемесячной абоненсткой платы";
		
		НовыйЭлемент = Элементы.Добавить("ВКМ_СтоимостьЧасаРаботы", Тип("ПолеФормы"));
		НовыйЭлемент.Вид = ВидПоляФормы.ПолеВвода;
		НовыйЭлемент.ПутьКДанным = "Объект.ВКМ_СтоимостьЧасаРаботы";
		НовыйЭлемент.Заголовок = "Стоимость часа работы специалиста";
	
КонецПроцедуры

//Доработка Щукина Е.Д.
//Конец программный вывод на форму новых реквизитов договора, 
//если выбран вид договора "Абонентское обслуживание"