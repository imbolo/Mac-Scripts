if [ -z $1 ];then
	echo "how to: icnsutil xxx.png";
	
else
	echo $1;
	mkdir "icon.iconset";
	
	sizeName=(512x512@2x 512x512 256x256@2x 256x256 128x128@2x 128x128 32x32@2x 32x32 16x16@2x 16x16)
	
	len=${#sizeName[*]}
	
	i=0
	while [ $i -lt $len ]
	do
		cp $1 "icon.iconset/icon_${sizeName[$i]}.png";
		
		sips -Z 1024 icon.iconset/icon_${sizeName[$i]}.png;
		
		let i++;
	done
	
	iconutil --convert icns icon.iconset
	
	rm -rf "icon.iconset";
	
fi