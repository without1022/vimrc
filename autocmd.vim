autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"                                                                                       
"定义函数SetTitle，自动插入文件头
func SetTitle()
	"如果文件类型为.c或者.cpp文件
	if (&filetype == 'c' || &filetype == 'cpp')
		call setline(1,"/*************************************************************************")  
		call setline(2, "\@Author:without202")  
		call setline(3, "\@Created Time:".strftime("%c"))  
		call setline(4,"\@FileName:".expand("%"))  
		call setline(5,"\@Description:")  
		call setline(6,"************************************************************************/")  
		call setline(7,"")  
	endif
	"如果文件类型为.sh文件
	if &filetype == 'shell'  
		call setline(1, "\#!/bin/sh")
		call setline(2, "\#Author: without202")
		call setline(3,"\#CreatedTime:".strftime("%c"))
		call setline(4,"\#FileName:".expand("%"))
		call setline(5,"\#Description:")
		call setline(6,"")
	endif
	"如果文件类型为.py文件
	if &filetype == 'python'
		call setline(1,"\#!/usr/bin/env python")
		call setline(2,"\#-*-coding=utf8-*-")
		call setline(3,"\"\"\"")
		call setline(4, "\# Author: without202")
		call setline(5, "\# Created Time : ".strftime("%c"))
		call setline(6, "\# File Name: ".expand("%"))
		call setline(7, "\# Description:")
		call setline(8, "\"\"\"")
		call setline(9,"")
	endif
	"如果文件类型为.java文件
	if &filetype == 'java'  
		call setline(1,"//coding=utf8")  
		call setline(2,"/**")  
		call setline(3,"\*\@Author:without202")  
		call setline(4,"\*\@CreatedTime:".strftime("%c"))  
		call setline(5,"\*\@FileName:".expand("%"))  
		call setline(6,"\*\@Description:")  
		call setline(7,"\*/")  
		call setline(8,"")  
	endif
endfunc	
																								
" 自动将光标移动到文件末尾
autocmd	BufNewfile * normal G
" "
