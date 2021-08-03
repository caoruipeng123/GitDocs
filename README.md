>**获取仓库：git clone和git init**

**git clone**将远程仓库克隆到本地。
用法一：git clone https://github.com/caoruipeng123/aaa.git  默认会创建一个aaa的目录作为项目文件夹。如果想重命名项目文件夹名称，可以使用用法二。
用法二：git clone https://github.com/caoruipeng123/aaa.git demogit 会创建一个名为demogit的目录作为项目文件夹。

**git init**用于在本地初始化一个默认的空仓库
用法：git init

>**git add   精确地将内容添加到下一次提交中 **

1、【**暂存已修改的文件Modified>>Staged**】将工作区的文件修改提交到暂存区。
2、【**跟踪新文件Untracked >>Staged**】将未关联的文件和git关联起来。
3、合并时把有冲突的文件标记为已解决状态。
git add testdir/ 递归testdir目录下所有文件，将其加入到git的跟踪目录里面来 。

>**git status**

1、git status 直接查看当前仓库的文件状态.命令的输出十分详细，但其用语有些繁琐。 
2、git status -s  [git status --short]  查看状态的简单描述，比git status更加简介
       ??：新添加的未跟踪文件。
​       M：修改过的文件前面有 M 标记。
​       A：新添加到暂存区中的文件前面有 M 标记。111
​       MM:提交到暂存区，又做了修改的文件有两个M标记。


>**git commint**

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

