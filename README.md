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

#### 代码提交 
1、git commit -m `remark` 。从暂存区提交到仓库区，备注信息为`remark`   
2、git commit `file1` `file2`   -m   `remark`。提交指定文件从暂存区到仓库区   
3、git commit -am `remark`。提交工作区自上次commit之后的变化，直接到仓库区，相当于将git add和git commit -m 两个命令一起执行  
4、git commit --amend -m `remark`。改写上一次commit的提交信息。如果代码有变化，将暂存区的代码提交到仓库区  
5、git commit --amend `file1` `file2` 改写上一次commit的提交信息。如果代码有变化，将暂存区指定的文件修改提交到仓库区     

#### 查看信息
1、git status 查看所有变更过的文件  
2、git log 查看当前分支的历史提交记录  
3、git log --stat 显示当前分支的历史提交记录，以及每次commit的详细信息  
4、git diff  `file1` 查看未暂存的修改。显示工作区和暂存区的差异  
5、git diff --cached `file1`或者git diff --staged `file1`  查看已暂存的修改。显示暂存区和上一次commit(仓库区)的差异  
6、--git diff HEAD  显示工作区与当前分支最新commit之间的差异   
7、git show `commitId` 显示某次提交的具体的内容变化  
8、git reflog 显示当前分支的最近几次提交    
9、git status -s  [git status --short]  查看状态的简单描述，比git status更加简介   
`??`：新添加的未跟踪文件（未跟踪文件前面有`??`标记）  
`M`：修改过的文件前面有`M`标记  
`A`：新添加到暂存区中的文件前面有 `A` 标记(通过git add命令新关联文件到暂存区的时候有`M`标记)   
`MM`:提交到暂存区，又做了修改的文件有`MM`标记   
10、git log `-2` 只显示最近的两条提交记录  
11、git log `-p` `-2` 以补丁的形式查看最近的两条提交记录，展示出这两次提交所有的修改内容  
12、git log --pretty=format:`"%h - %an, %ar : %s"` 按照指定的格式输出日志   
13、git log --pretty=`oneline` 将日志输出到一行，方便查看。另外还有`short`，`full` 和 `fuller` 选项
#### 撤销
1、git commit --amend -m `remark`。改写上一次commit的提交信息。如果代码有变化，将暂存区的代码提交到仓库区   
2、 git checkout -- `file1` `file2` 撤销对文件的修改  
3、git reset HEAD `file1` `file2` 取消已经暂存的文件到工作区   

#### 远程仓库
1、git remote 显示所有远程仓库URL的简写  
2、git remote -v 显示所有远程仓库简写和URL仓库地址   
3、git remote add `shortname` `url` 添加一个远程仓库         
4、git push `shortName` `branchName` 推送本地仓库到远程仓库。示例： git push origin master  
5、git fetch `shortName` 从远程仓库中抓取与拉取
6、git remote rename `sourceName` `desName` 远程仓库重命名。示例：git remote rename origin pb，将远程仓库origin的别名改为pb  
7、 git remote remove `shortName` 移除远程仓库  

#### 标签Tag
1、git tag 列出仓库中所有tag  
2、git tag -l 'v1.0*' 列出所有满足指定条件的tag  
3、git tag `tagName` 在当前commit上创建一个tag  
4、git tag `tagName`  `commit` 在指定commit上创建一个tag。   
5、git show `tagName` 查看tag信息   
6、git push origin  `tagName` 推送tag到远程仓库 ,git push不会将tag推送到远程仓库，需要我们明确的推送到远程仓库   
7、git push origin --tags 推送所有tag到远程仓库  
8、git tag -d `tagName` 从本地删除一个tag，注意这个命令不会删除远程仓库的tag，需要使用git push `shortName`  :refs/tags/`tagName`来删除远程仓库的tag。注意`shortName`和后面的冒号直接有一个空格。  
9、git push origin --delete `tagname` 直接从远程仓库删除指定的tag   
10、git checkout -b `branchName` `tagName` 新建一个分支，指向某个 tag  
11、git pull `shortName` `branchName` 从远程仓库拉取内容  

####  远程同步 
--1、git fetch `shortName`  下载远程仓库的所有变动  
2、git pull `shortName` `branchName`   取回远程仓库的变化 ，并和分支合并。  
3、git push `shortName` `branchName`  推送本地变化到远程远程仓库   
4、git push `shortName` --force 强行推送当前分支到远程仓库，即使有冲突
5、git push origin --all  推送所有分支到远程仓库   
6、git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done  从远程仓库拉取所有分支到本地  

#### 分支
1、git branch 列出所有本地分支   
2、git branch -r 列出所有远程分支   
3、git branch -a 列出所有分支（包括本地分支和远程分支）  
4、git branch `branchName` 创建一个分支，并且留在当前分支  
5、git checkout `branchName` 切换到指定分支  
6、git checkout -b `branchName` 新建一个分支，并切换到新建的分支上  
7、git branch -d `branchName` 删除指定的分值  
8、git branch `branchName` `commitId` 创建一个分支，并指向指定的commit  
9、git branch -v 查看每个分支最后的commitId    
10、 git branch --merged `branchName`  列出所有已经合并到指定分支的分支  
11、git branch --no-merged `branchName` 列出所有未合并到当前分支的分支  
12、git checkout - 切换到上一个分支，可以用于两个分支之间来回切换   
13、git merge `branchName`  合并指定分支到当前分支  
14、git push origin --delete `branchName` 删除远程分支   
15、git checkout -b `localBranchName` `shortName`/`remoteBranchName` 检出远程分支  从远程分支origin的test分支检出到本地的test分支  
16、git push origin --all  推送所有分支到远程仓库   