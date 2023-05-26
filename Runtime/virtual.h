#pragma once
#include <iostream>

class Layer
{
public:
	virtual ~Layer() { }

	virtual int work1() { return -1; }
	virtual int work2() { return -1; }
	virtual int work3() { return -1; }
};