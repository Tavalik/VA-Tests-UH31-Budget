﻿#language: ru

@tree

Функционал: <описание фичи>

Как Администратор я хочу
Проверить что виды отчетов с валютными показателями расчитываются и записываются

Контекст: 

	Дано Я открыл новый сеанс TestClient или подключил уже существующий	
	И я закрыл все окна клиентского приложения

Сценарий: 09.00 Определение типа приложения

	И Я запоминаю значение выражения 'ИдентификацияПродуктаУХКлиентСервер.ЭтоУправлениеХолдингом() И НЕ ИдентификацияПродуктаУХКлиентСервер.ЭтоЕХ()' в переменную "$$ЭтоУХ$$"
	И Я запоминаю значение выражения 'ИдентификацияПродуктаУХКлиентСервер.ЭтоУправлениеХолдингом() И ИдентификацияПродуктаУХКлиентСервер.ЭтоЕХ()' в переменную "$$ЭтоЕРПУХ$$"

Сценарий: 09.01 Создание группы отчетов "ВА - Валютные показатели (группа)"

	* Ищем группу отчетов с именем "ВА - Валютные показатели (группа)"
		И В командном интерфейсе я выбираю 'Бюджетирование, отчетность и анализ' 'Виды и бланки отчетов'
		Тогда открылось окно 'Виды и бланки отчетов'
		И в таблице "СписокВидовОтчетов" я нажимаю на кнопку с именем 'СписокВидовОтчетовНайти'
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Вид отчета'
		И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
		И в поле с именем 'Pattern' я ввожу текст 'ВА - Валютные показатели (группа)'
		И я нажимаю на кнопку с именем 'Find'
		И Пока в таблице "СписокВидовОтчетов" количество строк "больше" 0 Тогда
			И Я запоминаю значение выражения '"Удалить_" + СтрЗаменить(Новый УникальныйИдентификатор, "-", "")' в переменную "УИД"		
			И в таблице "СписокВидовОтчетов" я выбираю текущую строку
			Когда открылось окно 'ВА - Валютные показатели (группа) (Виды отчетов)'		
			И в поле с именем 'Наименование' я ввожу значение переменной "УИД"
			И в поле с именем 'Код' я ввожу значение переменной "УИД"
			И в поле с именем 'Родитель' я ввожу текст ''						
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'ВА - Валютные показатели (группа) (Виды отчетов)' в течение 20 секунд

	* Создаем новую группу отчетов
		И В командном интерфейсе я выбираю 'Бюджетирование, отчетность и анализ' 'Виды и бланки отчетов'
		Тогда открылось окно 'Виды и бланки отчетов'
		И в таблице "СписокВидовОтчетов" я нажимаю на кнопку с именем 'СписокВидовОтчетовСоздатьГруппу'
		Тогда открылось окно 'Виды отчетов (создание группы)'
		И в поле с именем 'Наименование' я ввожу текст 'ВА - Валютные показатели (группа)'
		И из выпадающего списка с именем "Родитель" я выбираю по строке 'ВА - Группа отчетов'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды отчетов (создание группы) *' в течение 20 секунд

