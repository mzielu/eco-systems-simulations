partial model HandyEgalitarianBase "Egal - Scenarios with Egalitarian Society (No-Elites)"
    extends HandyBase;

initial equation

    elites = 1; // All "Egal" scenarios: elites = 1 representing 0
    commoners = 100.0;
    
equation

    carryingCapMax_ = carryingCapMax;
    carryingCap_ = carryingCap;
    commoners_ = commoners;
    elites_ = elites;
    totalPopulation_ = totalPopulation;
    
end HandyEgalitarianBase;
