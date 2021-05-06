#include "CalculatorController.h"

namespace calculator_mvc
{

	CalculatorController::CalculatorController(Calculator calc)
	{
		this->calc = calc;
	}

	void CalculatorController::setNumber1(double number)
	{
		calc.setNumber1(number);
	}

	double CalculatorController::getNumber1()
	{
		return calc.getNumber1();
	}

	void CalculatorController::setNumber2(double number)
	{
		calc.setNumber2(number);
	}

	double CalculatorController::getNumber2()
	{
		return calc.getNumber2();
	}

	double CalculatorController::getResult(char sign)
	{
		switch (sign)
		{
		case '+': 
			return calc.getNumber1() + calc.getNumber2();
		case '-':
			return calc.getNumber1() - calc.getNumber2();
		case '*':
			return calc.getNumber1() * calc.getNumber2();
		case '/':
			return calc.getNumber1() / calc.getNumber2();
		default:
			std::cout << "Wrong operation!" << std::endl;
			break;
		}
	}

	void CalculatorController::setSign(char sign)
	{
		calc.setSign(sign);
	}

	char CalculatorController::getSign()
	{
		return calc.getSign();
	}
}