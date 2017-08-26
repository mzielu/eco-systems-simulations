model HandyEgal1 extends HandyEgalitarianBase;
//Scenario Egal_1: Soft Landing to Equilibrium
equation

    depletFactor = depletFactorEq * 0.8;
    nature_ = nature * 80000 / 100;
    wealth_ = wealth * 80000 / 400;
   
end HandyEgal1;
