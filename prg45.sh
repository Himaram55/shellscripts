#Print number of volume group in this system
count=0 #vg count set to zero as initial value
for i in `vgs -o vgname --noheading`
do
 ((count++))
done
echo "There are $count volume groups in this system $(hostname)"
#Print the number of logical volumes
#for every volumegroup, get the count of logical volumes
t=0 #Total lvs count = 0
for i in `vgs -o vgname --noheading`
do
  lcount=0 #lcount is to count number of lvs. Set its initial value to zero
  for j in `lvs $i -o lvname --noheading`    #for every vg count logical volumes
	do
	   ((lcount++))
  done #inner for loop ends here
	echo "Found $lcount lvs in $i volume group"
	t=`expr $t + $lcount `
done #outer loop ends
echo "The number total logical volumes found are $t"
#end
