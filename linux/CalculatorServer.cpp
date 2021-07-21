#include "include/Calculator.h"
#include "include/CalculatorView.h"
#include "include/CalculatorController.h"
#include <iostream>
#include <string>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <vector>

#define MEMORY_NAME "Calculator"
#define BUFFER_SIZE 1024

using namespace calculator_mvc;

std::string Receive()
{
	int shm;
	int mode = O_CREAT;
	char* addr;
	std::string receive;
	std::string error = "Error!";

	if ((shm = shm_open(MEMORY_NAME, mode | O_RDWR, 0777)) == -1)
	{
		perror("shm_open");
		return error;
	}

	if (ftruncate(shm, BUFFER_SIZE + 1) == -1)
	{
		perror("ftruncate");
		return error;
	}

	addr = (char*)mmap(0, BUFFER_SIZE + 1, PROT_WRITE | PROT_READ, MAP_SHARED, shm, 0);
	if (addr == (char*)-1)
	{
		perror("mmap");
		return error;
	}

	std::cout << "Received expression: " << addr << std::endl;
	receive = addr;
	munmap(addr, BUFFER_SIZE);
	close(shm);
	
	return receive;
}

Calculator ExampleDB()
{
	Calculator calc;
	calc.setNumber1(22.3);
	calc.setNumber2(21.2);
	calc.setSign('-');
	return calc;
}

int main()
{
	std::string expression;
	expression = Receive();

	std::vector<std::string> tokens;

	std::size_t prev = 0, pos;
	char sign;
	while ((pos = expression.find_first_of("+-*/", prev)) != std::string::npos)
	{
		sign = expression[pos];
		if (pos > prev)
		{
			tokens.push_back(expression.substr(prev, pos - prev));
		}
		prev = pos + 1;
	}
	if (prev < expression.length())
	{
		tokens.push_back(expression.substr(prev, std::string::npos));
	}
	if (tokens.size() > 2)
	{
		std::cout << "Your expression has more than 2 numbers!" << std::endl;
	}
	else if (tokens.size() < 2)
	{
		std::cout << "Your expression has less than 2 numbers!" << std::endl;
	}

	double a = std::stod(tokens[0]);
	double b = std::stod(tokens[1]);

	Calculator calc = ExampleDB();
	CalculatorView view = CalculatorView();
	view.printExpression(calc);
	
	CalculatorController controller = CalculatorController(calc);
	controller.setNumber1(a);
	controller.setNumber2(b);
	controller.setSign(sign);
	view.printExpression(controller);
	
	/*controller.setNumber1(25);
	controller.setNumber2(35);
	controller.setSign('-');
	view.printExpression(controller);*/
	//std::cout << std::endl << "New expr: " << controller.getNumber1() << " " << controller.getSign() << " ";
	//std::cout << controller.getNumber2() << " = " << controller.getResult(controller.getSign());
}