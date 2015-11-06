self.y-=self.climbSpeed;
var dead = false;


if(self.y < 32*4)
{
    audio_play_sound(snd_Woo,5,false);
   instance_destroy();
   score -=1;

};

colobject = collision_point(self.x,self.y,obj_StoneFalling,1,1)
if (colobject) 
{
  colobject.myHealth -=1;
  FSM_Next(self,st_ClimberFalling);
  audio_play_sound(snd_Die,5,false);
   score +=1;
}
depth = 1000-y;
