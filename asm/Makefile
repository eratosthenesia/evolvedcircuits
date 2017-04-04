SOURCES = $(wildcard *.s)
OBJECTS = $(SOURCES:.s=.o)
EXECUTABLES = $(OBJECTS:.o=)

%.o: %.s
	as $< -o $@

default: $(OBJECTS)
	for exe in $(EXECUTABLES) ; do \
		ld -lc -macosx_version_min 10.11.6 $$exe.o -o $$exe ; \
	done

.PHONY: clean
clean:
	rm *.o
	for exe in $(EXECUTABLES) ; do \
		rm $$exe ; \
	done
