# Проектная работа UGC spring 2

Сервис для чтения и записи пользовательских данных: лайки, рецензии, закладки к фильмам

## Авторы
* Anton Vysotskiy [@likeinlife](https://github.com/likeinlife)
* Maxim Zaitsev [@maxim-zaitsev](https://github.com/maxim-zaitsev)
* Danil Kalganov [@yandexwork](https://github.com/yandexwork)

# Установка
- git clone https://github.com/likeinlife/ugc_sprint_2.git
- через Makefile выполнить команды:
  - make up

# Запуск/остановка
- make up - запуск
- make down - удалить созданные контейнеры
- make downv - удалить созданные контейнеры, включая volumes

# Тестирование
1. `cd tests`
2. `make test`

# Адрес
- общий: http://localhost
- openapi: http://localhost/api/openapi

# Прочая информация

`make up` и `make down` поднимает один контейнер монго. Если нужно поднять целый кластер, нужно использовать `make prod-up` и `make prod-down`

При настройке MongoDB конфиги и данные сохраняются в директории `./docker_compose_files/mongodb/tmp`. При выполнении команды `make downv` эта директория удаляется.
