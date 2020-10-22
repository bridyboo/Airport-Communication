struct airports{
	char code[4];
	char name[64];
	char state[3];
	double lat;
	double lon;
	double dist;
	airports* next; 
};

struct LatLon{
	double lat;
	double lon;
};

union returnTypeA switch (int err){
	case 0:
		airports* resultA;
	default:
		void;
};


program PLACES_AIRPORT {
	version PLACES_VERS {
		returnTypeA PToA(LatLon*) = 1;  
	} = 1;
} = 0x12344321;
