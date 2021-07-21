all: 
	g++ CalculatorClient.cpp -o client.exe -lrt
	g++ CalculatorServer.cpp -o server.exe -lrt
	
	
clear: 
	ipcrm -M 56
	rm client_exe
	rm server_exe