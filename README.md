Mac-Scripts
==========

一些有用的mac下的shell脚本工具

###icns util  
将png格式图片转换成mac图标格式icns   

	icnsutil xxx.png

###retinafy: 批量制作retina资源
  
ios和web中常需要两种分辨率的图片，此工具可以批量转换  
传入大图，自动缩放一倍，大图（原图）加上后缀@2x  
如： 
 
	retinafy menu.png 
	
menu.png 为 64 x 64像素  
处理后，生成：  
menu.png    (32 x 32)  
menu@2x.png (64 x 64)  

###resize 批量修改图片尺寸

	resize width height file1 file2...   

width height 为缩放后的像素高宽  
后面的参数为所有要处理的图片的路径  

