Just like with `x`, you can pass a negative number of addresses to dereference, to examine memory backwards
from the start address:
```
gef➤  dereference $sp -l 3
0x00007fffffffcf90│+0x0010: 0x00007ffff7f5aaa0  →  0x0000000000000000
0x00007fffffffcf88│+0x0008: 0x00000000000204a0
0x00007fffffffcf80│+0x0000: 0x00005555555a6b60  →  0x0000000000000000    ← $rsp
gef➤  dereference $sp -l -3
0x00007fffffffcf80│+0x0000: 0x00005555555a6b60  →  0x0000000000000000    ← $rsp
0x00007fffffffcf78│-0x0008: 0x0000000000000020 (" "?)
0x00007fffffffcf70│-0x0010: 0x000000000000000a ("\n"?)
