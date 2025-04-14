<!-- written by Shadowdara -->
<!-- https://github.com/weuritz8u/dev-envirment -->

# Webenv-Creator

*Yeah, you need lua for this ;)*

***Please: Only us this for new project, the script eventually
delete something!!!***

Copy one of the `.lua` files in your new project
folder and run it with lua.

## Info

This is a simple lua script which creates a web envirment
for you. After running the script the in your new project
folder, some new files will be created!

run `run_server_for_testing.bat` to create a local HTTP Server
in your project folder

This will start a `HTTP Server` with Python in the root directory
*(if python is installed and as a envirment var)*

then the script will open the `localhost`on PORT: `8000` in your
main browser for `.htm` files

then it will open your project folder in `Visual Studio Code`

***Explanation for other VSCode down below***

**Your folder path should now look like this:**

```
'project-root-folder'/

    dev_envirment_dara/

        localhost.8000.htm
        other_vs_code.md

    start.bat

    index.html
```

*ignore it, if you have already renamed the `other_vs_code.md`
file to `other_vs_code`, i can't show both of them ;)*

**The HTTP Server will run until you close the terminal!**

**Note**

the better HTTP Server does not start PORT `8000` when Port
`8000` is busy, then the server will search for a new free
Port and display the new Port in the Python console


## Other VSCode

If you have installed VSCode in another directory and
want to use this installation, change the name of this
file from `other_vs_code.md` to `other_vs_code` and
open the `run_server_for_testing.bat` file and check
line 10.

```
start "" "C:\D4R4\.can_delete\Microsoft VS Code\Code.exe" "%cd%"
```

`C:\D4R4\.can_delete\Microsoft VS Code\Code.exe` is the
used folder path, replace it with your folder path.

*Last Edited: 14.04.2025*


<h2 id="gitignore">gitignore</h2>

The Lua file creators are automaticly creating a `.gitignore` file
for the file that are not required for the project ;)


<h2 href="contributing">Contributing</h2>

feel free to contribute and add your Stuff :)

just fork the repository, add your stuff and then create a
pull request, but please document what you are added what it
is used for.


<h2 id="license">License</h2>


### License for using

**`None`**

but it would be very cool and appreciated if you would credit this Github
Repository to help it growing and adding more usefull Stuff for other
people, but not required.


### License for republishing:

MIT License

Copyright (c) 2025 Shadowdara

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


### Used Files


#### Local-HTTP-Server

MIT License

Copyright (c) 2025 Shadowdara

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


## End

Made by:

- Shadowdara
- weuritz8u

***Thank you for everybody for contributing***


## **Made with ❤️**
