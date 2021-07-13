#ifndef _SHAREDMEMORY_H
#define _SHAREDMEMORY_H

#include <Windows.h>
#include <string>

extern LPVOID pBuffer;

#define MEMORY_SIZE						sizeof(char)
#define ADDRESS							(char*)pBuffer

bool initSharedMemory();
void writeValueToSharedMemory(char* address, char value);
void readValueFromSharedMemory(char* address, char& value);

#endif //!_SHAREDMEMORY_H