#include "../Runtime/virtual.h"
#include "../Script-Core/Core.h"

#include <iostream>

class ScriptLayer : public Layer
{
public:
	virtual int work1() override { return Script::work1(21,3); }
	virtual int work2() override { return Script::work2(1, 4); }
	virtual int work3() override { return Script::work3(22, 121); }
	~ScriptLayer() override { std::cout << "Desctructor\n"; }
};

extern "C" __declspec(dllexport) auto ExportScriptClass()
{
	return new ScriptLayer();
}