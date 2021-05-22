function fapp() {
	explorer.exe .
};

function cls() {
	clear
};

function readfile() {
	cat $1
};

function dir() {
	ls -a
};

function coolcls() {
	clear
	blue="\033[1;34m"
	none="\033[1;00m"
	yellow="\033[1;33m"
	yellowb="\033[7;33m"
	green="\033[4;32m"
	purple="\033[6;35m"
	n="\033[0;00m"
	echo -e "                                                  $blue -------------------$n
	$blue                 &@                               $none  $HOSTNAME$n
	$blue               %&&&              %&&,             $blue -------------------$n
	$blue               .&&&@         &&@@&&,              $green Bash Version:$n
	$blue             &@ &@@&      &&&&&&@@#               $yellow $BASH_VERSION$n
	$blue            &&&&.&&&@   &&&&&&&&&@                $green User:$n
	$blue            @&&&@&&&&  *&&@@&@&&&                 $yellow $USER$n
	$blue          %@ .&&&&&&@&  &&&@&&&&%                 $green Color Support:$n
	$blue          &&&&,@&&&&&&@ /&&&&&&&                  $yellow $TERM$n
	$blue           @&&@&&&&@&&&/ &&&&&&&                  $green Home Directory:$n
	$blue          @(  &@&&&&&&&& .@&&&&*                  $yellow $HOME$n
	$blue          @@@&&@&&&&&&&&& @&&&&                   $green Distro:$n
	$blue            &&&&&&&&&&&&&@.&&&&                   $yellow $WSL_DISTRO_NAME $n
	$blue           &@  &&&&&&&&&&&&%&&@                   $blue-------------------$n
	$blue            &&&&&&&&&&&&&&&&&&&                   $green Alternate Directory (for host such as WINDOWS): $n
	$blue              @&&&&&&&@&&@&&&&&                   $yellow $PWD
	$blue              @@@(,.@&&&&&&&&&&.                  $green History File: $n
	$blue               &&&&&&&&&@&&&&&@@&&&&&&@           $yellow $HISTFILE $n
	$blue              @&&&&&&@&&&&&&&&&&&&&&&&&&&&&&      $green Host Architecture: $n
	$blue          @&&&&&&&@&&&&&&&&&&&&&&&&&&&&&&&& &&    $yellow $HOSTTYPE $n
	$blue      @&&&&&&&&&&&&&&&&&&&&&&&&&*         .@&&&   $green Shell DIR: $n
	$blue  @&&&&&@*&&&&&&&&@&&/  @&@&&&&&&                 $yellow $SHELL $n
	$blue       &&&@%&&&&&@@       &&&&&@&                 $green Encoding Language: $n
	$blue         .&&& &&&            &&&&& @&&&*          $yellow $LANG $n
	$blue              #@               %&&&&&& @          $green Text Editor: $n
	$blue                                &&   ,            $yellow Vim $n

	$purple ███████████ ████                 ███████████ ███            █████
	░░███░░░░░██░░███                ░░███░░░░░██░░░            ░░███
	 ░███    ░███░████████ ████ ██████░███    ░██████████████ ███████
	 ░██████████ ░██░░███ ░███ ███░░██░█████████░░██░░███░░█████░░███
	 ░███░░░░░███░███░███ ░███░███████░███░░░░░██░███░███ ░░░███ ░███
	 ░███    ░███░███░███ ░███░███░░░ ░███    ░██░███░███   ░███ ░███
	 ███████████ ████░░███████░░██████████████████████████  ░░████████
	░░░░░░░░░░░ ░░░░░ ░░░░░░░░ ░░░░░░░░░░░░░░░░░░░░░░░░░░    ░░░░░░░░ $n

	          $yellowb D    E    V    E    L    O    P    E    R $n
	"
};

function folder() {
	mkdir $1
};

function file() {
	touch $1
};

function filevim() {
	touch $1
	vim $1
};
function smile() {
	blue="\033[1;34m"
        none="\033[1;00m"
        yellow="\033[1;33m"
        yellowb="\033[7;33m"
        green="\033[4;32m"
        purple="\033[6;35m"
        n="\033[0;00m"
	echo -e $yellow  $n
}

function battery() {
	batterylevel=$(battery-level)
	battl=${batterylevel::-1}
	batti=''
	battc=''

	RESTORE='\033[0m'

RED='\033[00;31m'
GREEN='\033[00;32m'
YELLOW='\033[00;33m'
BLUE='\033[00;34m'
PURPLE='\033[00;35m'
CYAN='\033[00;36m'
LIGHTGRAY='\033[00;37m'

LRED='\033[01;31m'
LGREEN='\033[01;32m'
LYELLOW='\033[01;33m'
LBLUE='\033[01;34m'
LPURPLE='\033[01;35m'
LCYAN='\033[01;36m'
WHITE='\033[01;37m'

if [ $battl -gt 0 ]
then
batti=''
battc=$RED
fi

if [ $battl -gt 9 ]
then
batti=''
battc=$RED
fi

if [ $battl -gt 19 ]
then
batti=''
battc=$YELLOW
fi

if [ $battl -gt 29 ]
then
batti=''
battc=$YELLOW
fi

if [ $battl -gt 39 ]
then
batti=''
battc=$GREEN
fi

if [ $battl -gt 49 ]
then
batti=''
battc=$GREEN
fi

if [ $battl -gt 59 ]
then
batti=''
battc=$GREEN
fi

if [ $battl -gt 69 ]
then
batti=''
battc=$GREEN
fi

if [ $battl -gt 79 ]
then
batti=''
battc=$GREEN
fi

if [ $battl -gt 89 ]
then
batti=''
battc=$GREEN
fi

if [ $battl == 100 ]
then
batti=''
battc=$GREEN
fi

	echo -e Battery: $battc $batterylevel $batti $RESTORE
}


function cchelp() {
        printf 'Custom Commands Help\n'
        printf 'fapp - opens windows explorer in current directory.\n'
        printf 'cls - clears screen.\n'
        printf 'readfile <file> - displays contents of file argument.\n'
        printf 'dir - prints all items in current folder/directory.\n'
        printf 'coolcls - clears screen and reprints bluebird splash.\n'
        printf 'folder <name> - makes a folder in the current directory named the name argument.\n'
        printf 'file <name> - creates file in current directory named the name argument.\n'
        printf 'filevim <name> - creates file in current directory named the name argument then opens it in vim.\n'
	printf 'smile - prints a smile!\n'
	printf 'batt/battery - displays battery level and icon.'
        printf 'cchelp - lists all custom bash commands.\n'
};
