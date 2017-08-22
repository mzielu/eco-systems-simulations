model HandyEgal1 extends HandyEgalitarianBase;

equation
   depletFactor = depletFactorEq * 0.8;
   nature_ = nature * 80000 / 100;
   wealth_ = wealth * 80000 / 400;
   
end HandyEgal1;
