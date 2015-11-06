if(keyboard_check(vk_space ))
{
    FSM_Next(self, st_GoatDropStone);
}
if(self.position != 0)
{
    if(keyboard_check(vk_left ))
    {
        self.moveLeft = true;
        FSM_Next(self,st_GoatJump);
        self.targetPosition = self.position - 1;
        self.jumpDistance = abs(self.x - PositionByIndex(self.targetPosition)-32);
        
    }
}
if(self.position != 4)
{
    if(keyboard_check(vk_right ))
    {
        self.moveLeft = false;
        FSM_Next(self, st_GoatJump);
        self.targetPosition = self.position + 1;
        self.jumpDistance = abs(self.x - PositionByIndex(self.targetPosition)+32);
    }
}

