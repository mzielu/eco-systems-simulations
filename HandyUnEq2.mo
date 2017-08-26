model HandyUnEq2 extends HandyUnEquitableBase(ineqFactor = 100, depletFactorEq = 0.00000667, birthRComm = 0.03, birthRElites = 0.03);

initial equation

   elites = 0.2;
   commoners = 100.0;

equation

   depletFactor = 15 * depletFactorEq;
   nature_ = max(0, nature) * 80000 / 100;
   wealth_ = wealth * 80000 / 4000;
   elites_ = elites * 100;
   
end HandyUnEq2;
