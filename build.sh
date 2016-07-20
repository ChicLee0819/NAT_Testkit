

if [ $# == 0 ]; then

if [ -e udp_client ]; then
	rm udp_client
fi

if [ -e udp_server ]; then
	rm udp_server
fi

g++ -o udp_client udp_client.cpp -lboost_system -lpthread -lboost_thread
g++ -o udp_server udp_server.cpp -lboost_system -lpthread -lboost_thread

else

case ${1} in
	"clean")
		if [ -e udp_client ]; then
			rm udp_client
		fi

		if [ -e udp_server ]; then
			rm udp_server
		fi

	;;

	*)
	;;
esac

fi

