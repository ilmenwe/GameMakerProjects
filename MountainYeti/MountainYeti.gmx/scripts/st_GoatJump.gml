var distancePerFrame = jumpDistance / 10;



if(self.moveLeft)
{
    self.x = self.x-distancePerFrame;
}
else
{
    self.x = self.x+distancePerFrame;
}
self.direction = ( radtodeg((self.stateTicks/10) * pi));
self.y = (-sin((self.stateTicks/10) * pi)*30) + 32*4;

if(self.stateTicks >= 10)
{
    self.position=self.targetPosition;
    FSM_Next(self,st_GoatIdle);
}
