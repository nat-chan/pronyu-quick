augroup JavaTemplate
	autocmd! JavaTemplate
	autocmd BufNewFile *.java let f = expand("%:r")| 0put =\"
		\import java.io.*;\n
		\\n
		\public class \".f.\"{\n
		\	public static void main(String[] args){\n
		\		\n
		\	}\n
		\}
	\\"|$ | call cursor(5, 2)
augroup END

