# What is this?
This is Ammonite REPL container for your Scala programming

# Supporting libraries
cats, shapeless, fs2, doobie, circe

# Use amm as REPL
```
$ docker run -it fankayagi/ammonite amm
Loading...
Welcome to the Ammonite Repl 1.0.3
(Scala 2.12.4 Java 1.8.0_151)
If you like Ammonite, please support our development at www.patreon.com/lihaoyi
@ import cats.Semigroup
import cats.Semigroup

@ import cats.implicits._
import cats.implicits._

@ Semigroup[Int => Int].combine({ (x: Int) => x + 1 }, { (x: Int) => x * 10 }).apply(6)
res2: Int = 67

@ exit
Bye!
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

# See Also
[Scala Exercises](https://www.scala-exercises.org/) might be helpful to get to know how to use each library.
