
#define __naked __attribute__((naked))

extern int main(int, int);

__naked 
void _start(void)
{
	main(0, 0);
	while(1);
}


