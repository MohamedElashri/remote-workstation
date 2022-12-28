docker pull codercom/code-server

echo "Enter vscode password you want to set:"
read vscode_password


docker run -d --name code_server \
  --restart always \
  -p 80:8080 \
  -e "PASSWORD=$vscode_password" \
  -v "/usr/bin/docker:/usr/bin/docker" \
  -v "/var/run/docker.sock:/var/run/docker.sock" \
  -v "/home/$USER/vscode:/home/coder" \
  -v "/home/$USER/git:/home/coder/git" \
  -v "/home/$USER/project:/home/coder/project" \
  codercom/code-server

echo "You can access vscode from the url <http://ipserver> in your browser."    