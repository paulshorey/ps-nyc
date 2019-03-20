## Install GO  
```bash  
# first, remove  
sudo rm -rf /usr/local/opt/go;  
sudo rm -rf /usr/local/go;  
sudo rm -rf /usr/local/.git;  
sudo rm -rf /usr/local/Cellar/go;  
brew cleanup;  
brew remove go;  
  
# set paths  
export GOPATH=$HOME/go  
export GOROOT=/usr/local/opt/go/libexec  
export PATH=$PATH:${GOPATH}/bin  
export PATH=$PATH:${GOROOT}/bin  
mkdir ${GOPATH}  
  
# use brew on mac  
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"  
brew update  
brew install go  
  
# install goodies  
go get golang.org/x/tools/cmd/godoc  
go get golang.org/x/tools/cmd/vet  
  
```  
  
## Programming  
```bash  
cd $GOPATH  
vscode .  
```  
add a folder/file.go  
```  
  
```  
  
