augroup JavaTemplate
	autocmd! JavaTemplate
	"次の段落の\から\nまでの囲まれている部分がテンプレートになる
	autocmd BufNewFile *.java let f = expand("%:r")| 0put =\"
		\import java.io.*;\n
		\\n
		\public class \".f.\"{\n
		\	public static void main(String[] args){\n
		\		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));\n
		\		try{\n
		\			String line = reader.readLine();\n
		\			int n = Integer.parseInt(line);\n
		\		}catch(IOException e){\n
		\			System.out.println(e);\n
		\		}catch(NumberFormatException e){\n
		\			System.out.println("数字の形式が正しくありません.");\n
		\		}\n
		\	}\n
		\}
	\\"|$ | call cursor(5, 2)
	"\\"|$ | call cursor(5, 2) | startinsert
	"もしファイルを開いて即インサートモードに移りたいならこうする
augroup END

