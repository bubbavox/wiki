## 2023-08-05

I told ChatGPT-4 to write a similar function in 8 different languages: C, C++, Rust, Zig, Ruby, Javascript, TypeScript, and Python.

Specifically, "a function to test primality of a given natural number x, based on the 6k ± 1 rule for primes greater than 3."

### **C**
```C
#include <stdbool.h>
#include <stdio.h>

bool isPrime(unsigned long long x) {
    if (x <= 1) return false;
    if (x <= 3) return true;
    if (x % 2 == 0 || x % 3 == 0) return false;
    unsigned long long i = 5;
    while (i * i <= x) {
        if (x % i == 0 || x % (i + 2) == 0) return false;
        i += 6;
    }
    return true;
}

int main() {
    printf("Is 7 prime? %d\n", isPrime(7));
}
```

### **C++**
```C++
#include <iostream>

bool isPrime(unsigned long long x) {
    if (x <= 1) return false;
    if (x <= 3) return true;
    if (x % 2 == 0 || x % 3 == 0) return false;
    unsigned long long i = 5;
    while (i * i <= x) {
        if (x % i == 0 || x % (i + 2) == 0) return false;
        i += 6;
    }
    return true;
}

int main() {
    std::cout << "Is 7 prime? " << (isPrime(7) ? "true" : "false") << std::endl;
}

``` 

### **Zig**
```Zig
const std = @import("std");

pub fn isPrime(x: u64) bool {
    if (x <= 1) return false;
    if (x <= 3) return true;
    if (x % 2 == 0 || x % 3 == 0) return false;
    var i: u64 = 5;
    while (i * i <= x) {
        if (x % i == 0 || x % (i + 2) == 0) return false;
        i += 6;
    }
    return true;
}

pub fn main() void {
    std.debug.print("Is 7 prime? {}\n", .{isPrime(7)});
}

```

### **Rust**
```Rust
fn is_prime(x: u64) -> bool {
    if x <= 1 { return false; }
    if x <= 3 { return true; }
    if x % 2 == 0 || x % 3 == 0 { return false; }
    let mut i = 5;
    while i * i <= x {
        if x % i == 0 || x % (i + 2) == 0 { return false; }
        i += 6;
    }
    true
}

fn main() {
    println!("Is 7 prime? {}", is_prime(7));
}
```

### **TypeScript**
```TypeScript
function isPrime(n: number): boolean {
  if (n <= 1) return false;
  if (n <= 3) return true;
  if (n % 2 === 0 || n % 3 === 0) return false;

  let i = 5;
  while (i * i <= n) {
    if (n % i === 0 || n % (i + 2) === 0) return false;
    i += 6;
  }

  return true;
}
```

### **JavaScript**
```JavaScript
function isPrime(n) {
  if (n <= 1) return false;
  if (n <= 3) return true;
  if (n % 2 === 0 || n % 3 === 0) return false;

  let i = 5;
  while (i * i <= n) {
    if (n % i === 0 || n % (i + 2) === 0) return false;
    i += 6;
  }

  return true;
}

```

### **Python**
```Python
def is_prime(n):
    if n <= 1:
        return False
    if n <= 3:
        return True
    if n % 2 == 0 or n % 3 == 0:
        return False

    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i += 6

    return True

```

### **Ruby**
```Ruby
def is_prime(n)
  return false if n <= 1
  return true if n <= 3
  return false if n % 2 == 0 || n % 3 == 0

  i = 5
  while i * i <= n
    return false if n % i == 0 || n % (i + 2) == 0
    i += 6
  end

  true
end

```