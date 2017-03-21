// =====================================================================
// SuperCollider Workspace
// =====================================================================

(
//sine tone generator
Ndef(\sine, {|freq=240.0|
	
	var detune = Rand(0.98, 1.02);

	var sig = SinOsc.ar(freq * detune) * 
	EnvGen.kr(Env.perc(0.02, 0.5),doneAction:2);

	sig = sig * 0.5;
}).play(0, 2); //two channels output
)