Сценарий: 09.02 Создание вида отчета "ВА - Валютные показатели (источник)"

	* Ищем вид отчета с именем "ВА - Валютные показатели (источник)"
		И В командном интерфейсе я выбираю 'Бюджетирование, отчетность и анализ' 'Виды и бланки отчетов'
		Тогда открылось окно 'Виды и бланки отчетов'
		И в таблице "СписокВидовОтчетов" я нажимаю на кнопку с именем 'СписокВидовОтчетовНайти'
		Тогда открылось окно 'Найти'
		И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Вид отчета'
		И я меняю значение переключателя с именем 'CompareType' на 'По части строки'
		И в поле с именем 'Pattern' я ввожу текст 'ВА - Валютные показатели (источник)'
		И я нажимаю на кнопку с именем 'Find'
		И Пока в таблице "СписокВидовОтчетов" количество строк "больше" 0 Тогда
			И Я запоминаю значение выражения '"Удалить_" + СтрЗаменить(Новый УникальныйИдентификатор, "-", "")' в переменную "УИД"		
			И в таблице "СписокВидовОтчетов" я выбираю текущую строку
			Когда открылось окно 'ВА - Валютные показатели (источник) (Виды отчетов)'		
			И в поле с именем 'Наименование' я ввожу значение переменной "УИД"
			И в поле с именем 'ПолноеНаименование' я ввожу значение переменной "УИД"
			И в поле с именем 'Код' я ввожу значение переменной "УИД"
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'ВА - Валютные показатели (источник) (Виды отчетов)' в течение 20 секунд
	
	* Создаем новый вид отчета
		Тогда открылось окно 'Виды и бланки отчетов'
		И в таблице "СписокВидовОтчетов" я нажимаю на кнопку с именем 'СписокВидовОтчетовСоздать'
		Тогда открылось окно 'Виды отчетов (создание)'
		И в поле с именем 'Наименование' я ввожу текст 'ВА - Валютные показатели (источник)'
		И из выпадающего списка с именем "Родитель" я выбираю по строке 'ВА - Валютные показатели (группа)'
		И я устанавливаю флаг с именем 'РазделениеПоПроектам'
		И я перехожу к закладке с именем "АналитикиОтчета"
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды отчетов (создание) *' в течение 20 секунд
	
	* Редактируем структуру отчета
		Тогда открылось окно 'Виды и бланки отчетов'
		И в таблице "СписокВидовОтчетов" я нажимаю на кнопку с именем 'ОткрытьКонструктор'		
		
		* Добавляем строки
			Тогда открылось окно 'Конструктор отчета'
			И я нажимаю на кнопку с именем 'ДеревоСтрокДобавитьСтроки'
			Тогда открылось окно 'Добавление новых строк'
			И в таблице "НовыеСтроки" я нажимаю на кнопку с именем 'НовыеСтрокиДобавить'
			И в таблице "НовыеСтроки" в поле с именем 'НовыеСтрокиНаименование' я ввожу текст 'Выручка'
			И в таблице "НовыеСтроки" я нажимаю на кнопку с именем 'НовыеСтрокиДобавить'
			И в таблице "НовыеСтроки" в поле с именем 'НовыеСтрокиНаименование' я ввожу текст 'Выручка в валюте'
			И в таблице "НовыеСтроки" я нажимаю на кнопку с именем 'НовыеСтрокиДобавить'
			И в таблице "НовыеСтроки" в поле с именем 'НовыеСтрокиНаименование' я ввожу текст 'Выручка по валюте'
			И я нажимаю на кнопку с именем 'ОК'
		* Добавляем колонки
			Тогда открылось окно 'Конструктор отчета'
			И я нажимаю на кнопку с именем 'ДеревоСтрокДобавитьКолонку'
			Тогда открылось окно 'Добавление новых колонок'
			И в таблице "НовыеСтроки" я нажимаю на кнопку с именем 'НовыеСтрокиДобавить'
			И в таблице "НовыеСтроки" в поле с именем 'НовыеСтрокиНаименование' я ввожу текст 'Сумма'
			И я нажимаю на кнопку с именем 'ОК'
		
		* Устанавливаем аналитики отчета
			Тогда открылось окно 'Конструктор отчета'
			И из выпадающего списка с именем "РежимРаботы" я выбираю точное значение 'Аналитики показателей'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R2C2"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Виды аналитик (корпоративные)'
			И я нажимаю на кнопку с именем 'ФормаНайти'
			Тогда открылось окно 'Найти'
			И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Код'
			И в поле с именем 'Pattern' я ввожу текст 'ВА0Контраг'
			И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
			И я нажимаю на кнопку с именем 'Find'
			Тогда открылось окно 'Виды аналитик (корпоративные)'
			И в таблице "Список" я выбираю текущую строку
			Когда открылось окно 'Конструктор отчета'
			И я нажимаю на кнопку с именем 'СкопироватьАналитику'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R3C2"
			И я нажимаю на кнопку с именем 'ВставитьАналитику'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R3C8"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R4C8"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке						
							
	* Создаем многопериодный бланк отчета
		* Открываем бланк
			Когда открылось окно 'Конструктор отчета'
			И Я закрываю окно 'Конструктор отчета'
			Тогда открылось окно 'Виды и бланки отчетов'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование'                             |
				| 'ВА - Валютные показатели (источник)(многопериодный)' |
			И в таблице "Список" я выбираю текущую строку
		* Вызываем конструктор по-умолчанию			
			Тогда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник)*'
			И я нажимаю на кнопку с именем 'ФормаСоздатьМакетИмпорта'
			Тогда открылось окно '1С:Предприятие'
			И я нажимаю на кнопку с именем 'Button0'
			Тогда открылось окно 'Структура отчета'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
		* Добавляем колонку с значением валюта
			Когда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник) *'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "C3"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюДобавитьСтрокиСправа' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюКопироватьВБуферОбмена' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "C4"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюВставитьИзБуфераОбмена' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R5C3:R5C4"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюОбъединить' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R6C4"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			И в табличный документ "ПолеТабличногоДокументаМакет" я ввожу текст 'Сумма (вал)'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R7C4:R10C4"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюОчиститьСодержимое' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R11C4"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Настройка отбора значений показателей'
			И я изменяю флаг с именем 'СуммаВДопВалюте'
			И я нажимаю на кнопку с именем 'ФормаПрименить'
			Тогда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник) *'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R12C4"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюОчиститьСодержимое' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R13C4"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Настройка отбора значений показателей'
			И я изменяю флаг с именем 'СуммаВДопВалюте'
			И я нажимаю на кнопку с именем 'ФормаПрименить'
		* Добавляем колонку с значением валюта для итога
			Когда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник) *'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "C5"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюДобавитьСтрокиСправа' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюКопироватьВБуферОбмена' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "C6"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюВставитьИзБуфераОбмена' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R7C6:R10C6"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюОчиститьСодержимое' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R11C6"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Настройка отбора значений показателей'
			И я изменяю флаг с именем 'СуммаВДопВалюте'
			И я нажимаю на кнопку с именем 'ФормаПрименить'
			Тогда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник) *'
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R12C6"
			И я выбираю пункт контекстного меню с именем 'ПолеТабличногоДокументаМакетКонтекстноеМенюОчиститьСодержимое' на элементе формы с именем "ПолеТабличногоДокументаМакет"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R13C6"
			И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
			Тогда открылось окно 'Настройка отбора значений показателей'
			И я изменяю флаг с именем 'СуммаВДопВалюте'
			И я нажимаю на кнопку с именем 'ФормаПрименить'
		* Записываем макет
			Тогда открылось окно 'Бланк ВА - Валютные показатели (источник)(многопериодный) вида отчета: ВА - Валютные показатели (источник) *'
			И я нажимаю на кнопку с именем 'ФормаКнопкаЗаписатьИЗакрыть'

