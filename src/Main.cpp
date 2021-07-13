#include "Calculator.h"
#include "CalculatorView.h"
#include "CalculatorController.h"

using namespace calculator_mvc;

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
	Calculator calc = ExampleDB();
	CalculatorView view = CalculatorView();
	view.printExpression(calc);

	CalculatorController controller = CalculatorController(calc);
	controller.setNumber1(33);
	controller.setNumber2(32);
	controller.setSign('-');
	//std::cout << std::endl << "New expr: " << controller.getNumber1() << " " << controller.getSign() << " ";
	//std::cout << controller.getNumber2() << " = " << controller.getResult(controller.getSign());
	view.printExpression(controller);
}