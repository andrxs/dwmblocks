#define PATH(name)	"~/.bin/statusbar/blocks/"name

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/		
	{"", PATH("resources.sh"),	30,		0},
	{"", PATH("battery.sh"),		5,		0},
	{"", PATH("time.sh"),			5,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = ' ';
