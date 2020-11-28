#include <stdio.h>
#include "myMath.h"

int main(){
    double num;
    printf("Please inset a real number:\n");
    scanf("%lf", &num);

    printf("The value of f(𝑥) = 𝑒^𝑥 + 𝑥^3 − 2 at the point %0.4lf is: ",num);
    printf("%0.4lf\n",sub((add((Exponent((int)num)),Power(num,3))),2));

    printf("The value of f(𝑥) = 3x + 2x^3 at the point %0.4lf is: ",num);
    printf("%0.4lf\n",add(mul(3,num),mul(2,Power(num,3))));

    printf("The value of f(𝑥) = (4x^3)/5 - 2x at the point %0.4lf is: ", num);
    printf("%0.4lf\n",(sub(div(mul(4,Power(num,3)),5),mul(2,num))));
 
    return 0;
}