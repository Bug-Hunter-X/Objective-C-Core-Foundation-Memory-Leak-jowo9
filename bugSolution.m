The solution is straightforward: always release Core Foundation objects when you're finished with them using `CFRelease`. Here's the corrected code:

```objectivec
CFStringRef myString = CFStringCreateWithCString(kCFAllocatorDefault, "Hello, world!", kCFStringEncodingUTF8);
// ... some code ... 
CFRelease(myString);
```

By adding `CFRelease(myString)`, we explicitly release the memory allocated for the string, preventing the memory leak.  Remember to release any Core Foundation object you create using functions like `CFStringCreateWithCString` to avoid memory leaks.