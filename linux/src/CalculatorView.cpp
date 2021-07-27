#include "../include/CalculatorView.h"

namespace calculator_mvc
{
	CalculatorView::CalculatorView()
	{
	}
	CalculatorView::~CalculatorView()
	{
	}
	
	void CalculatorView::printExpression(CalculatorController controller)
	{
		std::cout << "Your expression is: " << controller.getNumber1() << " " << controller.getSign() << " "; 
		std::cout << controller.getNumber2() << " = " << controller.getResult(controller.getSign()) << std::endl;
	}
}