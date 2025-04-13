-- script written by Shadowdara

-- variables
gitignore_content = "# ignore lua creator\ncreate_web_env.lua"

-- functions
function create_file(name, content)
    local file = io.open(name, "w")
    file:write(content)
    file:close()

-- run on execution
os.write("Web Envirment Setup by Shadowdara")

-- creating files
create_file('.gitignore', gitignore_content)
