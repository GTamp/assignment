function countdir {

	local dircount=0

	dircount=$(ls -l | egrep "^d" | wc -l)

	echo "$dircount"

}
