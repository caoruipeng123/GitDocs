#### 获取仓库git clone和git init 
1、git clone `url`  克隆远程仓库到本地。    
2、git clone `url` `dirName`   克隆远程仓库到本地，默认会创建一个名为`dirName`的目录。   
3、git init 在当前目录下创建一个空仓库 。           
4、git init `dirName`   在当前目录下新建一个目录`dirName`，在`dirName`目录下创建一个空仓库。   

#### 配置
git的配置文件有三种：
一、`/etc/gitconfig`文件。位于git安装目录下，针对系统里面所有用户。包含每个用户以及每个用户仓库的通用配置。如果执行 `git config` 命令带上`--system`选项的话就会修改这个文件里面的变量，因为这个是系统文件，你需要超级管理员权限才可以修改。   
二 、`~/.gitconfig`文件。 位于用户主目录下面的配置文件。针对当前计算机用户。如果执行`git config`命令带上`--global`选项的话就会修改这个文件里面的变量。    
三、`.git/config`文件。位于当前仓库的`.git`目录下， 针对当前仓库。如果执行`git config`带上`--local`选项的话就会修改这个文件里面的变量。[默认情况下，修改的都是当前仓库的变量，因此我们也可以省略--local关键字]   
注意：变量优先级3>2>1。每一级的变量会覆盖上一级的变量。如`.git/config`会覆盖`~/.gitconfig`中的变量，`~/.gitconfig`会覆盖`/etc/gitconfig`的变量。  
1、git config --list 查看所有git配置变量  
2、git config --list --show-origin 查看所有git配置变量以及这些变量的文件路径。   
3、git config --global user.name `name`  设置用户名  
4、git config --global user.email `email` 设置密码        
5、git config `name` 查看某个具体的变量值  


#### 增加/删除文件
1、git add `file1`  `file2`  `file3` 添加一个或多个文件到暂存区   
2、git add  `dirName`   添加`dirName`目录中所有文件到暂存区    
3、git add .   添加当前目录的所有文件到暂存区  
4、git add -p 添加每个变化前，都会要求确认。对于同一个文件的多处变化，可以实现分次提交      
5、git rm `file1`  `file2`  `file3`  删除工作区文件，并且将这次删除放入暂存区       
6、git rm --cached `file1`  `file2`  `file3`  停止追踪指定文件，但该文件会保留在工作区  
7、git mv `sourceName` `destinationName` 改名文件，并且将这个改名放入暂存区    

>**git status**

1、git status 直接查看当前仓库的文件状态.命令的输出十分详细，但其用语有些繁琐。    
2、git status -s  [git status --short]  查看状态的简单描述，比git status更加简介   
       ??：新添加的未跟踪文件。   11
​       M：修改过的文件前面有 M 标记  
​       A：新添加到暂存区中的文件前面有 M 标记   
​       MM:提交到暂存区，又做了修改的文件有两个M标记   


#### 代码提交 
1、git commit -m `remark` 。从暂存区提交到仓库区，备注信息为`remark`   
2、git commit `file1` `file2`   -m   `remark`。提交指定文件从暂存区到仓库区   
3、git commit -am `remark`。提交工作区自上次commit之后的变化，直接到仓库区，相当于将git add和git commit -m 两个命令一起执行  
4、git commit --amend -m `remark`。改写上一次commit的提交信息。如果代码有变化，将暂存区的代码提交到仓库区  
5、git commit --amend `file1` `file2` 改写上一次commit的提交信息。如果代码有变化，将暂存区指定的文件修改提交到仓库区  

>**git diff**

查看未暂存的文件做了那些修改：git diff。**工作区和暂存区比较 。**此命令比较的是工作目录中当前文件和暂存区域快照之间的差异。
查看已暂存的文件做了哪些修改：git diff --staged。**暂存区和仓库比较 。**这条命令将比对已暂存文件与最后一次提交的文件差异。修改记录111

>**git rm PROJECTS.md**

1、git rm PROJECTS.md zh 。直接删除文件，从目录中删除该文件。
2、git rm --cached README。想让文件保留在磁盘，但是并不想让 Git 继续跟踪。此命令将文件改为Untracked状态。

>**git mv file_from file_to**

1、git mv ddd.txt test/ttt.txt。移动文件，将文件移动到指定位置。
2、git mv ccc.txt ddd.txt。文件重命名，将ccc.txt重命名为ddd.txt。

>**git log查看提交记录**

1、git log
2、git log --stat
3、git log -p -2
4、git log --pretty=oneline
>**撤销记录**

1、git commit --amend
2、git reset HEAD CONTRIBUTING.md
3、git checkout -- CONTRIBUTING.md 撤销对文件的修改。

>**远程仓库**

1、git remote  返回远程仓库的名称
2、git remote -v 返回远程仓库的URL
3、git remote remove origin  移除某个远程仓库
4、git remote add origin https://github.com/caoruipeng123/aaa.git 添加一个远程仓库
5、git push origin master 推送远程仓库，将本地分支master推送到远程仓库origin对应的URL。
6、git remote show origin 查看某个远程仓库的详细信息。
7、git remote rename origin pb  修改远程仓库的名称，将仓库名称从origin修改为pb
8、git pull origin master 从远程仓库拉取内容

>**标签tag**

1、git tag列出所有tag。   

2、git tag -l "v1.8.5*" 只列出v1.8.5开头的标签。    

3、git tag v1.0 创建轻量标签v1.0。   

4、git tag -a v1.4 -m "my version 1.4" 创建附注标签。        

5、git show v1.4 查看标签v1.4对应的提交信息 。   

6、git tag -a v1.2 9fceb02  在指定提交位置打标签 （先用git log --pretty=oneline找到提交的hash值）。  

7、git push origin v1.0 推送标签到远程。默认情况下，push并不会推送标签到远程。  

8、git tag -d <tagname>   案例：git tag -d v1.0 删除标签。  

9、git push <remoteName> :refs/tags/<tagName>。案例：git push origin :refs/tags/v1.0  将本地的tags更新到远程，删除之后可以使用这个命令。  

10、git push <remoteName> --delete <tagname>  直接删除远程标签。案例：git push origin --delete v1.0  

11、git checkout v1.0 检出标签，禁止使用，请使用过12的命令。     

12、git checkout -b branch v1.0 从标签1.0处创建分支。

