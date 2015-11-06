if(self.nextState != 0)
{
    if(!script_exists( self.nextState ))
    {
        self.nextState = 0;   
    }
    else
    {
        self.activateState = self.nextState;
        self.nextState = 0;
    }
}
