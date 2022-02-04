#include <stdio.h>
#include<utility>
template<typename Return, typename... T>
Return __enzyme_autodiff(T...);
std::pair<double, double> foo(double in_0, double in_1) {
	double tmp_0 = in_0 * in_0;
	double tmp_1 = in_1 * tmp_0;
	double tmp_2 = in_1 * tmp_1;
	double tmp_3 = in_1 * tmp_2;
	double tmp_4 = in_1 * tmp_3;

	return { tmp_4, tmp_0	};
}
std::pair<double, double> dfoo(double in_0, double in_1) {
	return __enzyme_autodiff<std::pair<double, double> >((void*) foo, in_0, in_1);
}
int main() {
	auto res = dfoo(1.1, 1.2);
}
