VOL_DIR	= /home/${USERNAME}/data

all: 
	echo ${VOL_DIR}
	[ -d $(VOL_DIR)/mysql ] || mkdir -p $(VOL_DIR)/mysql
	[ -d $(VOL_DIR)/wp ] || mkdir -p $(VOL_DIR)/wp
	docker-compose -f ./srcs/docker-compose.yml up -d
