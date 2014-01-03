#!/bin/sh

NOSE_FLAGS="--verbosity=2"
TEST_COMMAND="nosetests"
COM_PARSE_TESTS="test_COMMAND_PARSE.py"
COM_ALL_COMMANDS="test_COMMANDS.py"
IO_TESTS="test_IO.py"
SYS_TESTS="test_SYSTEM.py"
TEMPLATE_TESTS="test_INK_TEMPLATE.py"

if [ "$1" = "all" ];then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$COM_PARSE_TESTS" "$COM_ALL_COMMANDS" "$IO_TESTS" "$SYS_TESTS" "$TEMPLATE_TESTS"
elif [ "$1" = "commands" ];then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$COM_ALL_COMMANDS"
elif [ "$1" = "io" ];then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$IO_TESTS"
elif [ "$1" = "parse" ];then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$COM_PARSE_TESTS"
elif [ "$1" = "sys" ]; then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$SYS_TESTS"
elif [ "$1" = "template" ]; then
	"$TEST_COMMAND" "$NOSE_FLAGS" "$TEMPLATE_TESTS"
else
	echo "Enter 'all' or a command suite to test."
	exit 1
fi
