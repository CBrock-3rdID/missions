private _briefingText = "
LR = Long Range (RT-1523G), SR = Short Range (AN/PRC-152)<br /><br /><br />


Alpha Company 'War Eagles' - LR 30<br /><br />

First Platoon <font color='#ff00ff'>'Widowmakers'</font> - SR 31<br />
  Convoy Net - LR 33<br /><br />

  First Squad <font color='#e06666'>'Scorpions'</font> - SR 110<br />
    Alpha Team - SR 111<br />
    Bravo Team - SR 112<br />
    Charlie Team - SR 113<br /><br />

  Second Squad <font color='#1f5d96'>'Ghosts'</font> - SR 120<br />
    Alpha Team - SR 121<br />
    Bravo Team - SR 122<br />
    Charlie Team - SR 123<br /><br />

  Third Squad <font color='#05c900'>'Spartans'</font> - SR 130<br />
    Alpha Team - SR 131<br />
    Bravo Team - SR 132<br />
    Charlie Team - SR 133<br /><br />

  Fourth Squad <font color='#cc9207'>'Phoenix'</font> - SR 140<br />
    Alpha Team - SR 141<br />
    Bravo Team - SR 142<br />
    Charlie Team - SR 143<br /><br />

3rd Combat Aviation Brigade <font color='#006c5e'>'3CAB'</font> - LR 60<br />
  Internal communications - LR 77
";

player createDiarySubject ["radio_net", "Radio Net"];
player createDiaryRecord ["radio_net", ["Radio Net", _briefingText]];