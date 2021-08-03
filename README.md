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

>**git status**

1、git status 直接查看当前仓库的文件状态.命令的输出十分详细，但其用语有些繁琐。 
2、git status -s  [git status --short]  查看状态的简单描述，比git status更加简介
       ??：新添加的未跟踪文件。
​       M：修改过的文件前面有 M 标记。
​       A：新添加到暂存区中的文件前面有 M 标记。1
​       MM:提交到暂存区，又做了修改的文件有两个M标记。


>**git commint**

