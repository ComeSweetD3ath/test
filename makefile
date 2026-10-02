
proj=main
CC = gcc

run:$(proj).exe
	./$(proj).exe
	@echo ********************running done **********************

$(proj).i:$(proj).c
	$(CC) $(proj).c -E -o $(proj).i
	@echo *********************preprocessing done*****************

$(proj).s:$(proj).i
	$(CC) $(proj).i -S -o $(proj).s
	@echo *********************compilation done*****************

$(proj).o:$(proj).s
	$(CC) $(proj).s -c -o $(proj).o
	@echo *********************assembly done*****************

$(proj).exe:$(proj).o
	$(CC) $(proj).o -o $(proj).exe
	@echo *********************linking done*****************

clearall:
	rm $(proj).i $(proj).o $(proj).s $(proj).exe