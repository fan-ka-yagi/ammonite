# Ammonite REPL environment as docker container
This is Ammonite REPL container for your Scala programming

# Use amm as REPL
```
$ docker run -it fankayagi/ammonite amm
(... snip ...)
@
Use external libraries in REPL session
@ import $ivy.`com.github.nscala-time::nscala-time:2.18.0`, com.github.nscala_time.time.Imports._
```

# Use amm as scala interpreter
```
$ docker run -it fankayagi/ammonite /bin/bash
root@7cbb47a7457b:~# vi hello.sc

root@7cbb47a7457b:~# cat hello.sc
import ammonite.ops._

@main
def main(): Unit = {
  println("hello, world")
}

root@7cbb47a7457b:~# amm hello.sc
Compiling /root/hello.sc
hello, world
```

# Alias
```
$ alias amm='docker run -it fankayagi/ammonite amm'
```
