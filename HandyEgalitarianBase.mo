partial model HandyEgalitarianBase "Egal - Scenarios with Egalitarian Society (No-Elites)"
    extends HandyBase;
    // Scenario Egal_1: Soft Landing to Equilibrium
    // Scenario Egal_2: Oscillatory Approach to Equilibrium
    // Scenario Egal_3: Cycles of Prosperity and Collapse
    // Scenario Egal_4: Type-II (Full) Collapse
    //
  initial equation
    elites = 1; // All "Egal" scenarios: elites=1 representing 0
    commoners = 100.0;
equation
    // Graph scaling
    carryingCapMax_ = carryingCapMax;
    carryingCap_ = carryingCap;
    commoners_ = commoners;
    elites_ = elites;
    totalPopulation_ = totalPopulation;
end HandyEgalitarianBase;
