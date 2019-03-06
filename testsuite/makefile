C=../c2nim

ALLC:=$(patsubst %.c,testc-%,$(notdir $(wildcard tests/*.c)))
ALLH:=$(patsubst %.h,testh-%,$(notdir $(wildcard tests/*.h)))
ALLCPP:=$(patsubst %.cpp,testcpp-%,$(notdir $(wildcard tests/*.cpp)))
ALLHPP:=$(patsubst %.hpp,testhpp-%,$(notdir $(wildcard tests/*.hpp)))

all: ${ALLC} ${ALLH} ${ALLCPP} ${ALLHPP}
testc-%:
	$C tests/$*.c
	diff -uNdr tests/$*.nim results/$*.nim
testh-%:
	$C tests/$*.h
	diff -uNdr tests/$*.nim results/$*.nim
testcpp-%:
	$C --cpp tests/$*.cpp
	diff -uNdr tests/$*.nim results/$*.nim
testhpp-%:
	$C --cpp --header tests/$*.hpp
	diff -uNdr tests/$*.nim results/$*.nim
