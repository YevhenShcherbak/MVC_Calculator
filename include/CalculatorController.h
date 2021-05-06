#ifndef CALCULATORCONTROLLER_H_
#define CALCULATORCONTROLLER_H_

#include "Calculator.h"
#include "CalculatorView.h"

namespace calculator_mvc
{

	class CalculatorController
	{
		Calculator calc;
	public:
		CalculatorController(Calculator calc);

		void setNumber1(double number);
		double getNumber1();

		void setNumber2(double number);
		double getNumber2();

		void setSign(char sign);
		char getSign();

		double getResult(char sign);
	};
}
#endif