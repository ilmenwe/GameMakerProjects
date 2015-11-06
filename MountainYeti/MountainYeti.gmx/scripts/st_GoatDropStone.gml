if(self.stateTicks < 5)
{
    if(self.moveLeft)
    {
        self.animOffsetX = (sin((self.stateTicks/5) * pi*0.5)*10);
    }
    else
    {
        self.animOffsetX = -(sin((self.stateTicks/5) * pi*0.5)*10);
    }
}
else if(self.stateTicks < 7)
{
    if(self.moveLeft)
    {
        self.animOffsetX = (sin((self.stateTicks/7) * pi*0.5)*10);
    }
    else
    {
        self.animOffsetX = -(sin((self.stateTicks/5) * pi*0.5)*10);
    }
}
else
{

    self.animOffsetX = 0;
    instance_create(PositionByIndex(self.targetPosition),self.y-16,obj_StoneFalling);
    FSM_Next(self,st_GoatIdle);
}
