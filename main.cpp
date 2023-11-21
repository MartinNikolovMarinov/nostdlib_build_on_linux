#include <sys/syscall.h> // incuded for system call numbers

// // NOTE: unistd.h cannot be used because it requires the standard library.
// // #include <unistd.h>

typedef unsigned int u32;
typedef unsigned long long u64;

typedef int i32;
typedef long long i64;

extern "C" {
    extern u64 syscall (u64 __sysno, ...);
}

u64 cptr_len(const char* s) {
    u64 len = 0;
    while (s[len] != '\0') len++;
    return len;
}

void OS_exit(i32 _code) {
    syscall(SYS_exit_group, reinterpret_cast<void*>(_code), 0, 0, 0, 0);
    for (;;) syscall(SYS_exit, reinterpret_cast<void*>(_code), 0, 0, 0, 0);
}

u64 OS_write(i64 fd, const char* data, u64 nbytes) {
    u64 res = (u64)syscall(SYS_write, fd, data, nbytes, 0, 0);
    return res;
}

void write_line(const char* data) {
    u64 ret = OS_write(1, data, cptr_len(data));
    if (ret <= 0) OS_exit(1);
}

i32 main(i32, const char**, const char**) {
    write_line("Hello, world!\n");
    return 1;
}
