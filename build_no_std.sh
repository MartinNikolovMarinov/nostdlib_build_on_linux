mkdir -p build

SRC="main.cpp"
INCLUDES=""

echo -e "Compiling the following files: $(ls $SRC)\n"

# NOTE: Add the -g options and set the optiomization level to -O0 to debug the code!
g++ -nostdlib -O2 -ffreestanding -fno-exceptions \
    -Wall -Wextra -Wno-unknown-pragmas -Wno-unused-function \
    $INCLUDES \
    bootstrap.S -o build/main ${SRC}

# Check if the NEEDED section is empty:
objdump -M intel -S build/main > build/main.S
echo "grepping for NEEDED section in generated elf (should be empty line):"
readelf -d build/main | grep NEEDED

exit 0
