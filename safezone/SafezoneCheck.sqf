

disableSerialization;
113 cutrsc ["Prothud","PLAIN"];




_i=uINamespace getVariable "prothud";

_1= _i displayCtrl 1100;





while {true} do{
	



_ob = (nearestObjects[getPos player,["Sign_Pointer_Yellow_F"],250]) select 0;
if(isNil "_ob")then{
	
	_msg="";
	_1 ctrlsetStructuredText parseText _msg;
	
	}else{
if(isNull _ob)then{
		
	_msg="";
	_1 ctrlsetStructuredText parseText _msg;	
	
	
	}else{
_distance = _ob getVariable "Sdistance";	
if ( player distance _ob > _distance )then {
	
		_msg="";
		_1 ctrlsetStructuredText parseText _msg;
	

	
	}else{
		
			_msg="<t shadow='2'><t size='4.5'><t align='center'><t color='#00ff00'>Safezone</t></t></t></t><br />"+"<t shadow='2'><t size='0.8'><t align='center'>Schusswaffengebrauch und jede kriminelle Handlung sind untersagt!</t></t></t>";
			_1 ctrlsetStructuredText parseText _msg;	

		
};
};
	};
	

	
	
	
	
sleep 1.5;


	};


