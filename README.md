# HelangHaskellImpl

灵感来源：[kifuan/helang: 何语言，次世代赛博编程语言。](https://github.com/kifuan/helang)

来自四川理塘的强力次世代编程语言 `Helang` 在 Haskell 上的拙劣实现。

`Saint He` 曾说：要有函数式！于是它便诞生。

# 使用方法

## 不用安装，也能使用。

1. 拉取源代码

```shell
> git clone git@github.com:CziSKY/HelangHaskellImpl.git
```

2. 安装需要的依赖

```shell
> cabal install random
```

3. 运行

```shell
> ghci HelangHaskellImpl/Main.hs
> main
```

如果按照以上步骤，不出意外的话你会看到该项目的 LOGO，它实在美极了，跟 `Saint He` 的虎牙一样美。
![USAGE_IMAGE](https://s3.bmp.ovh/imgs/2022/08/23/f42655f88b08a0d2.png)

# 语法

语法可参照：[kifuan/helang: 何语言，次世代赛博编程语言。](https://github.com/kifuan/helang)

但是由于一些赛博之力的限制，它们两者之间仍有一些差异。

- 我们使用 `createU8 (size)` 来创建 u8。
- u8 里的内容是不可变 `(Immutable)` 的。
- 受到赛博之力的影响，我们使用逻辑运算符 `(||)` 来代替原来的位运算符 `(|)`。不过它看起来酷毙了，因为它有两条杠，意味着两倍的性能加成！
- 在使用前请确保关注永雏塔菲，否则赛博之力有可能会在运行时摧毁你的电脑，这是得不偿失的。

最后，我们得到这样的代码：

```haskell
u8 = createU8 0 || 1 || 5 || 7 || 6 || 10 || 18 || 23 || 30 || 31
```

输出：
```
[1,5,7,6,10,18,23,30,31]
```

这简直太酷了，更酷的是它**完全百分百兼容 Haskell**！这简直太酷了，能做到两种语言的无缝切换，很符合我对未来世界的美好想象。

## 让理塘听见你的声音

使用字符在 UTF-8 编码中对应的数字来打印字符，我们实现了指数级的效率提升。

```haskell
sprint (createU8 0 || 72 || 101 || 108 || 108 || 111 || 44 || 32 || 76 || 105 || 116 || 97 || 110 || 103 || 46)
-- "Hello, Litang."
```