Сценарий: 09.03 Создание экземпляра отчета - "ВА - Валютные показатели (источник)"  

	* Создаем новый экземпляр отчета
		И В командном интерфейсе я выбираю 'Бюджетирование, отчетность и анализ' 'Экземпляры отчетов'
		Тогда открылось окно 'Экземпляры отчетов'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Укажите ключевые реквизиты документа'
		И из выпадающего списка с именем "ВидОтчета" я выбираю по строке 'ВА - Валютные показатели (источник)'
		И из выпадающего списка с именем "Сценарий" я выбираю по строке 'ВА - Основной сценарий'
		И из выпадающего списка с именем "Периодичность" я выбираю точное значение 'Месяц'
		И я нажимаю на кнопку с именем 'ИзменитьПериод'
		Тогда открылось окно 'Выберите период'
		И в поле с именем 'DateBegin' я ввожу текст '01.01.2021'
		И в поле с именем 'DateEnd' я ввожу текст '31.03.2021'
		И я нажимаю на кнопку с именем 'Select'
		Тогда открылось окно 'Укажите ключевые реквизиты документа'
		И я нажимаю кнопку выбора у поля с именем "Организация"
		* Выбираем организацию
			Если '$$ЭтоУХ$$' Тогда 	
				Когда открылось окно "Организационные единицы"
				И в таблице "Список" я активизирую поле с именем "Наименование"
				И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
				Тогда открылось окно 'Найти'
				И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Наименование в программе'
				И в поле с именем 'Pattern' я ввожу текст 'Меркурий ООО'
				И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
				И я нажимаю на кнопку с именем 'Find'
				Тогда открылось окно 'Организационные единицы'
				И в таблице "Список" я выбираю текущую строку	
			Если '$$ЭтоЕРПУХ$$' Тогда
				Когда открылось окно 'Организации'
				И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
				Тогда открылось окно 'Найти'
				И я меняю значение переключателя с именем 'CompareType' на 'По точному совпадению'
				И в поле с именем 'Pattern' я ввожу текст 'Меркурий ООО'	
				И я нажимаю на кнопку с именем 'Find'
				Тогда открылось окно 'Организации'
				И в таблице "Список" я выбираю текущую строку
		Когда открылось окно 'Укажите ключевые реквизиты документа'
		И из выпадающего списка с именем "Проект" я выбираю по строке 'ВА - Основной проект'
		И я нажимаю на кнопку с именем 'КнопкаОК'

	* Вводим значения показателей
		Когда открылось окно 'Экземпляр отчета ВА - Валютные показатели (источник):  Валюта отображения:  RUB <Меркурий ООО> <ВА - Основной проект> <Январь * г. - Март * г. (Периодичность: Месяц) <ВА - Основной сценарий>> *'
		И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R6C2"
		И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
		Тогда открылось окно 'Раскрытие показателей: Период=Январь * г. \| Организация=Меркурий ООО \| Сценарий=ВА - Основной сценарий \| Проект=ВА - Основной проект \| Валюты=RUB'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю по строке 'ООО \"Ганимед\"'
		И в таблице "РаскрытиеПоказателей" я активизирую поле с именем "Значение"
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '100 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю по строке 'ООО \"Ио\"'
		И в таблице "РаскрытиеПоказателей" я активизирую поле с именем "Значение"
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '200 000,00000'
		И я нажимаю на кнопку с именем 'ФормаКнопкаОК'
		Тогда открылось окно 'Экземпляр отчета ВА - Валютные показатели (источник):  Валюта отображения:  RUB <Меркурий ООО> <ВА - Основной проект> <Январь * г. - Март * г. (Периодичность: Месяц) <ВА - Основной сценарий>> *'
		И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R9C2"
		И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
		Тогда открылось окно 'Раскрытие показателей: Период=Январь * г. \| Организация=Меркурий ООО \| Сценарий=ВА - Основной сценарий \| Проект=ВА - Основной проект \| Валюты=RUB'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ганимед"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'RUB'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '100 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ганимед"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'USD'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '90 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ганимед"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'EUR'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '110 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ио"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'RUB'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '200 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ио"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'USD'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '180 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "ВА0Контраг" я выбираю точное значение 'ООО "Ио"'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'EUR'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '220 000,00000'
		И я нажимаю на кнопку с именем 'ФормаКнопкаОК'
		Тогда открылось окно 'Экземпляр отчета ВА - Валютные показатели (источник):  Валюта отображения:  RUB <Меркурий ООО> <ВА - Основной проект> <Январь * г. - Март * г. (Периодичность: Месяц) <ВА - Основной сценарий>> *'
		И в табличном документе 'ПолеТабличногоДокументаМакет' я перехожу к ячейке "R18C2"
		И в табличном документе 'ПолеТабличногоДокументаМакет' я делаю двойной клик на текущей ячейке
		Тогда открылось окно 'Раскрытие показателей: Период=Январь * г. \| Организация=Меркурий ООО \| Сценарий=ВА - Основной сценарий \| Проект=ВА - Основной проект \| Валюты=RUB'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'RUB'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '300 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'USD'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '270 000,00000'
		И в таблице "РаскрытиеПоказателей" я нажимаю на кнопку с именем 'РаскрытиеПоказателейДобавить'
		И в таблице "РаскрытиеПоказателей" из выпадающего списка с именем "АналитикаВалюта" я выбираю точное значение 'EUR'
		И я перехожу к следующему реквизиту
		И в таблице "РаскрытиеПоказателей" в поле с именем 'Значение' я ввожу текст '330 000,00000'
		И я нажимаю на кнопку с именем 'ФормаКнопкаОК'

	* Копируем значения показателей

	* Сравниваем итоговый документ

	* Записываем документ	
