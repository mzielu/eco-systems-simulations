model HandyEquit2 extends HandyEquitableBase;

initial equation

    elites = 25;
    
equation

    depletFactor = 2.64 * depletFactorEq;

    nature_ = nature * 80000 / 100;
    wealth_ = wealth * 80000 / 2000;
    
end HandyEquit2;
