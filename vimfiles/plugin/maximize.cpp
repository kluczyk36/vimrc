#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <string>
#include <vector>

#pragma comment(lib, "user32.lib")
#pragma comment(lib, "kernel32.lib")

BOOL CALLBACK EnumThreadWndProc(HWND hwnd, LPARAM lParam) {
    if (!GetParent(hwnd)) {
        std::vector<char> buffer(128);
        int chars = GetClassName(hwnd, &buffer[0], buffer.size());
        if (chars) {
            std::string found(buffer.begin(), buffer.begin() + chars);
            if (found == "Vim") {
                ShowWindow(hwnd, SW_MAXIMIZE);
                return FALSE;
            }
        }
    }
    return TRUE;
}

extern "C" __declspec(dllexport) LONG __cdecl Maximize(LONG) {
    EnumThreadWindows(GetCurrentThreadId(), EnumThreadWndProc, NULL);
    return 0;
}
