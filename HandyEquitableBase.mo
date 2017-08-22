partial model HandyEquitableBase extends HandyBase(ineqFactor = 1, depletFactorEq = 8.33e-006);
  
  initial equation
    commoners = 100.0;
    
  equation
    carryingCap_ = carryingCap;
    carryingCapMax_ = carryingCapMax;
    commoners_ = commoners;
    elites_ = elites;
  totalPopulation_ = totalPopulation;
  
end HandyEquitableBase;  
