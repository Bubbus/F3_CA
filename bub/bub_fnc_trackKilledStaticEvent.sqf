params ["_unit"];

if (!isServer) exitWith
{
	diag_log "[TrackKills] Moving exec to server.";
	[_unit] remoteExecCall ["bub_fnc_trackKilledEvent", 2];
};

_killTracking = profileNamespace getVariable ["bub_killTracking", []];

_type = typeOf _unit;
_position = getPos _unit;

_killReport = ["KilledStatic", _type, _position];

_killTracking pushBack _killReport;

diag_log format ["[TrackKills] Adding to log: %1", _killReport];
profileNamespace setVariable ["bub_killTracking", _killTracking];