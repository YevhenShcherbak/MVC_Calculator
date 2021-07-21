#include "Calculator.h"
#include <iostream>

namespace calculator_mvc
{

	void Calculator::setNumber1(const double& number)
	{
		this->number1 = number;
	}

	void Calculator::setNumber2(const double& number)
	{
		this->number2 = number;
	}

	void Calculator::setSign(const char& sign)
	{
		this->sign = sign;
	}

	const double& Calculator::getNumber1() const
	{
		return this->number1;
	}

	const double& Calculator::getNumber2() const
	{
		return this->number2;
	}

	const char& Calculator::getSign() const
	{
		return this->sign;
	}

	void Calculator::setResult(const double& result)
	{
		this->result = result;
	}

	double Calculator::getResult(char sign)
	{
		switch (sign)
		{
		case '+':
			return this->number1 + this->number2;
		case '-':
			return this->number1 - this->number2;
		case '*':
			return this->number1 * this->number2;
		case '/':
			return this->number1 / this->number2;
		default:
			std::cout << "Wrong operation!" << std::endl;
			break;
		}
	}
}
