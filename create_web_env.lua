-- script written by Shadowdara

-- variables
gitignore_c = "# ignore lua creator\ncreate_web_env.lua"
index_html_c = ""
z404_html_c = ""
start_bat_c = ""
http_server_oy_c = ""
localhost_8000_c = ""
other_vs_code_md_c = ""

-- functions
function create_file(name, content)
    local file = io.open(name, "w")
    file:write(content)
    file:close()

-- run on execution
os.write("Web Envirment Setup by Shadowdara")

-- creating all files
create_file('.gitignore', gitignore_c)
create_file('index.html', index_html_c)
create_file('404.html', z404_html_c)
create_file('start.bat', start_bat_c)
create_file('http_server.py', http_server_oy_c)
create_file('localhost_8000.htm', localhost_8000_c)
create_file('other_vs_code.md', other_vs_code_md_c)

-- finish
os.write("Created all files!)
