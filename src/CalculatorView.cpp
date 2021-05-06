#include "CalculatorView.h"

namespace calculator_mvc
{
	CalculatorView::CalculatorView()
	{
	}
	CalculatorView::~CalculatorView()
	{
	}
	
	void CalculatorView::printExpression(Calculator calc)
	{
		std::cout << "Your expression is: " << calc.getNumber1() << " " << calc.getSign() << " "; 
		std::cout << calc.getNumber2() << " = " << calc.getResult(calc.getSign()) << std::endl;
	}
}