# Docker (AQA_Exercise_3.1-2)
## Домашнее задание по курсу "Автоматизированное тестирование"
## Тема: «3.1. Docker», задание №2: «Докеризация приложения»
- Упакова приложения в Docker образ, посредством файла Dockerfile
	- Создание Docker Container на базе OpenJDK 8-slim	
	- Запуск SUT (db-api-for-docker.jar) из созданного Docker Container
	### Предварительные требования
1. Получить доступ к удаленному серверу
1. На удаленном сервере должны быть установлены и доступны:
	- GIT
	- Docker	
	- Bash
1. На компьютере пользователя должны быть установлены:
	- Intellij IDEA
	- Postman	
### Установка и запуск
1. Залогиниться на удаленный сервер
1. Склонировать проект на удаленный сервер командой
	```
	git clone https://github.com/Lognestix/AQA_Exercise_3.1-2
	```
1. Перейти в созданный каталог командой
	```
	cd AQA_Exercise_3.1-2
	```
1. Создать и запустить Docker Container на базе OpenJDK 8-slim и SUT командой
	```
	docker-compose up
	```
1. В Postman осуществить следующий запрос
	```
	GET http://ip_server:9999/api/cards
	```
	где ip_server - ip удаленного сервера
1. В ответ получить
	```
	[ 
		{ 
			"id":1,
			"name":"Альфа-Карта Premium",
			"description":"Альфа-Карта вернёт ваши деньги",
			"imageUrl":"/alfa-card-premium.png"
		},
		{ 
			"id":2,
			"name":"Alfa Travel Premium",
			"description":"Самая выгодная карта для путешествий",
			"imageUrl":"/alfa-card-travel.png"
		},
		{ 
			id":3,
			"name":"CashBack Premium",
			"description":"Заправь свою карту. Кэшбэк на АЗС, в кафе и ресторанах",
			"imageUrl":"/alfa-card-cashback.png"
		}
	]
	```