#include <stdio.h>
int a[100];
int main()
{
    int i,resto;
    for(i=0;i<100;i++) a[i]=i+1;
    for (i=0; i < 100; i++)
    {
        resto=a[i]%2;
        if (resto==0)
            printf("%d es par\n",a[i]);
        else
            printf("%d es impar\n", a[i]);
    }
    printf("Fin del Código\n");
    return 0;
}