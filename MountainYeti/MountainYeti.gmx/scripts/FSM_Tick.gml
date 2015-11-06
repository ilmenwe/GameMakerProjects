

var owner = argument0;

if(owner.FSM_Initialized)
{
    if(owner.nextState)
    {
        if(script_exists(owner.nextState))
        {
            owner.activeState = owner.nextState;
            FSM_EnterState(owner);
        }
    }
    if(script_exists(owner.activeState))
    {
        owner.stateTicks +=1;
        script_execute(owner.activeState,owner);
       
    }
}
