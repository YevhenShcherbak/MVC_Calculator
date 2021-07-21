#ifndef CALCULATOR_H_
#define CALCULATOR_H_

namespace calculator_mvc 
{

	class Calculator;

	class Calculator
	{
		double number1;
		double number2;
		char sign;
		double result;

	public:
		void setNumber1(const double& number);
		const double& getNumber1() const;

		void setNumber2(const double& number);
		const double& getNumber2() const;

		void setSign(const char& sign);
		const char& getSign() const;

		void setResult(const double& result);
		double getResult(char sign);
	};
}
#endif /* CALCULATOR_H_ */