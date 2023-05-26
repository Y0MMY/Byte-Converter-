#include <iostream>
#include <Windows.h>

#include "virtual.h"

int main()
{
	auto dllHandle = LoadLibraryA("Script.dll");
	if (dllHandle != NULL)
	{
		typedef Layer* (*ScriptClass)();
		ScriptClass LoadScriptClass = (ScriptClass)GetProcAddress(dllHandle, "ExportScriptClass");
		if (LoadScriptClass != NULL)
		{
			auto object = LoadScriptClass();
			std::cout << object->work1() << std::endl;
			delete object; 
		}
	}
	FreeLibrary(dllHandle);
	return 0;
}