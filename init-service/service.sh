#!/bin/bash

case "$1" in
	start)
		echo -e "Iniciando Serviço:\\033[65G[ \\033[1;32m OK\\033[0;39m  ]"
	;;
	stop)
		echo -e "Parando Serviço:\\033[65G[ \\033[1;32m OK\\033[0;39m  ]"
	;;
	restart)
		$0 stop
		$0 start
	;;
	status)
		echo "Esse script não faz porra nenhuma!!!"
	;;
	--help)
		echo "Use: serviço {start|stop|status|restart}"
	;;
	-h)
		$0 --help
	;;
	*)
		echo "Sintaxe incorreta, use: serviço {start|stop|status|restart}"
	;;
esac