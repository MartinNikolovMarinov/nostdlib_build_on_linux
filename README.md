To run the example just run the bash script:

```bash
bash ./build_no_std.sh
```

The build steps in the script:

1. Create the build directory if it does not exist.
2. Compiles the code without linking to the standard library. The build process uses `bootstrap.S` to provide a way for `main.cpp` to call Linux system calls.
3. Object dumps the binary to see the assembly code. This shows that the generated code is purely what is typed in the main function and nothing else.
4. Performs a readelf on the binary to see the NEEDED sections. This shows that there are no shared libraries needed.

## ! IMPORTANT !

When compiling with `-nostdlib` you need `-ffreestanding`, otherwise the compiler might use stdlib functions to perform optimizations. This flag can significanltly reduce performance. Use `nostdlib` in cases where you know exactly what you are doing!
