#### 获取仓库git clone和git init 
1、git clone `url`  克隆远程仓库到本地。    
2、git clone `url` `dirName`   克隆远程仓库到本地，默认会创建一个名为`dirName`的目录。   
3、git init 在当前目录下创建一个空仓库 。           
4、git init `dirName`   在当前目录下新建一个目录`dirName`，在`dirName`目录下创建一个空仓库。         

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
​       M：修改过的文件前面有 M 标记。 22  
​       A：新添加到暂存区中的文件前面有 M 标记。111   
​       MM:提交到暂存区，又做了修改的文件有两个M标记。   


>**git commit**

1、git commit -m '提交备注' 。将暂存区的跟踪文件提交到仓库。   
2、git commit -a -m '提交备注'。将暂存区和工作区所有的跟踪文件提交到仓库。   
3、git commit --amend   

>**git diff**

查看未暂存的文件做了那些修改：git diff。**工作区和暂存区比较 。**此命令比较的是工作目录中当前文件和暂存区域快照之间的差异。
查看已暂存的文件做了哪些修改：git diff --staged。**暂存区和仓库比较 。**这条命令将比对已暂存文件与最后一次提交的文件差异。

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

