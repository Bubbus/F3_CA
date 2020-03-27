params ["_unitName", "_displayName"];

_sqfDoesntHaveClosures = '(_this + ["%1", "%2"]) call ca_fnc_addGroupMemberMarkers;';
_closeEnough = format [_sqfDoesntHaveClosures, _unitName, _displayName];

_output = compile _closeEnough;

_output