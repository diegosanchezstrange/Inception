VOL_DIR	= /home/${USERNAME}/data

all: 
	[ -d $(VOL_DIR)/mysql ] || mkdir -p $(VOL_DIR)/mysql
	[ -d $(VOL_DIR)/wp ] || mkdir -p $(VOL_DIR)/wp
	docker-compose -f ./srcs/docker-compose.yml up -d

build:
	docker-compose -f ./srcs/docker-compose.yml build --no-cache

stop:
	docker-compose -f srcs/docker-compose.yml down

re:
	docker-compose -f ./srcs/docker-compose.yml up --force-recreate --no-deps -d
