#include "Core.h"

namespace Script {

	int work1(int a, int b)
	{
		return (a ^ b) >> 2;
	}

	int work2(int a, int b)
	{
		return (a | b) >> 2;
	}

	int work3(int a, int b)
	{
		return (a * b) << 2;
	}
}