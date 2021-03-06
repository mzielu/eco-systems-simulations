partial model HandyUnEquitableBase "Unequal Society (with Elite and Commoners)"
  extends HandyBase(ineqFactor = 100, depletFactorEq = 0.00000667, birthRComm = 0.03, birthRElites = 0.03);

equation

    carryingCap_ = carryingCap;
    carryingCapMax_ = carryingCapMax;
    commoners_ = commoners;
    totalPopulation_ = totalPopulation;
    
end HandyUnEquitableBase;
