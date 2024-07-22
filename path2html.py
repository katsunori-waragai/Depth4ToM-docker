"""
画像ファイルをhtml ファイルで表示させる。

usage:

find . -name "*.png" -print | python3 path2html.py > junk.html
"""
from pathlib import Path
print("<html>")
while True:
	try:
		path = input("").strip()
		if Path(path).suffix in (".jpg", ".jpeg", ".png"):
			print(f"""<img src="{path}" > {path} <br>""")
	except EOFError:
		break
print("</html>")

