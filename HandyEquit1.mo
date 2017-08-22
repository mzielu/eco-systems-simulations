model HandyEquit1 extends HandyEquitableBase;

   initial equation
      elites = 25;
   
   equation
      depletFactor = depletFactorEq;
      nature_ = nature * 80000 / 100;
      wealth_ = wealth * 80000 / 400;
      
end HandyEquit1;
