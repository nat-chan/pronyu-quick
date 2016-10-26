augroup JavaTemplate
	autocmd! JavaTemplate
	"次の段落の\から\nまでの囲まれている部分がテンプレートになる
	"ただし " は \\" と置換すること
	autocmd BufNewFile *.java let f = expand("%:r")| 0put =\"
		\import java.io.*;\n
		\\n
		\public class \".f.\"{\n
		\	public static void main(String[] args){\n
		\		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));\n
		\		try{\n
		\			System.out.println(\\"数字を入力してください\\");\n
		\			String line = reader.readLine();\n
		\			int n = Integer.parseInt(line);\n
		\			\n
		\		}catch(IOException e){\n
		\			System.out.println(e);\n
		\		}catch(NumberFormatException e){\n
		\			System.out.println(\\"数字の形式が正しくありません\\");\n
		\		}\n
		\	}\n
		\}
	\\"|$ | call cursor(10, 3)
	"\\"|$ | call cursor(10, 3) | startinsert
	"もしファイルを開いて即インサートモードに移りたいならこうする
augroup END

