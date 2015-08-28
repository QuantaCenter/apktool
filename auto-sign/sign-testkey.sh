# resign the apk decompiled by apktool


root=$(dirname ${0});
echo $root;

if [ ! $1 ]; then
	echo 'you have to input the path of source apk';
fi

if [ ! $2 ]; then
	echo 'you have to input the path of dest apk';
fi

java -jar ${root}/signapk.jar ${root}/testkey.x509.pem ${root}/testkey.pk8 $1 $2 


