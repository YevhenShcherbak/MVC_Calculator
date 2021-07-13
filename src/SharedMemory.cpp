#include "SharedMemory.h"

HANDLE hMapFile;
LPVOID pBuffer;

bool initSharedMemory()
{
	std::string memoryName = "Calculator";
	hMapFile = CreateFileMapping(
		INVALID_HANDLE_VALUE,
		NULL,
		PAGE_READWRITE,
		0,
		MEMORY_SIZE,
		(LPCWSTR)memoryName.c_str()
	);

	if (hMapFile == NULL)
	{
		return false;
	}

	pBuffer = (LPSTR)MapViewOfFile(
		hMapFile,
		FILE_MAP_ALL_ACCESS,
		0,
		0,
		MEMORY_SIZE
	);

	if (pBuffer == NULL)
	{
		CloseHandle(hMapFile);
		return false;
	}

	memset(ADDRESS, 0, MEMORY_SIZE);
	return true;
}

void writeValueToSharedMemory(char* address, char value)
{
	memcpy(address, &value, sizeof(value));
}

void readValueFromSharedMemory(char* address, char& value)
{
	memcpy(&value, address, sizeof(value));
}