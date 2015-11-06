if(self.randomDeathDir == 0)
{
    self.randomDeathDir =-1;
}

self.fallDirection.X = self.randomDeathDir*4;
self.fallDirection.Y = 0;


FSM_Next(self,st_ClimberFalling);
