#ifndef CALCULATORVIEW_H_
#define CALCULATORVIEW_H_

#include "CalculatorController.h"
#include <iostream>

namespace calculator_mvc
{

	class CalculatorView
	{
	public:
		CalculatorView();
		~CalculatorView();
		
		void printExpression(CalculatorController controller);
	};
}
#endif /* CALCULATORVIEW_H_ */