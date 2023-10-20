// Wave(from, to, duration, offset)

// return a value that will wave back and forth between [from-to] over [duration] seconds
/*
function Wave(_from, _to, _duration, _offset)
{
argument0 = _from;
argument1 = _to;
argument2 = _duration;
argument3 = _offset;
var a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((curent_time * 0.001) + argument2 * argument3) / argument2) * (pi*2)) * a4;
}