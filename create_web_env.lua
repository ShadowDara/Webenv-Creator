-- script written by Shadowdara
-- MIT License

-- variables
gitignore_c = "# ignore lua creator\ncreate_web_env.lua\ncreate_web_env_info.md\ndev_envirment_dara/"
index_html_c = ""
z404_html_c = ""
style_css_c = ""
start_bat_c = ""
http_server_oy_c = ""
localhost_8000_c = "<meta http-equiv="refresh" content="0.1;url=http://localhost:8000">"
other_vs_code_md_c = "# Other VSCode\n\nIf you have installed VSCode in another directory and\nwant to use this installation, change the name of this\nfile from `other_vs_code.md` to `other_vs_code` and\nopen the `run_server_for_testing.bat` file and check\nline 10.\n\n```\nstart "" "C:\D4R4\.can_delete\Microsoft VS Code\Code.exe" "%cd%"\n```\n\n`C:\D4R4\.can_delete\Microsoft VS Code\Code.exe` is the\nused folder path, replace it with your folder path.\n\nfinished!\n"
create_web_env_info_md_c = ""

-- functions
function create_file(name, content)
    local file = io.open(name, "w")
    file:write(content)
    file:close()

-- run on execution
os.write("Web Envirment Setup by Shadowdara\n\n")

-- creating all files
create_file('.gitignore', gitignore_c)
create_file('index.html', index_html_c)
create_file('404.html', z404_html_c)
create_file('style.css', style_css_c)
create_file('start.bat', start_bat_c)
create_file('http_server.py', http_server_oy_c)
create_file('localhost_8000.htm', localhost_8000_c)
create_file('other_vs_code.md', other_vs_code_md_c)
create_file('create_web_env_info.md', create_web_env_info_md_c)

-- finish
os.write("Created all files!\nRun start.bat to start!\nYou can delete this lua file now!\nYou can although delete create_web_env_info.md\n\nPress Enter to Exit)
io.read()
