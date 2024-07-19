# HW01 -- ParserTest

## Description

Please write a program to read a program source from stdin following the token definition and grammar rule at right.

If Yes, print each token's type and the string of token seperated by a whitespace `" "` and end with a newline.

If No, print only “invalid input” with a newline. (don't output any token!)

Your program has to check the source whether it follows the token and grammar rules or not.

> [!IMPORTANT]
> 請使用 Recursive-Decent-Parsing (ch02 ppt page 20 begin) 的模式來撰寫程式，否則將不予計分。

> [!IMPORTANT]
> 測試檔案的換行皆為 `\n`

| Terminal | Regular Expression |
|----------|--------------------|
| ID       | `[A-Za-z_][A-Za-z0-9_]*` |
| STRLIT   | `"[^"]*"` |
| LBR      | `\(` |
| RBR      | `\)` |
| DOT      | `\.` |

```
Productions
1 program      -> stmts
2 stmts        -> stmt stmts
3 stmts        -> λ
4 stmt         -> primary
5 stmt         -> STRLIT
6 stmt         -> λ
7 primary      -> ID primary_tail
8 primary_tail -> DOT ID primary_tail
9 primary_tail -> LBR stmt RBR primary_tail
10 primary_tai -> λ
```

| Sample Input | Sample Output |
|--------------|---------------|
| "test_string"<br>TEST_ID | STRLIT " test_string "<br>ID Test_ID |
| illiga!id | invalid input |
| Str. length() | ID Str<br>DOT .<br>ID length<br>LBR (<br>RBR ) |
| printf("HelloWorld") | ID printf<br>LBR (<br>STRLIT " HelloWorld "<br>RBR ) |

