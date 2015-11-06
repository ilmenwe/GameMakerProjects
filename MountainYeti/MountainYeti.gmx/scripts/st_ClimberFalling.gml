
self.fallDirectionX = self.randomDeathDir*(random(8)+1);
self.fallDirectionY += 1;
x+= self.fallDirectionX;
y+= self.fallDirectionY;
self.direction += (self.randomDeathDir * self.randomDeathSpin)/10;
