# Ammonite REPL environment as docker container
This is Ammonite REPL container for your Scala programming

# Supporting libraries
cats, shapeless, fs2, doobie, circe

# Use amm as REPL
```
$ docker run -it fankayagi/ammonite:2.12.4 amm
Loading...
Compiling (synthetic)/ammonite/predef/interpBridge.sc
Compiling (synthetic)/ammonite/predef/replBridge.sc
Compiling (synthetic)/ammonite/predef/DefaultPredef.sc
Compiling /root/.ammonite/predef.sc
Welcome to the Ammonite Repl 1.0.3
(Scala 2.12.4 Java 1.8.0_151)
If you like Ammonite, please support our development at www.patreon.com/lihaoyi
@ import $ivy.`org.typelevel::cats-core:1.0.1`, cats.implicits._
import $ivy.$                               , cats.implicits._

@ import $ivy.`org.typelevel::cats-core:1.0.1`, cats.Semigroup
import $ivy.$                               , cats.Semigroup

@ Semigroup[Int => Int].combine({ (x: Int) => x + 1 }, { (x: Int) => x * 10 }).apply(6)
res2: Int = 67
```

# Use amm as scala interpreter
```
$ docker run -it fankayagi/ammonite:2.12.4 /bin/bash
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
$ alias amm='docker run -it fankayagi/ammonite:2.12.4 amm'
```
