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

