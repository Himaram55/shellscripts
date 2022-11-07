#Demonstration case conditional statemetn
#!/bin/bash
read -p "Enter the OS name (Ex: solaris, aix, linux, unix, windows, MacOS):" os

case $os in
     solaris)
		    echo "The Os entered is  Solaris"
			  ;;	
     aix)	
				echo "The Operating System is  AIX"
				;;
     linux)
		 	  echo "The OS entered is linux"
				;;
		 unix)
		    echo "The OS entered is unix"
				;;
     windows)
				echo "The OS entered is windows"
				;;
     MacOS)
				echo "The Os entered is MacOS"
				;;
     *)
	      echo "You entered other than solaris, aix, linux, unix, windows, MacOS.."
				;;
esac #Case End
#End of the program
