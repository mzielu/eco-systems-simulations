model HandyEgal3 extends HandyEgalitarianBase;

equation
    depletFactor = 4 * depletFactorEq;
    nature_ = max(0, nature) * 100000 / 100;
    wealth_ = wealth * 100000 / 2000;
    
end HandyEgal3;
