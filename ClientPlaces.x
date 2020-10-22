struct places{
	char code[4];
	char name[64];
	char state[3];
	double dist;
	double lat;
	double lon;
	places* next;
};

struct city{
	char state[3];
	char city[64];
};

union returnTypeC switch (int err){
	case 0:
		places* resultC;
	default:
		void;
};

program ClientPlaces{
	version CLIENT_VERS {
		returnTypeC CToP(city*) = 1;
	} = 1;
} = 0x43211234;
