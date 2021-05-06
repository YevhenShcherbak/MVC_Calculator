#ifndef CALCULATORVIEW_H_
#define CALCULATORVIEW_H_

#include "Calculator.h"
#include <iostream>

namespace calculator_mvc
{

	class CalculatorView
	{
	public:
		CalculatorView();
		~CalculatorView();
		
		void printExpression(Calculator calc);
	};
}
#endif /* CALCULATORVIEW_H_ */