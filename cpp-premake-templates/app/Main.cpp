
#include "../lib/Greeter.h"
#include <cstdlib>
#include <iostream>
#include <string>

using namespace std;

int main() {
    Greeter greeter;

    cout << greeter.greet("world") << endl;

    return EXIT_SUCCESS;
}
