#include <iostream>
#include <string>
#include <cstring>
#include <unistd.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <fcntl.h>

#define MEMORY_NAME "Calculator"
#define BUFFER_SIZE 1024

bool Send()
{
	int shm;
	int mode = O_CREAT;
	char *addr;
	std::string expression = "0";
	std::cout << "Write your expression or 'exit' to quit programm: ";
	std::getline(std::cin, expression);
	while (expression.find("exit") == std::string::npos)
	{

		if ((shm = shm_open(MEMORY_NAME, mode | O_RDWR, 0777)) == -1)
		{
			perror("shm_open");
			return 1;
		}

		if (ftruncate(shm, BUFFER_SIZE + 1) == -1)
		{
			perror("ftruncate");
			return 1;
		}

		addr = (char *)mmap(0, BUFFER_SIZE + 1, PROT_WRITE | PROT_READ, MAP_SHARED, shm, 0);
		if (addr == (char *)-1)
		{
			perror("mmap");
			return 1;
		}

		memcpy(addr, expression.c_str(), BUFFER_SIZE);
		std::cout << "Shared memory successfull filled with your expression!" << std::endl;

		munmap(addr, BUFFER_SIZE);
		close(shm);

		std::cout << "Write your expression or exit to quit programm: ";
		std::getline(std::cin, expression);
	}
	shm_unlink(MEMORY_NAME);
	return true;
}

int main()
{
	if (Send())
	{
		std::cout << "Exiting programm" << std::endl;
	}
	else
	{
		std::cout << "Programm ended with error" << std::endl;
	}
	return 1;
}