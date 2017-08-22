model HandyUnEq3 extends HandyUnEquitableBase(ineqFactor = 10, depletFactorEq = 0.00000635, birthRComm = 0.065, birthRElites = 0.02);

initial equation
  elites = 3000.0;
  commoners = 10000.0;
  
equation
  depletFactor = depletFactorEq;
  nature_ = nature * 600000 / 100;
  wealth_ = wealth * 600000 / 400;
  elites_ = elites * 10;
  commoners_ = commoners;
  
end HandyUnEq3;

// NIESTTY ALE TEN MODEL NIE DZIALA
