-- script written by Shadowdara
-- MIT License

-- variables
local gitignore_c = [[
# ignore lua creator
start.bat
create_web_env.lua
create_web_env_info.md
dev_envirment_dara/
]]

local index_html_c = [[
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="title" content="Title">
  <meta name="description" content="Description">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="keywords" content="">
  <meta name="robots" content="index,follow">
  <meta name="author" content="">
  <meta property="og:title" content="Title">
  <meta property="og:description" content="Description">
  <meta property="og:image" content="">
  <meta property="og:url" content="">
  <meta property="og:type" content="website">
  <link rel="icon" href="" type="ico">
  <link rel="stylesheet" href="">
  <title>Title</title>
</head>

<body>

  <header>
    <p><a>Links</a></p>
  </header>

  <main>
    <h2>Title</h2>
    <p>Text</p>
  </main>

  <footer>
    <p>Made with ❤️</p>
  </footer>

</body>

</html>
]]

local style_css_c = [[
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

body {
    background: linear-gradient(135deg, #1e3c72, #2a5298);
    color: white;
    text-align: center;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

main {
    margin: 4rem;
}

header {
    margin: 0px;
    padding: 0.5rem;
    top: 0;
    position: fixed;
    width: 100%;
    background-color: #191919;
    text-align: right;
}

footer {
    margin: 0px;
    padding: 0.5rem;
    bottom: 0;
    position: fixed;
    width: 100%;
    background-color: #191919;
}

header p, footer p {
    display: inline;
    font-size: 1.1rem;
    margin: 0 5% auto;
}

h2 {
    margin-bottom: 20px;
    font-size: 24px;
}

button {
    margin-top: 20px;
    padding: 12px 20px;
    font-size: 18px;
    border: none;
    border-radius: 10px;
    background-color: #ff9800;
    color: white;
    cursor: pointer;
    transition: 0.3s;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
}

button:hover {
    background-color: #e68900;
}

p {
    margin-top: 20px;
    font-size: 18px;
    font-weight: bold;
}

a {
    color: rgb(255, 187, 141);
    text-decoration: none;
    font-weight: bold;
    transition: color 0.3s;
}

a:hover {
    color: rgb(255, 102, 0);
}
]]

local z404_html_c = [[
<!DOCTYPE html>
<html lang="en">

<head>
	<meta http-equiv="refresh" content="0.1;url=https://weuritz8u.github.io/date-calculator">
	<title>404</title>
</head>

<body>
	<h1>404</h1>
	<h4><b><i>This page does not exist!</i></b></h4>
	<h3><a href="https://weuritz8u.github.io/date-calculator">Click here if you have not been redirected to the homepage!</a></h3>
</body>

</html>
]]

local start_bat_c = [[
:: purpose is only for testing!

start python "%cd%\dev_envirment_dara\http_server.py"

dev_envirment_dara\localhost_8000.htm

set "datei=dev_envirment_dara\other_vs_code"

if exist "%~dp0%datei%" (
	start "" "C:\D4R4\.can_delete\Microsoft VS Code\Code.exe" "%cd%"
) else (
	start code "%cd%"
)
]]

local http_server_oy_c = [[
# purpose is only for testing!

import os
import sys
import http.server
import socket
import socketserver

def path():
	global skript_dir
	skript_dir = os.path.dirname(os.path.abspath(__file__))
	parent_dir = os.path.dirname(skript_dir)

	print("Current folder path:", skript_dir, "\n")
	print("Parent folder path:", parent_dir, "\n")

	os.chdir(parent_dir)

def is_port_in_use(port):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        return s.connect_ex(("127.0.0.1", port)) == 0

path()

PORT = 8000

while PORT <= 49140:
    if is_port_in_use(PORT):
        print(f"Port {PORT} is busy, trying {PORT+1}")
        PORT += 1

    else:   
        break

if PORT > 49140:
    print("Kein freier Port gefunden, Server kann nicht gestartet werden!")
    sys.exit(1)

try:
    Handler = http.server.SimpleHTTPRequestHandler

    with socketserver.TCPServer(("", PORT), Handler) as httpd:
        print(f"Server läuft auf http://localhost:{PORT}\n")
        httpd.serve_forever()

except:
    print(f"Port {PORT} is busy")
    sys.exit(1)
]]

local localhost_8000_c = [[
<meta http-equiv="refresh" content="0.1;url=http://localhost:8000">
]]

local other_vs_code_md_c = [[
# Other VSCode

If you have installed VSCode in another directory and
want to use this installation, change the name of this
file from `other_vs_code.md` to `other_vs_code` and
open the `run_server_for_testing.bat` file and check
line 10.

```
start "" "C:\D4R4.can_delete\Microsoft VS Code\Code.exe" "%cd%"
```

`C:\D4R4\.can_delete\Microsoft VS Code\Code.exe` is the
used folder path, replace it with your folder path.

finished!
]]

-- functions
-- Helper function to ask user
local function ask_create_file(filename, content)
    print("Do you want to create the file: " .. filename .. "? (y/n)")
    local answer = io.read()
    if answer:lower() == "y" then
      local file = io.open(filename, "w")
      if file then
        file:write(content)
        file:close()
        print("created file: " .. filename)
      else
        print("Error while creating: " .. filename)
      end
    else
      print("⏭ skipped file: " .. filename)
    end
  end

-- run on execution
io.write("Web Envirment Setup by Shadowdara\n\n")

-- creating all files
os.execute("mkdir dev_envirment_dara")
os.execute("mkdir src")

ask_create_file('.gitignore', gitignore_c)
ask_create_file('index.html', index_html_c)
ask_create_file('404.html', index_html_c)
ask_create_file('404-2.html', z404_html_c)
ask_create_file('src/page.html', index_html_c)
ask_create_file('src/style.css', style_css_c)
ask_create_file('start.bat', start_bat_c)
ask_create_file('dev_envirment_dara/http_server.py', http_server_oy_c)
ask_create_file('dev_envirment_dara/localhost_8000.htm', localhost_8000_c)
ask_create_file('dev_envirment_dara/other_vs_code.md', other_vs_code_md_c)

-- finish
io.write("Created all files!\nRun start.bat to start!\nYou can delete this lua file now!\nYou can although delete create_web_env_info.md\n\nPress Enter to Exit")
io.read()
